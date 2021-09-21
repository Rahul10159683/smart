<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" Codefile="Opening.aspx.cs" Inherits="WebApplication4.Opening" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <link href="Opening.css" rel="stylesheet" type="text/css" />
    <asp:Label ID="Label1" class="Heading" runat="server" Text="Label">Savings Bank – Opening of POSB Accounts
</asp:Label>
<div class="Glan" style="background-color: #B3CBFF">
    <asp:Label ID="Label2" class="A" runat="server" Text="Label">At a glance</asp:Label>
  <div class= "S">
  
      <asp:Label ID="Label3" class="sb" runat="server" Text="Label">SB</asp:Label>
      <asp:Label ID="Label4" class="rd" runat="server" Text="Label">RD</asp:Label>
      <asp:Label ID="Label5" class="td" runat="server" Text="Label">TD</asp:Label>
      <asp:Label ID="Label6" class="mis" runat="server" Text="Label">MIS</asp:Label>
      <asp:Label ID="Label7" class="scss" runat="server" Text="Label">SCSS</asp:Label>
      <asp:Label ID="Label8" class="ppf" runat="server" Text="Label">PPF</asp:Label>
      <asp:Label ID="Label9" class="ssy" runat="server" Text="Label">SSY</asp:Label>
      <asp:Label ID="Label10" class="total" runat="server" Text="Label">TOTAL</asp:Label>

      
         <asp:Label ID="Label11" class="T" runat="server" Text="Label"  Font-Bold="True">Target</asp:Label>
        <asp:Label ID="Label12" class="A" runat="server" Text="Label"  Font-Bold="True">Achievement</asp:Label>
        <asp:Label ID="Label13" class="P" runat="server" Text="Label" Font-Bold="True">% of Achievement</asp:Label>
     
      <asp:TextBox ID="TextBox1" class="t1"  runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox2" class="t2" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox3" class="t3" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox4" class="t4" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox5" class="t5" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox6" class="t6" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox7" class="t7" runat="server"></asp:TextBox>
     
      <asp:TextBox ID="TextBox8" class="t8" runat="server" BackColor="#FFCF88"></asp:TextBox>
      <asp:TextBox ID="TextBox9" class="t11" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox10" class="t12" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox11" class="t13" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox12" class="t14" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox13" class="t15" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox14" class="t16" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox15" class="t17" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox16" class="t18" runat="server" BackColor="#FFCF88"></asp:TextBox>
     
      <asp:TextBox ID="TextBox17" class="t21" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox18" class="t22" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox19" class="t23" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox20" class="t24" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox21" class="t25" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox22" class="t26" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox23" class="t27" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox24" class="t28" runat="server" BackColor="#FFCF88"></asp:TextBox>
</div>

</div>
<div class="container" style="background-color: #B3CBFF">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [PMSCHEMES]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Divison], [HO], [Subdivision] FROM [PMSCHEMES]"></asp:SqlDataSource>
<asp:Label ID="Label14" Class="R1" runat="server" Text="Label">SO Wise Performance</asp:Label>

<div class= "tab_triger">
<ul>
<li><Label for="Tab1">Overall Performance</Label></li>
<li><Label for="Tab2">Scheme wise Performance</Label></li>
</ul>
</div>
<div class="tab_container_wrap"> 
<input type="radio" checked id="Tab1" name = "1">
<div class="tab_content_box">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="SOLID" HeaderText="SOLID" SortExpression="SOLID" />
            <asp:BoundField DataField="Region" HeaderText="Region" 
                SortExpression="Region" />
            <asp:BoundField DataField="Divison" HeaderText="Divison" 
                SortExpression="Divison" />
            <asp:BoundField DataField="HO" HeaderText="HO" SortExpression="HO" />
            <asp:BoundField DataField="Subdivision" HeaderText="Subdivision" 
                SortExpression="Subdivision" />
            <asp:BoundField DataField="Office" HeaderText="Office" 
                SortExpression="Office" />
            <asp:BoundField DataField="Targetgiven" HeaderText="Targetgiven" 
                SortExpression="Targetgiven" />
            <asp:BoundField DataField="Targetachived" HeaderText="Targetachived" 
                SortExpression="Targetachived" />
        </Columns>
    </asp:GridView>
</div>   
<input type="radio" checked id="Tab2" name = "1">
<div class="tab_content_box">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2">
         <Columns>
        <asp:BoundField DataField="Divison" HeaderText="Divison" 
                SortExpression="Divison" />
            <asp:BoundField DataField="HO" HeaderText="HO" SortExpression="HO" />
            <asp:BoundField DataField="Subdivision" HeaderText="Subdivision" 
                SortExpression="Subdivision" />
                 </Columns>
    </asp:GridView>
</div>  
</div>
</div>
<div class="bo" style="background-color: #B3CBFF">
<asp:Label ID="Label17" Class="R1" runat="server" Text="Label">BO Wise Performance</asp:Label>
<div class= "tab_triger">
<ul>
<li><Label for="Tab3">Overall Performance</Label></li>
<li><Label for="Tab4">Scheme wise Performance</Label></li>
</ul>
</div>
<div class="tab_container_wrap"> 
<input type="radio" checked id="Tab3" name = "1">
<div class="tab_content_box">
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="SOLID" HeaderText="SOLID" SortExpression="SOLID" />
            <asp:BoundField DataField="Region" HeaderText="Region" 
                SortExpression="Region" />
            <asp:BoundField DataField="Divison" HeaderText="Divison" 
                SortExpression="Divison" />
            <asp:BoundField DataField="HO" HeaderText="HO" SortExpression="HO" />
            <asp:BoundField DataField="Subdivision" HeaderText="Subdivision" 
                SortExpression="Subdivision" />
            <asp:BoundField DataField="Office" HeaderText="Office" 
                SortExpression="Office" />
            <asp:BoundField DataField="Targetgiven" HeaderText="Targetgiven" 
                SortExpression="Targetgiven" />
            <asp:BoundField DataField="Targetachived" HeaderText="Targetachived" 
                SortExpression="Targetachived" />
        </Columns>
    </asp:GridView>
</div>   
<input type="radio" checked id="Tab4" name = "1">
<div class="tab_content_box">
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2">
         <Columns>
        <asp:BoundField DataField="Divison" HeaderText="Divison" 
                SortExpression="Divison" />
            <asp:BoundField DataField="HO" HeaderText="HO" SortExpression="HO" />
            <asp:BoundField DataField="Subdivision" HeaderText="Subdivision" 
                SortExpression="Subdivision" />
                 </Columns>
    </asp:GridView>
</div>  
</div>
</div>


</asp:Content>
