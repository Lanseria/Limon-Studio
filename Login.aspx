<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Limon_Studio.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录页面</title>
    <link rel="icon" href="image/logo/favicon.ico" />
    <link href="CSS/loginStyle.css" rel="stylesheet" />
</head>
<body>
    <div class="bg-mask">
        <form id="LoginForm" class="form-css" runat="server">
            <div class="back"><a href="index.aspx"><img src="image/images/back.png"/></a></div>
            <div class="login-div">
                <h2 class="h2-login">用户登录</h2>
                <div class="sub-div">
                    <asp:Label ID="Name" runat="server" Text="用户名"></asp:Label><asp:TextBox CssClass="txt" ID="username" runat="server"></asp:TextBox><br />
                </div>
                <div class="sub-div">
                    <asp:Label ID="password" runat="server" Text="密码："></asp:Label><asp:TextBox CssClass="txt" ID="txtpwd" runat="server"></asp:TextBox><br />
                </div>
                <div class="rdol-div">
                    <asp:RadioButtonList ID="rdol" runat="server" BorderStyle="None" RepeatDirection="Horizontal" CssClass="myrbl">
                        <asp:ListItem runat="server" Text="管理员"></asp:ListItem>
                        <asp:ListItem runat="server" Text="成员"></asp:ListItem>
                    </asp:RadioButtonList>
                    
                </div>
                <div class="btn-div">
                    <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" CssClass="subbtn" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
<script src="Js/loginScript.js"></script>
