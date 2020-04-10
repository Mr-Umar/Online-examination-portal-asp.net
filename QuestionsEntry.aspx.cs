using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;


public partial class QuestionsEntry : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    #region Clearing of controls
    /// <summary>
    /// This method is used for All Controls
    /// </summary>
    ///
    protected void clear()
    {
        lblresult.Text = "";
        Resetfromcontrol(this);
        dropSub.SelectedIndex = 0;

        BtnBatchsave.Text = "submit";
    }
    public void Resetfromcontrol(Control parent)
    {
        foreach (Control c in parent.Controls)
        {
            if (c.Controls.Count > 0)
            {
                Resetfromcontrol(c);
            }
            else
            {
                switch (c.GetType().ToString())
                {
                    case "System.Web.UI.WebControls.TextBox":
                        ((TextBox)c).Text = "";
                        break;
                }
            }
        }
    }
    #endregion
    public string GetConnectionString()
    {
        //sets the connection string from your web config file "ConnString" is the name of your Connection String
        return System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    }

    private void ExecuteInsert(string selectsub, string ques, string opt1, string opt2, string opt3, string opt4, string ans)
    {
        SqlConnection conn = new SqlConnection(GetConnectionString());
        string sql = "INSERT INTO QuestionsEntryTbl (Subject_Selection, Question, Option1, Option2, Option3, Option4,Currect_Answer) VALUES "
                    + " (@Subject_Selection,@Question,@Option1,@Option2,@Option3,@Option4,@Currect_Answer)";

        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlParameter[] param = new SqlParameter[7];
            //param[0] = new SqlParameter("@id", SqlDbType.Int, 20);
            param[0] = new SqlParameter("@Subject_Selection", SqlDbType.NVarChar);
            param[1] = new SqlParameter("@Question", SqlDbType.NVarChar);
            param[2] = new SqlParameter("@Option1", SqlDbType.NVarChar);
            param[3] = new SqlParameter("@Option2", SqlDbType.NVarChar);
            param[4] = new SqlParameter("@Option3", SqlDbType.NVarChar);
            param[5] = new SqlParameter("@Option4", SqlDbType.NVarChar);
            param[6] = new SqlParameter("@Currect_Answer", SqlDbType.NVarChar);

            param[0].Value = selectsub;
            param[1].Value = ques;
            param[2].Value = opt1;
            param[3].Value = opt2;
            param[4].Value = opt3;
            param[5].Value = opt4;
            param[6].Value = ans;

            for (int i = 0; i < param.Length; i++)
            {
                cmd.Parameters.Add(param[i]);
            }

            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            conn.Close();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        lblDisplay.Visible = true;
        //pnlEditor.Visible = false;
        lblDisplay.Text = tbQuestion.Text;
        btnSave.Visible = false;
        btnCancel.Visible = true;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {

        lblDisplay.Visible = false;
        //pnlEditor.Visible = true;
        lblDisplay.Text = "";
        tbQuestion.Text = "";
        btnSave.Visible = true;
        btnCancel.Visible = false;
    }

    protected void BtnBatchsave_Click(object sender, EventArgs e)
    {
        if (rbtAns.SelectedItem.Text != "")
        {
            //call the method to execute insert to the database
            ExecuteInsert(dropSub.SelectedItem.Text,
                          tbQuestion.Text,
                          tbOption1.Text,
                          tbOption2.Text,
                          tbOption3.Text,
                          tbOption4.Text,
                          rbtAns.SelectedItem.Text);
            Response.Write("Record was successfully added!");
            ClearControls(Page);
        }
        else
        {
            //Response.Write("Password did not match");
            //TxtPassword.Focus();
        }
    }

    public static void ClearControls(Control Parent)
    {

        if (Parent is TextBox)
        { (Parent as TextBox).Text = string.Empty; }
        else
        {
            foreach (Control c in Parent.Controls)
                ClearControls(c);
        }
    }
    protected void BtnbatchClear_Click(object sender, EventArgs e)
    {
        clear();

        BtnBatchsave.Text = "Submit";
        //dropSub.SelectedItem.Text = "";
        //tbQuestion.Text = "";
        //tbOption1.Text = "";
        //tbOption2.Text = "";
        //tbOption3.Text = "";
        //tbOption4.Text = "";
        //rbtAns.SelectedItem.Text = "";
    }
}