<%@ Page Title="" Language="C#" MasterPageFile="~/childMasterPage2.master" AutoEventWireup="true" CodeFile="testimonials.aspx.cs" Inherits="testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:SqlDataSource ID="SqlDataSource1" 
                        runat="server" 
                        ConnectionString="<%$ ConnectionStrings:dbkolsaConnectionString %>" 
                        SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
                   
 
    <asp:Repeater ID="rep" DataSourceID="SqlDataSource1" runat="server" >
    <HeaderTemplate>
    <%--<table><tr>--%>
    </HeaderTemplate>
    <ItemTemplate>
        
        <div class="team">
		<div class="container">
			<div class="team-heading">
				<h3>Testimonials</h3>
			</div>

			<div class="team-grids">
				<div class="col-md-4 team-grid">
                <%--<asp:image ID="imageurlLabel" runat="server" imageurl='<%# Eval("imageurl") %>' style="border-color:maroon;border:2px maroon solid;" height="300" width="300"/>--%>
					<img runat="server" src='<%# Eval("imageurl") %>' style="border-radius:50%;border-color:maroon;border:2px maroon solid;" height="300" width="300"/>
					<h4><%#Eval("name")%>  </h4>
					<p style="color:Maroon;"><%#Eval("feedback") %></p>
					
				</div>
                </div>

                	</div>
                </div>


        <%--<td>
        
        <asp:image ID="imageurlLabel" runat="server" imageurl='<%# Eval("imageurl") %>' style="border-color:maroon;border:2px maroon solid;" height="300" width="300"/>
            <br />

            <span><%#Eval("name")%>  <%#Eval("feedback") %></span>
         </td>
     --%>
     </ItemTemplate>
    <FooterTemplate></tr></table></FooterTemplate>
</asp:Repeater>
</asp:Content>

