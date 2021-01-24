<%@ Page Title="" Language="C#" MasterPageFile="~/childMasterPage2.master" AutoEventWireup="true" CodeFile="menuextra.aspx.cs" Inherits="menuff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbkolsaConnectionString %>" 
        SelectCommand="SELECT * FROM [menuitems]"></asp:SqlDataSource>
        <br><br>
        <center>
    <asp:DataList ID="DataList1" runat="server" BackColor="Maroon" 
        BorderColor="maroon" BorderStyle="Groove" BorderWidth="1px" CellPadding="250" 
        CellSpacing="50" DataSourceID="SqlDataSource1" GridLines="Both" 
        RepeatColumns="4" RepeatDirection="Horizontal" >
        <FooterStyle BackColor="maroon" ForeColor="#8C4510" />
        <HeaderStyle BackColor="maroon" Font-Bold="True" ForeColor="White" />
        
        <ItemStyle BackColor="maroon" ForeColor="white" BorderColor="White" BorderStyle="Inset"/>
            
        <ItemTemplate>
        
            <%--<asp:image ID="imageurlLabel" runat="server" imageurl='<%# Eval("imageurl") %>' style="border-color:maroon;border:2px maroon solid" height="300" width="300"/>--%>
            <img id="Img1" runat="server" src='<%# Eval("imageurl")%>' style="border-radius:50%;border-color:maroon;border:2px maroon solid;" height="300" width="300"/>
            <br />
                 <asp:Label ID="menuitemnameLabel" runat="server" Text='<%# Eval("menuitemname") %>' /> , <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
            <br />
           
            Rs. <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /> </center>
            <br />
<br />
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

        </ItemTemplate>

        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</center>
</asp:Content>

