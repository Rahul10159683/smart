<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" Codefile="rplipricol.aspx.cs" Inherits="WebApplication4.rplipricol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <link href="rpliprco.css" rel="stylesheet" type="text/css" />
    </br></br>
</br>
     <asp:Label ID="Label1" class="PMS" runat="server" Text="Label">Insurance – RPLI Premium Collection</asp:Label>

<div class="GLAN" style="background-color: #B3CBFF">
    <asp:Label ID="Label2"  class="H" runat="server" Text="Label">At a glance</asp:Label>
    <div class="sub">
    <asp:Label ID="Label3" class="APY" runat="server" Text="Label">Initial Premium </asp:Label>
    <asp:Label ID="Label4" class="PMSBY" runat="server" Text="Label">Renewal Premium</asp:Label>
    <asp:Label ID="Label5" class="PMJJBY" runat="server" Text="Label">Total</asp:Label>
    <asp:Label ID="Label6" class="T" runat="server" Text="Label">Target</asp:Label>
    <asp:Label ID="Label7" class="A" runat="server" Text="Label">Achievement</asp:Label>
    <asp:Label ID="Label8" class="PER" runat="server" Text="Label">% of Achievement</asp:Label>

        <asp:TextBox ID="TextBox1" class="t1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" class="t2" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" class="t3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox4" class="t4" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox5" class="t5" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox6" class="t6" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox7" class="t7" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox8" class="t8" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox9" class="t9" runat="server"></asp:TextBox>
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
<li><Label for="Tab1">Total Premium</Label></li>
<li><Label for="Tab2">Renewal Premium</Label></li>
<li><Label for="Tab3">Initial Premium</Label></li>
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
</div>
</div>

<div class="bo" style="background-color: #B3CBFF">
 
  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [PMSCHEMES]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Divison], [HO], [Subdivision] FROM [PMSCHEMES]"></asp:SqlDataSource>
<asp:Label ID="Label9" Class="R1" runat="server" Text="Label">BO Wise Performance</asp:Label>

<div class= "tab_triger">
<ul>
<li><Label for="Tab4">Total Premium</Label></li>
<li><Label for="Tab5">Renewal Premium</Label></li>
<li><Label for="Tab6">Initial Premium</Label></li>
</ul>
</div>
<div class="tab_container_wrap"> 
<input type="radio" checked id="Tab4" name = "1">
<div class="tab_content_box">
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
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
<input type="radio" checked id="Tab5" name = "1">
<div class="tab_content_box">
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
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
<input type="radio" checked id="Tab6" name = "1">
<div class="tab_content_box">
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
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
</div>
</div>


</asp:Content>
