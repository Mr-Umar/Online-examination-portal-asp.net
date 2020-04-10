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
public partial class UserHome : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["USERNAME"] !=null)
        {
            lblSuccess.Text = "login Success, Welcome "+Session["USERNAME"].ToString()+"";
            tbSname.Text = Session["USERNAME"].ToString() + "";
            //tbfemail.Text = Session["EMAIL"].ToString() + "";

            tbSname.ForeColor = Color.Green;
            
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }

    public string GetConnectionString()
    {
        //sets the connection string from your web config file "ConnString" is the name of your Connection String
        return System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    }
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
        //Response.Redirect("~/Signin.aspx");

    }

    private DateTime convertDatePakistan(string datetoconvert)
    {
        DateTime dtParam;
        System.Globalization.CultureInfo enGB = new System.Globalization.CultureInfo("en-GB");

        try
        {
            dtParam = Convert.ToDateTime(datetoconvert.ToString(), enGB);
            return dtParam;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {

        }

    }

    private void ExecuteInsert(string studentname, string fathername, string dateofbirth, string gender, string contactno,string email ,string address,string zipcode,string userexamselection)
    {
        SqlConnection conn = new SqlConnection(GetConnectionString());
        string sql = "INSERT INTO UExamForm (Student_Name, Father_Name, Date_OF_Birth, Gender, Contact_No,Email_ID ,Address,ZIP_Code, User_Exam_Selection) VALUES "
                    + " (@Student_Name,@Father_Name,@Date_OF_Birth,@Gender,@Contact_No,@Email_ID,@Address,@ZIP_Code,@User_Exam_Selection)";

        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlParameter[] param = new SqlParameter[9];
            //param[0] = new SqlParameter("@id", SqlDbType.Int, 20);
            param[0] = new SqlParameter("@Student_Name", SqlDbType.NVarChar);
            param[1] = new SqlParameter("@Father_Name", SqlDbType.NVarChar);
            param[2] = new SqlParameter("@Date_OF_Birth", SqlDbType.Int);
            param[3] = new SqlParameter("@Gender", SqlDbType.NVarChar);
            param[4] = new SqlParameter("@Contact_No", SqlDbType.Int, 100);
            param[5] = new SqlParameter("@Email_ID", SqlDbType.NVarChar);
            param[6] = new SqlParameter("@Address", SqlDbType.NVarChar);
            param[7] = new SqlParameter("@ZIP_Code", SqlDbType.Int,100);
            param[8] = new SqlParameter("@User_Exam_Selection", SqlDbType.NVarChar);
            
           
            param[0].Value = studentname;
            param[1].Value = fathername;
            //param[2].Value = convertDatePakistan(tbDoB.Text); 
            param[2].Value = dateofbirth;
            param[3].Value = gender;
            param[4].Value = contactno;
            param[5].Value = email;
            param[6].Value = address;
            param[7].Value = zipcode;
            param[8].Value = userexamselection;

            for (int i = 0; i < param.Length; i++)
            {
                cmd.Parameters.Add(param[i]);
            }

            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All field are Mandatory";
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
            lblMsg.Text = "Exam Registeration Confirmed";
            lblMsg.ForeColor = Color.Green;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if(dropdn.SelectedItem.Text !="")
        {
            //call the method to execute insert to the database
            ExecuteInsert(tbSname.Text,
                          tbfname.Text,
                          tbDoB.Text,
                          DropDownList1.SelectedItem.Text,
                          tbcontact.Text,
                          tbEmail.Text,
                          tbaddr.Text,
                          tbzip.Text,
                          dropdn.SelectedItem.Text);
            
            Response.Write("Record was successfully added!");
            ClearControls(Page);
            Response.Redirect("~/Exam_IntroPage.aspx");
        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All field are Mandatory";
        }

        //if (tbSname.Text != "" && tbfname.Text != "" && rbgender.Text != "" && tbcontact.Text != "" && tbEmail.Text != "" && tbaddr.Text != "" && tbzip.Text != "" )
        //{
        //    string CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(CS))
        //    {
        //        SqlCommand cmd = new SqlCommand("insert into UExamForm values('" + tbSname.Text + "','" + tbfname.Text + "','" + rbgender.Text + "','" + tbcontact.Text + "','" + tbEmail.Text + "','" + tbaddr.Text + "','" + tbzip.Text + "')", con);
        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //        //con.Close();
        //        lblMsg.Text = "Exam Registeration Confirmed";
        //        lblMsg.ForeColor = Color.Green;
        //        Response.Redirect("~/Exam_IntroPage.aspx");
        //        //SqlCommand cmd1 = new SqlCommand("select * from Users where Email='" + tbfemail.Text + "'", con);
        //        //cmd1.ExecuteNonQuery();
        //        //Session["EMAIL"] = tbfemail.Text;
        //        //lblSelectedText.Text = ddlGender.SelectedItem.Text;
        //    }
        //}


        //else
        //{
        //    lblMsg.ForeColor = Color.Red;
        //    lblMsg.Text = "All field are Mandatory";
        //}
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

}