<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Limon_Studio.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册</title>
    <link rel="icon" href="image/logo/favicon.ico" />
    <link href="CSS/registercss.css" rel="stylesheet" />
</head>
<body>
<div class="head">注册页</div>
<div class="form-div">
    <form class="form-horizontal" id="Form1" runat="server">
        <div class="back"><a href="index.aspx"><img src="image/images/back.png"/></a></div>
        <div class="control-group">
            <label class="control-label">Username</label>
            <div class="controls">
                <asp:TextBox ID="reg_username" CssClass="form-input" runat="server"></asp:TextBox>
                <br/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Is Administrator</label>
            <div class="controls">
                <asp:RadioButtonList ID="rbl" runat="server" Enabled="False">
                    <asp:ListItem Value="0">管理员</asp:ListItem>
                    <asp:ListItem Value="1">会员</asp:ListItem>
                </asp:RadioButtonList><br/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Password</label>
            <div class="controls">
                <asp:TextBox ID="reg_pwd" CssClass="form-input" runat="server"></asp:TextBox>
                <br/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">班级</label>
            <div class="controls">
                <asp:DropDownList ID="ddlclass" runat="server" CssClass="form-input"></asp:DropDownList>
                <br/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Gender</label>
            <div class="controls">
                <asp:RadioButtonList ID="rbl1" runat="server">
                    <asp:ListItem Value="false">男</asp:ListItem>
                    <asp:ListItem Value="true">女</asp:ListItem>
                </asp:RadioButtonList><br/>
            </div>
        </div>
        <div class="control-group">
            <asp:Button ID="btnsubmit" runat="server" Text="注册" CssClass="sub" OnClick="btnsubmit_Click" />
        </div>
    </form>
</div>
</body>
</html>
