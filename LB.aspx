<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" Codefile="LB.aspx.cs" Inherits="WebApplication4.LB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
  <br /><br/>  <br /><br/><br /><br/>
    <link href="LBS.css" rel="stylesheet" type="text/css" />
<a style="font-family: 'times New Roman', Times, serif; font-size: x-large; font-weight: bold; text-transform: capitalize; color: #000000; text-align:center; position: absolute; right: 48%; ">Leader Board</a><br />    <br /><br/>   
 
    <div class="OP" style="background-color: #B3CBFF">
    <asp:Label ID="Label3" class="L1" runat="server" Text="Opening of POSB Accounts" BackColor="#003399" 
             Font-Bold="True"></asp:Label>
    <div class="LB">
        <asp:Label ID="Label1" class="Lb1" runat="server" Text="Performance" BackColor="#99CCFF" 
             Font-Bold="True"></asp:Label>
        <asp:Label ID="Label4" class="T" runat="server" Text="Label"  Font-Bold="True">Target</asp:Label>
        <asp:Label ID="Label5" class="A" runat="server" Text="Label"  Font-Bold="True">Achievement</asp:Label>
        <asp:Label ID="Label6" class="Per" runat="server" Text="Label" Font-Bold="True">% of Achievement</asp:Label>
        <asp:TextBox ID="TextBox1" class="t1" runat="server" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:TextBox ID="TextBox2" class="t2" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" class="t3" runat="server"></asp:TextBox>
    </div>
    <div class="LS">
    <asp:Label ID="Label2" class="Lb2" runat="server" Text="Position" BackColor="#99CCFF" 
             Font-Bold="True"></asp:Label>
             <asp:Label ID="Label7" class="C" runat="server" Text="Label"  Font-Bold="True">Circle Level</asp:Label>
        <asp:Label ID="Label8" class="R" runat="server" Text="Label"  Font-Bold="True">Region Level</asp:Label>
        <asp:Label ID="Label9" class="D" runat="server" Text="Label" Font-Bold="True">Division Level</asp:Label>
        <asp:TextBox ID="TextBox4" class="tb1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox5" class="tb2" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox6" class="tb3" runat="server"></asp:TextBox>
        <asp:Button ID="Button1"  class="b1" runat="server" Text="View Leaderboard" BackColor="#CCFF99" />
        <asp:Button ID="Button2"  class="b2" runat="server" Text="View Leaderboard" BackColor="#CCFF99" />
        <asp:Button ID="Button3"  class="b3" runat="server" Text="View Leaderboard" BackColor="#CCFF99" />
    </div>
    </div>

     <div class="BB" style="background-color: #FFC2A6" >
         <asp:Label ID="Label10" class="epms" runat="server" 
             Text="Enrolment to PM Scheme" BackColor="#8C2F2F" Font-Bold="True"></asp:Label>
    <div class="BL">
              <asp:Label ID="Label11" class="Lb1" runat="server" Text="Performance" BackColor="#FFDBB7"
             Font-Bold="True"></asp:Label>
        <asp:Label ID="Label12" class="T2" runat="server" Text="Target"  Font-Bold="True" 
                  BackColor="#9D3300"></asp:Label>
        <asp:Label ID="Label13" class="A2" runat="server" Text="Label"  Font-Bold="True" BackColor="#9D3300">Achievement</asp:Label>
        <asp:Label ID="Label14" class="Per2" runat="server" Text="Label" Font-Bold="True" BackColor="#9D3300">% of Achievement</asp:Label>
        <asp:TextBox ID="TextBox7" class="t12" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox8" class="t22" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox9" class="t32" runat="server"></asp:TextBox>
    </div>
    <div class="BR">
    <asp:Label ID="Label15" class="Lb2" runat="server" Text="Position"
             Font-Bold="True" BackColor="#FFDBB7"></asp:Label>
             <asp:Label ID="Label16" class="C2" runat="server" Text="Label"  Font-Bold="True" BackColor="#9D3300">Circle Level</asp:Label>
        <asp:Label ID="Label17" class="R2" runat="server" Text="Label"  Font-Bold="True" BackColor="#9D3300">Region Level</asp:Label>
        <asp:Label ID="Label18" class="D2" runat="server" Text="Label" Font-Bold="True" BackColor="#9D3300">Division Level</asp:Label>
        <asp:TextBox ID="TextBox10" class="tb12" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox11" class="tb22" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox12" class="tb32" runat="server"></asp:TextBox>
        <asp:Button ID="Button4"  class="b12" runat="server" Text="View Leaderboard" BackColor="#CCFF99" />
        <asp:Button ID="Button5"  class="b22" runat="server" Text="View Leaderboard" BackColor="#CCFF99" />
        <asp:Button ID="Button6"  class="b32" runat="server" Text="View Leaderboard" BackColor="#CCFF99" />
    </div>
    </div>
</asp:Content>


