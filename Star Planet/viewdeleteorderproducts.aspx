<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewdeleteorderproducts.aspx.cs" Inherits="viewupdatedeleteproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolsaConnectionString %>" DeleteCommand="DELETE FROM [orderedproducts] WHERE [productid] = @productid" InsertCommand="INSERT INTO [orderedproducts] ([orderid], [productid], [productname], [productimgurl], [quantity], [price]) VALUES (@orderid, @productid, @productname, @productimgurl, @quantity, @price)" SelectCommand="SELECT * FROM [orderedproducts] WHERE ([orderid] = @orderid)" UpdateCommand="UPDATE [orderedproducts] SET [orderid] = @orderid, [productname] = @productname, [productimgurl] = @productimgurl, [quantity] = @quantity, [price] = @price WHERE [productid] = @productid">
        <DeleteParameters>
            <asp:Parameter Name="productid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
            <asp:Parameter Name="productid" Type="Int32" />
            <asp:Parameter Name="productname" Type="String" />
            <asp:Parameter Name="productimgurl" Type="String" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="price" Type="Double" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="orderid" QueryStringField="orderid" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
            <asp:Parameter Name="productname" Type="String" />
            <asp:Parameter Name="productimgurl" Type="String" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="productid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <center><h2 style="color:yellow"> View /Delete Ordered Products</h2>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="productid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
            <asp:BoundField DataField="productid" HeaderText="productid" ReadOnly="True" SortExpression="productid" />
            <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
            <asp:TemplateField HeaderText="productimgurl" SortExpression="productimgurl">
                <%--<EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("productimgurl") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Image ID="Label1" runat="server" imageurl='<%# Bind("productimgurl") %>'></asp:Image>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>



    </asp:GridView>

        </center>
</asp:Content>




