<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style4
        {
            width: 101%;
        }
    </style>
    </head>
<body>
   <div class="loginbox">
   <form runat="server">
   <table class="style4">
       <tr>
           <td>
   <asp:Label Text="Username" CssClass="lbluser" runat="server" />
           </td>
           <td>
           <asp:TextBox runat="server" CssClass="txtuser" placeholder="Enter Username" 
       ID="TextBox1" BorderColor="Transparent" BackColor="Transparent" ForeColor="White" />
               &nbsp;</td>
           <td>
            <asp:Label ID="Label1" Text="Password" CssClass="lblpass" runat="server" />
               &nbsp;</td>
           <td><asp:TextBox runat="server" CssClass="txtpass" placeholder="**********" 
       ID="TextBox2" TextMode="Password" BorderColor="Transparent" 
       BackColor="Transparent" ForeColor="White"/>
               &nbsp;</td>
               <td> <asp:Button ID="Button1" Text="LOGIN" CssClass="btnsubmit" runat="server" 
       onclick="Unnamed5_Click" />  &nbsp;</td>
       </tr>
   </table>   
   </form>
      </div>
</body>
</html>
