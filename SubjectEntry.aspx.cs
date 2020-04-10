using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class SubjectEntry : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
    //General clsGeneral = new General();
    SqlDataAdapter adp, adp1;
    SqlCommand cmd, cmd1, cmd2;
    DataSet ds, ds1;
    string query, query1, query2;
    string url = "";
    int ires; string sres;

    private void WriteLog(string strError)
    {
        try
        {
            string AppPath = AppDomain.CurrentDomain.BaseDirectory;
            string strLog = @"LOG1\";
            string strFilePath = AppPath + strLog;

            if (!(Directory.Exists(strFilePath)))
            {
                Directory.CreateDirectory(strFilePath);
            }
            string fn = string.Format("{0}{1}.txt", strFilePath, DateTime.Now.ToString("ddMMyyyy"));
            FileStream fs = new FileStream(fn, FileMode.Append, FileAccess.Write, FileShare.ReadWrite);
            StreamWriter writer = new StreamWriter(fs);
            writer.WriteLine(string.Format("[ {0} ] {1}", DateTime.Now.ToString("HH:mm:ss"), strError));
            writer.Close();
            fs.Close();
        }
        finally
        {
            //nothing
        }


    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session.Count == 0)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                btnCatSave.Text = "Save";

                lblvid.Visible = true;
                lblvid.Text = "";
                BindSubjects();
            }
        }
    }
    public void BindSubjects()
    {
        try
        {
            adp = new SqlDataAdapter("select sid,sname  from Subjects order by sname", con);
            ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                grdMain.DataSource = ds;
                grdMain.DataBind();
            }
        }
        catch (Exception ex)
        {
            WriteLog(ex.Message);
        }
    }
    protected void btnCatSave_Click(object sender, EventArgs e)
    {
        try
        {

            if (btnCatSave.Text == "Save")
            {

                if (txtSub.Text != "")
                {

                    query = "select sname from Subjects where sname = '" + txtSub.Text + "'";
                    cmd = new SqlCommand(query, con);
                    con.Open();
                    var getValue = cmd.ExecuteScalar();
                    if (getValue == null)
                    {
                        query2 = "Insert into Subjects(sname, Created_by, Created_dt) values ('" + txtSub.Text + "', '" + Session["uid"].ToString() + "', getdate() )";
                        cmd2 = new SqlCommand(query2, con);
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        txtSub.Text = "";
                        BindSubjects();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Subject added succesfully')", true);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Subject alredy Existed')", true);
                    }


                }
            }
            if (btnCatSave.Text == "Update")
            {
                if (txtSub.Text != "")
                {

                    con.Open();

                    query2 = "update Subjects set  sname ='" + txtSub.Text + "'   where sid= '" + Convert.ToInt32(lblvid.Text) + "' ";
                    cmd2 = new SqlCommand(query2, con);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    txtSub.Text = "";
                    lblvid.Text = "";

                    btnCatSave.Text = "Save";

                    BindSubjects();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Subject Updated added succesfully')", true);

                }
            }


        }
        catch (Exception ex)
        {
            WriteLog(ex.Message);
        }
    }

    protected void btnCatClear_Click(object sender, EventArgs e)
    {
        txtSub.Text = "";

        btnCatSave.Text = "Save";
    }
    protected void grdMain_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Del")
            {
                int ID = Convert.ToInt32(e.CommandArgument);
                cmd = new SqlCommand("delete from Subjects where sid='" + ID + "'", con);
                cmd.CommandType = CommandType.Text;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                BindSubjects();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Subject item deleted')", true);
            }
        }
        catch (Exception ex)
        {
            WriteLog(ex.Message);
        }

    }
    protected void grdMain_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        try
        {
            adp = new SqlDataAdapter("select sid, sname from Subjects where sid= '" + grdMain.Rows[e.NewSelectedIndex].Cells[1].Text + "'", con);
            ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtSub.Text = ds.Tables[0].Rows[0]["sname"].ToString();
                lblvid.Visible = false;
                lblvid.Text = grdMain.Rows[e.NewSelectedIndex].Cells[1].Text.ToString();

                btnCatSave.Text = "Update";
            }
        }
        catch (Exception ex)
        {
            WriteLog(ex.Message);
        }
    }

}