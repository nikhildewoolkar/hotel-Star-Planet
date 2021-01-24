<%@ Page Title="" Language="C#" MasterPageFile="~/childMasterPage2.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <br><br><br><br><br>
    <div class="about py-5" id="about">
		<div class="container py-xl-5 py-lg-3">

    <center>
      
   <h2 class="title-w3" style="color:red">Login </h2>
    <table style="width:40%; height: 265px;"> 
        <tr>
          <td> 
                
                <span class="clr-1" style="font-size: medium">
                <asp:Label ID="Label7" runat="server" Text="User Name:" ></asp:Label>
                </span>
            
    <asp:TextBox ID="txtUserName" runat="server" Height="25px" Width="168px" BackColor="#cccccc"></asp:TextBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:dbkolsaConnectionString %>" 
                    SelectCommand="SELECT * FROM [signup]"></asp:SqlDataSource>
                <br />  
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name Cannot be empty" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                <br />
            </td>
      </tr>
      <tr>
                <td>
        <span class="clr-1" style="font-size: medium">
        <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label> :
        </span>
        
       <asp:TextBox ID="txtPassword" runat="server" style="background-color: #CCCCCC; width: 168px; height: 25px;" TextMode="Password"></asp:TextBox><br />  
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />

            </td>
         </tr>
        <tr>
        <td>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
<asp:ImageButton ID="btnSubmit" runat="server" Height="38px" Width="86px" 
                ImageUrl="~/images/submit_button.jpg" onclick="btnSubmit_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="btnReset" runat="server" Height="38px" Width="86px" ImageUrl="~/images/reset_btn.jpg" />  


  </td>
            
        </tr>
        <tr>
        <td colspan="2">
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:Label>
        </td>
        </tr>
        <tr>
        <td colspan="2"> 
            IF NOT REGISTERED?<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/signup.aspx" Font-Bold="True" Font-Underline="True" ForeColor="red">&nbsp;&nbsp;&nbsp;REGISTER NOW!!</asp:HyperLink></td>
        </tr>
    </table> 
    
        </center>
</div>
</div>
</asp:Content>

