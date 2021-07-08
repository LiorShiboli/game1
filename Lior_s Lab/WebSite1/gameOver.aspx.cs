using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gameOver : System.Web.UI.Page
{
    public int Cscore = 0;
    public int Hscore = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        string uName = Session["user"].ToString();
    }
}