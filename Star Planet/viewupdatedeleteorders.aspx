<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewupdatedeleteorders.aspx.cs" Inherits="viewupdatedeleteorders" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolsaConnectionString %>" DeleteCommand="DELETE FROM [tblorder] WHERE [orderid] = @orderid" InsertCommand="INSERT INTO [tblorder] ([orderid], [orderdate], [customeremailid], [totalamount]) VALUES (@orderid, @orderdate, @customeremailid, @totalamount)" SelectCommand="SELECT * FROM [tblorder]" UpdateCommand="UPDATE [tblorder] SET [orderdate] = @orderdate, [customeremailid] = @customeremailid, [totalamount] = @totalamount WHERE [orderid] = @orderid">
        <DeleteParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
            <asp:Parameter Name="orderdate" Type="String" />
            <asp:Parameter Name="customeremailid" Type="String" />
            <asp:Parameter Name="totalamount" Type="Single" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="orderdate" Type="String" />
            <asp:Parameter Name="customeremailid" Type="String" />
            <asp:Parameter Name="totalamount" Type="Single" />
            <asp:Parameter Name="orderid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

<center><h2 style="color:yellow"> View /Delete Orders</h2>
                

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="orderid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:TemplateField HeaderText="orderid" SortExpression="orderid">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("orderid") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <a href="<%# String.Format("viewdeleteorderproducts.aspx?orderid={0}",Eval("orderid")) %>" > 
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderid") %>'></asp:Label>
                        </a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="orderdate" HeaderText="orderdate" SortExpression="orderdate" />
            <asp:BoundField DataField="customeremailid" HeaderText="customeremailid" SortExpression="customeremailid" />
            <asp:BoundField DataField="totalamount" HeaderText="totalamount" SortExpression="totalamount" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    </center>


</asp:Content>

