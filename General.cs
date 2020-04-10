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
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

/// <summary>
/// Summary description for General
/// </summary>
// partial added by vijay - 24-08-2013
public class General
{
    DB.DB helpus = new DB.DB();
    DataSet dsHelp = new DataSet();
    DataSet dSetID;
    DataView dv; DataRow dtrow;
    comFunctions fss = new comFunctions();
    DataSet dSet; DataTable dt;
    SqlDataAdapter adp, adp1;
    DataSet ds, ds1;
    StringBuilder objstr;
    string title, path, desc, name, vurl;

    int i = 0;
    public class MenuParant
    {
        public int Id { get; set; }
        public string MenuName { get; set; }
        public string Url { get; set; }
    }
    public class MenuChild
    {
        public int Id { get; set; }
        public int PairantId { get; set; }
        public string ChildName { get; set; }
        public string ChildUrl { get; set; }
    }
    public class MenuChildChild
    {
        public int PairantChildId { get; set; }
        public string ChildName { get; set; }
        public string ChildUrl { get; set; }
    }

    public DataSet ValidateLogin(string UserID, String Password)
    {
        DataSet ds = new DataSet();
        helpus.OpenConnection();
        SqlDataAdapter da;
        try
        {
            da = new SqlDataAdapter("sp_ValidUser", helpus.GetConnection);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (UserID.ToString() == "")
            {
                da.SelectCommand.Parameters.Add("@userid", SqlDbType.VarChar).Value = DBNull.Value;
            }
            else
            {
                da.SelectCommand.Parameters.Add("@userid", SqlDbType.VarChar).Value = UserID.ToString();
            }
            if (Password.ToString() == "")
            {
                da.SelectCommand.Parameters.Add("@password", SqlDbType.VarChar).Value = DBNull.Value;
            }
            else
            {
                da.SelectCommand.Parameters.Add("@password", SqlDbType.VarChar).Value = Password.ToString();
            }

            da.Fill(ds);
            return ds;

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            helpus.CloseConnection();
        }

    }




