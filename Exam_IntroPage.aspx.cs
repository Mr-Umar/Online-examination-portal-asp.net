using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exam_IntroPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
        //Response.Redirect("~/Signin.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Exam.aspx");
    }
}