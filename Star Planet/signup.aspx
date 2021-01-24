<%@ Page Title="" Language="C#" MasterPageFile="~/childMasterPage2.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

			<div class="contact-form">
				<h3>Sign Up Form</h3>
                    <center>
                    <br><br>
<table width="50%" style="background-color:maroon;color:white" cellpadding="5" cellspacing ="5">
                      <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style4" valign="top">
                   
                    <asp:TextBox placeholder="Name" ID="txtFirstName" runat="server" Width="190px" Height="25px" 
                        BackColor="#CCCCCC" ForeColor="Maroon"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please Enter your First name" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Name contains Only Characters" ControlToValidate="txtFirstName" 
                        ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>    
                                </td>
            </tr>
            <tr>
            <td></td>
            <td class="style4">
                
                <asp:TextBox placeholder="Address" ID="txtAddress" runat="server" Width="191px" TextMode= "MultiLine" 
                    Height="80px" ForeColor="Maroon" BackColor="#CCCCCC" ></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Address Field cannot be Empty" ControlToValidate="txtAddress"></asp:RequiredFieldValidator><br />
                </td>
            </tr>
            <tr>
            <td></td>
                <td class="style4" valign="top">
  <asp:TextBox placeholder="Mobile No" ID="txtMob" runat="server" style="margin-right: 1px" Width="190px" Height="25px" BackColor="#CCCCCC" ForeColor="Maroon"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Please Enter your mobile no" ControlToValidate="txtMob"></asp:RequiredFieldValidator><br /> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="Invalid Mobile No" ControlToValidate="txtMob" 
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
    <td class="style6" valign="top">
                    <asp:TextBox placeholder="Password" ID="txtPass" runat="server" ForeColor="Maroon" BackColor="#CCCCCC" Height="25px" 
                        TextMode="Password" Width="190px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Password Field cannot be Empty" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtPass" ErrorMessage="Password must contain 8 to 14 characters and must include at least one upper case,one lower case letter and one numeric Digit." 
                        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,14}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
            <td></td>
                <td class="style6" valign="top">
                                <asp:TextBox placeholder="Reenter Password" ID="txtReenterPass" runat="server" BackColor="#CCCCCC" ForeColor="Maroon" Height="25px" 
                        TextMode="Password" Width="190px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="Please Reenter your Password" ControlToValidate="txtReenterPass"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPass" ControlToValidate="txtReenterPass" 
                        ErrorMessage="Password Does NOT Match"></asp:CompareValidator>
                </td>
            </tr>
           
           <tr>
           <td></td>

           <td class="style1">
          
           
               <asp:Button ID="btnRegSubmit" runat="server" ForeColor="Maroon" BackColor="green"
                   Height="38px" Width="86px" Text="Submit" onclick="btnRegSubmit_Click"/>
            &nbsp;<asp:Button ID="btnRegReset" runat="server" ForeColor="Maroon" BackColor="green" Height="38px" Width="86px" 
                   Text="Reset" onclick="btnRegReset_Click"/>  
            </td>
            
            </tr>
             </table>
             <br /><br />
             </center>  
             </div>
			
			
</asp:Content>

