<%@ Page Title="" Language="C#" MasterPageFile="~/childMasterPage2.master" AutoEventWireup="true" CodeFile="Todaysspecial.aspx.cs" Inherits="fTodaysspecial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbkolsaConnectionString %>" 
        SelectCommand="SELECT * FROM [todaysspecial]"></asp:SqlDataSource>
    
    <center>
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" 
            RepeatColumns="4" RepeatDirection="Horizontal">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
       
            <asp:image ID="imageurlLabel" runat="server" imageurl='<%# Eval("imageurl") %>' style="border-radius:50%;border-color:maroon;border:2px maroon solid;" height="300" width="300" />
            <br />
                 <asp:Label ID="menuitemnameLabel" runat="server" 
                Text='<%# Eval("menuitemname") %>' />
            <br />
            <asp:Label ID="descriptionLabel" runat="server" 
                Text='<%# Eval("description") %>' />
            <br />
       
       
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            <a href="<%# String.Format("AddtoCart.aspx?tblname={0}&prodID={1}","todaysspecial",Eval("menuitemid")) %>" ><br/>
                                    <img id="Img2" runat="server" src='images\addtocart.png' width="100" height="100"/></a>
            
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
	<center>
</asp:Content>

