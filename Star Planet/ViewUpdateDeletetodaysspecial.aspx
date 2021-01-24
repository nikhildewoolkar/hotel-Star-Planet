<%@ Page Title="" Language="C#" MasterPageFile="adminMasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateDeletetodaysspecial.aspx.cs" Inherits="ViewUpdateDeletetodaysspecial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    
<br />

<br/>
<center><h2 style="color:Maroon"> Add / Update  /Delete Todays Special Menuitems </h2></center>
<br/><br />
    <asp:GridView ID="GridView1" runat="server" onselectedindexchanged="GridView1_SelectedIndexChanged"  AutoGenerateColumns="False"
        OnRowCancelingEdit="gvImage_RowCancelingEdit" DataKeyNames="menuitemid" 
        CellPadding="3" OnPageIndexChanging="GridView1_PageIndexChanging" 
                OnRowEditing="gvImage_RowEditing" 
        OnRowUpdating="gvImage_RowUpdating" OnRowDeleting="gvImage_RowDeleting" 
        AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
        <Columns>

        <asp:TemplateField HeaderText="menuitemid" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtid" runat="server" Text='<%# Eval("menuitemid") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("menuitemid") %>' ></asp:Label>
                </ItemTemplate>
                   <HeaderStyle Width="150px"></HeaderStyle>
         </asp:TemplateField>
  
            <asp:TemplateField HeaderText="Product name" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("menuitemname") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblcatname" runat="server" Text='<%# Eval("menuitemname") %>' ></asp:Label>
                </ItemTemplate>
                   <HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Description" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtdesc" runat="server" Text='<%# Eval("description") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbldesc" runat="server" Text='<%# Eval("description") %>' ></asp:Label>
                </ItemTemplate>
               <HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Product image" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl='<%# Eval("imageurl") %>' Height="80px" Width="100px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("imageurl") %>' Height="80px" Width="100px"/>
                </ItemTemplate>
<HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>
            
            
            <asp:TemplateField HeaderText="Price" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtprice" runat="server" Text='<%# Eval("price") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>' ></asp:Label>
                </ItemTemplate>
<HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderStyle-Width="150px">  
                <ItemTemplate>  
                    <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>  
                    <asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>  
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:LinkButton ID="LkB2" runat="server" CommandName="Update">Update</asp:LinkButton>  
                    <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>  
                </EditItemTemplate>  
<HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>  
        
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


<br />
<br/>
<table>
    
    <tr>
        <asp:Label ID="lblResult" runat="server" ></asp:Label>
    </tr>
    
</table>



</center>

</asp:Content>

