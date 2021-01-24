<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewdeletefeedback.aspx.cs" Inherits="viewupdatedeletefeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolsaConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [id] = @id" InsertCommand="INSERT INTO [Feedback] ([name], [phoneno], [emailid], [imageurl], [Feedback]) VALUES (@name, @phoneno, @emailid, @imageurl, @Feedback)" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [name] = @name, [phoneno] = @phoneno, [emailid] = @emailid, [imageurl] = @imageurl, [Feedback] = @Feedback WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="phoneno" Type="String" />
        <asp:Parameter Name="emailid" Type="String" />
        <asp:Parameter Name="imageurl" Type="String" />
        <asp:Parameter Name="Feedback" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="phoneno" Type="String" />
        <asp:Parameter Name="emailid" Type="String" />
        <asp:Parameter Name="imageurl" Type="String" />
        <asp:Parameter Name="Feedback" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
<center><h2 style="color:Maroon"> View / Delete Feedback </h2>

<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1">
    <Columns>
    
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="phoneno" HeaderText="phoneno" SortExpression="phoneno" />
        <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
        <asp:TemplateField HeaderText="imageurl" SortExpression="imageurl">
            <%--<EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("imageurl") %>'></asp:TextBox>
            </EditItemTemplate>--%>
            <ItemTemplate>
                <asp:Image ID="Label1" runat="server" imageurl='<%# Bind("imageurl") %>' Width="100" Height="100"></asp:Image>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
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
