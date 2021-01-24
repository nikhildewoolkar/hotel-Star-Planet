<%@ Page Title="" Language="C#" MasterPageFile="~/childMasterPage2.master" AutoEventWireup="true" CodeFile="singlemenuitem.aspx.cs" Inherits="singlemenuitem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:dbkolsaConnectionString %>" 
                                    SelectCommand="SELECT [description], [menuitemname], [imageurl], [price] FROM [menuitems] WHERE ([menuitemid] = @menuitemid)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter DefaultValue="1" Name="menuitemid" 
                                            QueryStringField="id" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
	<HeaderTemplate>
    
<!-- single -->
	<div class="blog">
				<!-- container -->
				<div class="container">
	        
	
    </HeaderTemplate>
    <ItemTemplate>
    				<div class="col-md-8 blog-top-left-grid">
						<div class="left-blog left-single">
							<div class="blog-left">
								<div class="single-left-left">
								   <img id="Img1" runat="server" src='<%# Eval("imageurl") %>' style="border-radius:30%;border-color:maroon;border:2px maroon solid;" height="400" width="400"/>
									
								</div>
                             </div>
                             </div>
                             </div>
					<div class="col-md-4 blog-top-right-grid">
						<div class="categories">
                        		
                                				<p style="color:Maroon;"><%#Eval("menuitemname") %></p>
												<p style="color:Maroon;"><%#Eval("description") %></p>
                                    <p style="color:Maroon;"><%#Eval("price") %></p>
							
						</div>
					</div>
	<%--				<div class="clearfix"> </div>--%>
				
    
	</ItemTemplate>
    
    
    <FooterTemplate>
    </div>
				<!-- //container -->
	</div>
	<!-- //single -->
    </FooterTemplate>
    </asp:Repeater>

</asp:Content>

