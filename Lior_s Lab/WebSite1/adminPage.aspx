<% Page Language="C#" AutoEventWireup="true" CodeFile="adminPage.aspx.cs" Inherits="adminPage" %>

    <html>

    <head>
        <title></title>
    </head>

    <body>

        <style>
            table,
            th,
            tr,
            td {
                border: 2px solid black;
                border-collapse: collapse;
            }
        </style>

        <%=table %>
            <form name="deleteuser" method="post" action=""><br />
                <input type="text" name="ulrich" id="ulrich" />מי למחוק?
                <input type="submit" name="subdel" value="מחק" />
            </form>
            <form name="updateuser" method="post" action=""><br />
                <input type="text" name="updateron" id="updateron" />מי לעדכן?
                <input type="submit" name="submitotron" value="עדכן" />
            </form>
            <%=updaterow %>
    </body>

    </html>