    public int insertQuestion(string sub, string Question, string option1, string option2, string option3, string option4, string cans, string Created_by)
    {
        SqlCommand Com = new SqlCommand();

        Com.CommandType = CommandType.StoredProcedure;

        Com.CommandText = "InsertQuestion";
        if (sub.Trim() == "" || sub.Trim() == null)
            Com.Parameters.Add("@sub", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@sub", SqlDbType.VarChar).Value = sub;

        if (Question.Trim() == "" || Question.Trim() == null)
            Com.Parameters.Add("@Question", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@Question", SqlDbType.VarChar).Value = Question;

        if (option1.Trim() == "" || option1.Trim() == null)
            Com.Parameters.Add("@option1", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@option1", SqlDbType.VarChar).Value = option1;

        if (option2.Trim() == "" || option2.Trim() == null)
            Com.Parameters.Add("@option2", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@option2", SqlDbType.VarChar).Value = option2;

        if (option3.Trim() == "" || option3.Trim() == null)
            Com.Parameters.Add("@option3", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@option3", SqlDbType.VarChar).Value = option3;
        if (option4.Trim() == "" || option4.Trim() == null)
            Com.Parameters.Add("@option4", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@option4", SqlDbType.VarChar).Value = option4;
        if (cans.Trim() == "" || cans.Trim() == null)
            Com.Parameters.Add("@cans", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@cans", SqlDbType.VarChar).Value = cans;
        if (Created_by.Trim() == "" || Created_by.Trim() == null)
            Com.Parameters.Add("@Created_by", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@Created_by", SqlDbType.VarChar).Value = Created_by.Trim();


        helpus.OpenConnection();
        Com.Connection = helpus.GetConnection;

        try
        {
            return Com.ExecuteNonQuery();
            //return Convert.ToInt32(Com.ExecuteScalar());
        }
        catch (Exception ex)
        {
            throw ex;
            return 0;
        }
        finally
        {
            Com.Dispose();
            helpus.CloseConnection();
        }
    }







    public int UpdateQuestion(string Lid, string sub, string Question, string option1, string option2, string option3, string option4, string cans, string Created_by)
    {
        SqlCommand Com = new SqlCommand();////E_Mail, ENTRY_MODE, STATUS, chalana_number, chalana_date, Paymode, PayNumber, Bank, Amount, Close_Dt, USER_ID

        Com.CommandType = CommandType.StoredProcedure;

        Com.CommandText = "UpdateQuestion";

        if (Lid.Trim() == "" || Lid.Trim() == null)
            Com.Parameters.Add("@Lid", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@Lid", SqlDbType.VarChar).Value = Lid;

        if (sub.Trim() == "" || sub.Trim() == null)
            Com.Parameters.Add("@sub", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@sub", SqlDbType.VarChar).Value = sub;

        if (Question.Trim() == "" || Question.Trim() == null)
            Com.Parameters.Add("@Question", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@Question", SqlDbType.VarChar).Value = Question;

        if (option1.Trim() == "" || option1.Trim() == null)
            Com.Parameters.Add("@option1", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@option1", SqlDbType.VarChar).Value = option1;

        if (option2.Trim() == "" || option2.Trim() == null)
            Com.Parameters.Add("@option2", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@option2", SqlDbType.VarChar).Value = option2;

        if (option3.Trim() == "" || option3.Trim() == null)
            Com.Parameters.Add("@option3", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@option3", SqlDbType.VarChar).Value = option3;
        if (option4.Trim() == "" || option4.Trim() == null)
            Com.Parameters.Add("@option4", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@option4", SqlDbType.VarChar).Value = option4;
        if (cans.Trim() == "" || cans.Trim() == null)
            Com.Parameters.Add("@cans", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@cans", SqlDbType.VarChar).Value = cans;
        if (Created_by.Trim() == "" || Created_by.Trim() == null)
            Com.Parameters.Add("@Created_by", SqlDbType.VarChar).Value = DBNull.Value;
        else
            Com.Parameters.Add("@Created_by", SqlDbType.VarChar).Value = Created_by.Trim();


        helpus.OpenConnection();
        Com.Connection = helpus.GetConnection;

        try
        {
            return Com.ExecuteNonQuery();
            //return Convert.ToInt32(Com.ExecuteScalar());
        }
        catch (Exception ex)
        {
            throw ex;
            return 0;
        }
        finally
        {
            Com.Dispose();
            helpus.CloseConnection();
        }
    }





    public DataSet UserPasswordVerify(string Username)
    {
        helpus.OpenConnection();
        try
        {
            SqlCommand Com = new SqlCommand();
            Com = new SqlCommand("Get_UserPasswordVerify", helpus.GetConnection);
            Com.CommandType = CommandType.StoredProcedure;
            Com.Parameters.AddWithValue("@UserName", Username);
            SqlDataAdapter da = new SqlDataAdapter(Com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            helpus.CloseConnection();
        }



    }
    public DataSet UserPasswordVerify1(string Username)
    {
        helpus.OpenConnection();
        try
        {
            SqlCommand Com = new SqlCommand();
            Com = new SqlCommand("Get_UserPasswordVerify1", helpus.GetConnection);
            Com.CommandType = CommandType.StoredProcedure;
            Com.Parameters.AddWithValue("@UserName", Username);
            SqlDataAdapter da = new SqlDataAdapter(Com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            helpus.CloseConnection();
        }



    }

    public void ModifyUserLoginInfo(string Email, string PassWord)
    {
        helpus.OpenConnection();
        try
        {
            SqlCommand Com = new SqlCommand();
            Com = new SqlCommand("Update_UserLoginInfo", helpus.GetConnection);
            Com.CommandType = CommandType.StoredProcedure;
            Com.Parameters.AddWithValue("@UserName", Email);
            Com.Parameters.AddWithValue("@Password", PassWord);
            Com.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            helpus.CloseConnection();
        }
    }
    public void ModifyUserLoginInfo1(string Email, string PassWord)
    {
        helpus.OpenConnection();
        try
        {
            SqlCommand Com = new SqlCommand();
            Com = new SqlCommand("Update_UserLoginInfo1", helpus.GetConnection);
            Com.CommandType = CommandType.StoredProcedure;
            Com.Parameters.AddWithValue("@UserName", Email);
            Com.Parameters.AddWithValue("@Password", PassWord);
            Com.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            helpus.CloseConnection();
        }
    }

}