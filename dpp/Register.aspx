 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="dpp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  href="Registerstyle.css" rel="stylesheet" />
    <style>
        body{            background-image:url('Image/marvel-deadpool-and-wolverine-hn-3840x2400.jpg');
            background-size:cover;
               margin:0;
               padding:0;
                font-family:sans-serif;
        }
        #form1{
             position:absolute;
    top:50%;
    left:50%;
    transform:translate(-50%,-50%);
            height:560px;
            width:530px;
            opacity:0.8;

           background-color:transparent;
     
            
    box-sizing:inherit;
    background:rgba(0,0,0,0.5);
        }
        #lblUsername, #lblPassword,#lblConfpassword,#lblEmpid,#lblId,#lblmail,#lblNumber,#lblDesignation,#lblDOB,#lblAge {
    font-weight: bold;
    color:azure;
}
        #h2{
    padding:0;
    margin:0;
    text-align:center;
    color:rgb(255 216 0);

}
        #txtUsername,#txtPassword,#txtConfpassowrd,#txtMail,#txtNumber,#ddlDesignation,#txtDOB,#txtAge{
    border:none;
    border-bottom:1px solid #fff;
    outline:none;
    height:40px;
    color:#fff;
    font-size:16px;
    background-color:transparent;

}
        #BtnRegister{
    border:none;
    outline:none;
    height:40px;
    font-size:16px;
    color:#fff;
    background-color:rgb(255,9,9);
    cursor:pointer;
    border-radius:20px;
    transition:  .3s ease-in-out;

}
        #BtnRegister:hover{
    background-color:rgb(255 216 0);

}
      
        .auto-style2 {
            width: 100%;
            height: 186px;
        }
        .auto-style3 {
            height: 46px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            height: 44px;
        }
        .auto-style6 {
            height: 42px;
        }
        .auto-style7 {
            height: 47px;
        }
        .auto-style8 {
            height: 46px;
            width: 283px;
        }
        .auto-style9 {
            height: 37px;
            width: 283px;
        }
        .auto-style10 {
            height: 44px;
            width: 283px;
        }
        .auto-style11 {
            height: 42px;
            width: 283px;
        }
        .auto-style12 {
            height: 47px;
            width: 283px;
        }
      
        .auto-style13 {
            height: 574px;
            left: 50%;
            top: 45%;
        }
              
        .auto-style14 {
            width: 706px;
        }
              
    </style>
   
    
</head>
<body>
              <div class:"Registerform">

    
                  <form id="form1" runat="server" class="auto-style13">
                      <div>


             
                          <h2 id="h2">Registration Form</h2>
                            </div>

                      <div class="container">
                          <table class="auto-style2">
                              <tr>
                                  <td class="auto-style8">
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Label ID="lblUsername" runat="server" CssClass="lblUsername" Text="Username" ForeColor="White"></asp:Label>
                                  </td>
                                  <td class="auto-style3">
                      <asp:TextBox ID="txtUsername" runat="server" Height="19px" CssClass="txtUsername" placeholder="Userrname"></asp:TextBox>

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>

                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style9">

                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblPassword" runat="server" CssClass="lblPassword" Text="Password" ForeColor="White"></asp:Label>
                                  </td>
                                  <td class="auto-style4">

                      <asp:TextBox ID="txtPassword" runat="server" CssClass="txtPassword" Height="19px" placeholder="Password"></asp:TextBox>

                      <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Set a diffcult one" ControlToValidate="txtPassword" OnServerValidate="Password" ForeColor="Red"></asp:CustomValidator>

                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style8">

                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                      <asp:Label ID="lblConfpassword" runat="server" CssClass="lblConfpassword" Text="Confirm_Password" ForeColor="White"></asp:Label>
                                  </td>
                                  <td class="auto-style3">

                      <asp:TextBox ID="txtConfpassowrd" runat="server" CssClass="txtConfpassword" Height="19px" placeholder="Confirm_Password"></asp:TextBox>

                      <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtPassword" ControlToValidate="txtConfpassowrd" ForeColor="Red"></asp:CompareValidator>

                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style10">

                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                      <asp:Label ID="lblEmpid" runat="server" Text="Employer_ID" CssClass="lblEmpid" ForeColor="White"></asp:Label>
                                  </td>
                                  <td class="auto-style5">
                      <asp:Label ID="lblId" runat="server" Text="0" CssClass="lblId"></asp:Label>

                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style11">

                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                      <asp:Label runat="server" Text="E-Mail" CssClass="lblmail" ForeColor="White"></asp:Label>
                                  </td>
                                  <td class="auto-style6">

                      <asp:TextBox ID="txtMail" runat="server" Height="19px" AutoCompleteType="Email" CssClass="txtMail" placeholder="Enter Your Email"></asp:TextBox>

                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style12">

                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                      <asp:Label runat="server" Text="Phone_Number" CssClass="lblNumber" ForeColor="White"></asp:Label>
                                  </td>
                                  <td class="auto-style7">
                      <asp:TextBox ID="txtNumber" runat="server" Height="19px" MaxLength="10" OnTextChanged="txtNumber_TextChanged" CssClass="txtNumber" placeholder="Your Number"></asp:TextBox>

                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style12">

                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                      <asp:Label runat="server" Text="Designation" CssClass="lblDesignation" ForeColor="White"></asp:Label>

                                  </td>
                                  <td class="auto-style7">
                      <asp:DropDownList ID="ddlDesignation" runat="server" AutoPostBack="True">
                          <asp:ListItem>select</asp:ListItem>
                          <asp:ListItem>Employer</asp:ListItem>
                          <asp:ListItem>Admin</asp:ListItem>
                      </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlDesignation" ErrorMessage="Not yet selected." ForeColor="Red"></asp:RequiredFieldValidator>

                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style12">

                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                      <asp:Label runat="server" Text="DOB" CssClass="lblDOB" ForeColor="White"></asp:Label>
                                  </td>
                                  <td class="auto-style7">
                      <asp:TextBox ID="txtDOB" runat="server" Height="19px" type="date" AutoPostBack="True" OnTextChanged="txtDOB_TextChanged" CssClass="txtDOB"></asp:TextBox>

                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style12">

                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                      <asp:Label runat="server" Text="Age" CssClass="lblAge" ForeColor="White"></asp:Label>

                                  </td>
                                  <td class="auto-style7">
                      <asp:TextBox ID="txtAge" runat="server" Height="19px" OnTextChanged="txtAge_TextChanged" AutoPostBack="True" CssClass="txtAge" placeholder="Your age"></asp:TextBox>

                                  </td>
                              </tr>
                              </table>
                          
     
  
              
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                      <table style="width:100%;">
                          <tr>
                              <td>&nbsp;</td>
                              <td class="auto-style14">

                      <asp:Button ID="BtnRegister" runat="server" Text="Resgister" OnClick="BtnRegister_Click" CssClass="btnRegister" style="margin-left: 233px"  />

                                  </td>
                              <td>&nbsp;</td>
                          </tr>
                  </table>

                                  
                           </div>
                  </form>
                 
                        </div>
    
        
    
        
     
  
</body>
</html>
