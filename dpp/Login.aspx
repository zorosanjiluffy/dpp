<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="dpp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="LoginStyle.css" rel="Stylesheet" />

</head>
<body> 

    <div class="Loginbox">
        
        <h2 >Log in Here</h2>
        <form runat="server">
                <asp:Label Text ="Username" CssClass="lblUsername" runat="server"></asp:Label>
            <asp:TextBox ID="txtUsername"  runat="server" CssClass="txtUsername" ></asp:TextBox>
            <asp:Label Text="Password" CssClass="lblPass" runat="server"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="txtPass"  ></asp:TextBox>
            <asp:Button ID="btnsubmit" Text="Login In" CssClass="btnsubmit" runat="server" OnClick="btnsubmit_Click" />
            <asp:LinkButton ID="btnForget" Text="Forget Password" CssClass="btnForget" runat="server"></asp:LinkButton>

        </form>
    </div> 
       
    
</body>
</html>
