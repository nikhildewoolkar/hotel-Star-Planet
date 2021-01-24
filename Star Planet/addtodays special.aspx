<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="addtodays special.aspx.cs" Inherits="addtodays_special" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
<h2 style="color:maroon" class="title-w3">Add Today's Special Menu Item</h2>
 <br><br>
<table style="border: medium dashed blue; width:75%" align="center" cellpadding="5" cellspacing ="5">


                     <tr><td>

					<div class="modal-content abt-w3l">
							<div class="modal-header">
								<button type="button" class="close clo1" data-dismiss="modal">&times;</button>
                                <div class="head-top-w3ls"><i class="fa fa-graduation-cap" aria-hidden="true"></i></div>
			
 <p style="color:maroon" class="text">Menu Item Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<asp:TextBox ID="txtName" runat="server" Width="190px" Height="25px" BackColor="#CCCCCC"></asp:TextBox><br>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name contains Only Characters" ControlToValidate="txtName" ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>    
                                                            </p>
										
										

                                        
<p style="color:maroon" class="text">Description  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtDescription" runat="server" Width="191px" Height="25px" BackColor="#CCCCCC" ></asp:TextBox><br>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Description Field cannot be Empty" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                                           </p>
										


                                        
 <p style="color:maroon" class="text">Price  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtPrice" runat="server" style="margin-right: 1px" Width="190px" Height="25px" BackColor="#CCCCCC"></asp:TextBox><br>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter your mobile no" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>

<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invalid Price" ControlToValidate="txtPrice" ValidationExpression="^[1-9]\d{0,7}(?:\.\d{1,4})?|\.\d{1,4}$"></asp:RegularExpressionValidator>
                                                            
 </p>
										
										
									
										
<p class="text" style="color:maroon"> Upload menuitem image : &nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="menuitemimage" runat="server" />   </p>  
       
      								

		
        <center>
		<div class="agile-submit">   <asp:Button ID="btnAddtodaysspecial" runat="server" 
                Text="Add Todays Special" onclick="btnAddtodaysspecial_Click" />     </div>
        </center>
    									</div>                                    
							</div>
	                       </td></tr></table>
    
</center>
   
</asp:Content>

