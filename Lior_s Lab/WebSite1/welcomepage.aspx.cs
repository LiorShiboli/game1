﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class welcomepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql10 = "SELECT Hscore FROM  ourData WHERE userName = '" + Session["user"] + "'";
        
    }
}