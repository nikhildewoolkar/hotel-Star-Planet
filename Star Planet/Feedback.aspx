<%@ Page Title="" Language="C#" MasterPageFile="~/childMasterPage2.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

			<div class="contact-form">
				<h3>Feedback Form</h3>
                    <center>
                    <br><br>
<table width="50%" style="background-color:maroon;color:maroon" cellpadding="5" cellspacing ="5">
                      <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style4" valign="top">
                   
                    <asp:TextBox placeholder="Name" ID="txtName" runat="server" Width="190px" Height="25px" 
                        BackColor="#CCCCCC" ForeColor="Maroon"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please Enter your First name" ControlToValidate="txtName"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Name contains Only Characters" ControlToValidate="txtName" 
                        ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>    
                                </td>
            </tr>
            <tr>
            <td></td>
            </tr>
            <tr>
            <td></td>
                <td class="style4" valign="top">
  <asp:TextBox placeholder="Mobile No" ID="txtphoneno" runat="server" style="margin-right: 1px" Width="190px" Height="25px" BackColor="#CCCCCC" ForeColor="Maroon"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Please Enter your mobile no" ControlToValidate="txtphoneno"></asp:RequiredFieldValidator><br /> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="Invalid Mobile No" ControlToValidate="txtphoneno" 
                        ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
            <td></td>
    <td class="style4" valign="top">
                 
                    <asp:TextBox placeholder="Email" ID="txtEmail" runat="server" Width="190px" Height="25px" 
                        ForeColor="Maroon" BackColor="#CCCCCC"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Please enter your Emaild ID" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ErrorMessage="Invalid EmailID" ControlToValidate="txtEmail" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> </td>
            </tr> 
            <tr>
            <td></td>
            <td class="style4">
                
                <asp:TextBox placeholder="Feedback" ID="txtFeedback" runat="server" Width="191px" TextMode= "MultiLine" 
                    Height="80px" ForeColor="Maroon" BackColor="#CCCCCC" ></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Address Field cannot be Empty" ControlToValidate="txtFeedback"></asp:RequiredFieldValidator><br />
                </td>
            </tr>
            <tr>
            <td></td>
            <td class="style4">
               <asp:label ID="label1" runat="server" ForeColor="Maroon" BackColor="gray"
                   Height="38px" Width="86px" Text="Upload Photo" />
            
             Upload Photo : &nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="perosnimageurl" runat="server" /> 
                 </td>
            </tr>
           <tr>
           <td></td>

           <td class="style1">
          
           
               <asp:Button ID="btnRegSubmit" runat="server" ForeColor="Maroon" BackColor="green"
                   Height="38px" Width="86px" Text="Submit" onclick="btnRegSubmit_Click" />
            &nbsp;<asp:Button ID="btnRegReset" runat="server" ForeColor="Maroon" BackColor="green" Height="38px" Width="86px" 
                   Text="Reset" />  
            </td>
            
            </tr>
            
             </table>
             <br /><br />
             </center>  
             </div>
			

			
			
</asp:Content>

