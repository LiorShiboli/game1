using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register2 : System.Web.UI.Page
{
    public string userExists = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string Name = Request.Form["fName"];
            string lName = Request.Form["lName"];
            string uName = Request.Form["uName"];
            string Email = Request.Form["email"];
            string Password = Request.Form["psw"];
            bool isAdmin = false;
            int Cscore = 0;
            int Hscore = 0;

            string sql2 = "SELECT * FROM ourData WHERE userName = '" + uName + "'";
            if(!MyAdoHelper.IsExist("ourDataBase.mdb", sql2))
            {
            string sql = "INSERT INTO ourData(firstName,lastName,userName,Email,pass,isAdmin,score) VALUES('"+Name+"' ,'"+lName+"', '"+uName+"', '"+Email+"', '"+Password+"', false,0,0)";
            MyAdoHelper.DoQuery("ourDataBase.mdb", sql);
            }
            else {
            userExists = "a user with this user name already exists";
            }
        }
    }
}