<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BaseInfoSet.aspx.cs" Inherits="Limon_Studio.BaseInfoSet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>个人设置</title>
    <link rel="icon" href="image/logo/favicon.ico" />
    <link href="CSS/ModifyInfo.css" rel="stylesheet" />
</head>
<body>
    <div class="head">个人设置</div>
    <div style="position: relative; margin: 0 auto; width: 1280px;">
        <div class="back"><a href="index.aspx"><img src="image/images/back.png"/></a></div>
        <div class="col-sub" id="mt">
            <aside class="mt-menu">
                <div class="mt-avatar">
                    <div class="mt-avatar-box">
                        <a class="mt-user-avatar" href="#" target="_blank">
                            <img src="//wwc.alicdn.com/avatar/getAvatar.do?userId=1821925144&amp;width=100&amp;height=100&amp;type=sns" /></a>
                    </div>
                </div>
                <div class="mt-menu-tree">
                    <label class="control-label">用户名（登录名）</label>
                    <div class="mt-menu-tree">
                        <label class="mt-menu-item"><%=username %></label><br />
                    </div>
                </div>
                <div class="mt-menu-tree">
                    <ul class="mt-menu-tree" id="tags">
                        <li class="selectTag"><a onclick="selectTag('tagContent0',this)" href="javascript:void(0)">个人设置</a></li>
                        <li><a onclick="selectTag('tagContent1',this)" href="javascript:void(0)">安全设置</a></li>
                        <li><a onclick="selectTag('tagContent2',this)" href="javascript:void(0)">成员管理</a></li>
                        <li><a onclick="selectTag('tagContent3',this)" href="javascript:void(0)">成员回收站</a></li>
                        <li><a onclick="selectTag('tagContent4',this)" href="javascript:void(0)">图片共享</a></li>
                        <li><a onclick="selectTag('tagContent5',this)" href="javascript:void(0)">上传文件</a></li>
                    </ul>
                </div>
            </aside>
        </div>
        <div id='tagContent'>
            <form class="form-horizontal" id="Form1" runat="server">
                <div class="tagContent selectTag" id="tagContent0" runat="server">
                    <div class="form-div contentin">
                        <h2>信息修改</h2>
                        <div class="control-group">
                            <label class="control-label">Name</label>
                            <div class="controls">
                                <asp:TextBox ID="reg_name" CssClass="form-input" runat="server"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Gender</label>
                            <div class="controls">
                                <asp:RadioButtonList ID="rbl1" runat="server">
                                    <asp:ListItem Value="false">男</asp:ListItem>
                                    <asp:ListItem Value="true">女</asp:ListItem>
                                </asp:RadioButtonList><br />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">居住地</label>
                            <div class="controls">
                                <asp:TextBox ID="reg_area" CssClass="form-input" runat="server"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">QQ</label>
                            <div class="controls">
                                <asp:TextBox ID="reg_qq" CssClass="form-input" runat="server"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Email</label>
                            <div class="controls">
                                <asp:TextBox ID="reg_email" CssClass="form-input" runat="server"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">电话</label>
                            <div class="controls">
                                <asp:TextBox ID="reg_telnum" CssClass="form-input" runat="server"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="control-group">
                            <asp:Button ID="btnSave" runat="server" Text="保存" CssClass="sub" OnClick="btnSave_Click" />
                        </div>

                    </div>
                </div>
                <div class="tagContent" id="tagContent1" runat="server">
                    <div class="form-div">
                        <h2>修改密码</h2>
                        <div class="control-group">
                            <label class="control-label">旧密码</label>
                            <div class="controls">
                                <asp:TextBox ID="oldpwd" CssClass="form-input" runat="server"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">新密码</label>
                            <div class="controls">
                                <asp:TextBox ID="newpwd" CssClass="form-input" runat="server"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="control-group">
                            <asp:Button ID="btnpwd" runat="server" Text="保存" CssClass="sub" OnClick="btnpwd_Click" />
                        </div>
                    </div>
                </div>
                <div class="tagContent" id="tagContent2" runat="server">
                    <div class="form-div-data">
                        <h2>成员管理</h2>
                        <div class="control-group">
                            <asp:GridView ID="GridView_menber" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Vertical" HorizontalAlign="Center" CssClass="datagrid" Font-Names="微软雅黑" RowStyle-HorizontalAlign="Center">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="PID" HeaderText="ID">
                                        <HeaderStyle Width="10px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ClassName" HeaderText="所在班级">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="pname" HeaderText="姓名">
                                        <HeaderStyle Width="40px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PLoginName" HeaderText="用户名">
                                        <HeaderStyle Width="79px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PQQNumber" HeaderText="QQ号码">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PGender" HeaderText="性别">
                                        <HeaderStyle Width="24px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PEmail" HeaderText="邮箱">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PAreas" HeaderText="地域">
                                        <HeaderStyle Width="79px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PTelNum" HeaderText="手机号码">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PAddTime" HeaderText="创建时间">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
                <div class="tagContent" id="tagContent3" runat="server">
                    <div class="form-div-data">
                        <h2>成员回收站</h2>
                        <div class="control-group">
                            <asp:GridView ID="GridViewDel" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Vertical" HorizontalAlign="Center" CssClass="datagrid" Font-Names="微软雅黑" RowStyle-HorizontalAlign="Center">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="PID" HeaderText="ID">
                                        <HeaderStyle Width="10px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ClassName" HeaderText="所在班级">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="pname" HeaderText="姓名">
                                        <HeaderStyle Width="40px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PLoginName" HeaderText="用户名">
                                        <HeaderStyle Width="79px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PQQNumber" HeaderText="QQ号码">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PGender" HeaderText="性别">
                                        <HeaderStyle Width="24px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PEmail" HeaderText="邮箱">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PAreas" HeaderText="地域">
                                        <HeaderStyle Width="79px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PTelNum" HeaderText="手机号码">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PAddTime" HeaderText="创建时间">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
                <div class="tagContent" id="tagContent4" runat="server">
                    <div class="form-div">
                        <h2>上传图片</h2>
                        <div class="control-group">
                            <label class="control-label">选择图片</label>
                            <div class="controls">
                                <asp:FileUpload ID="photoupload" runat="server" />
                                <label class="control-label">可以添加图片信息</label>
                                <asp:TextBox ID="photos_info1" CssClass="form-input" runat="server"></asp:TextBox><br />
                                <asp:Button ID="btnupload" runat="server" CssClass="sub" Text="上传" OnClick="btnupload_Click" /><br />
                                <label>图片预览</label><br />
                                <asp:Image ID="img" runat="server" Height="183px" Width="337px" /><br />
                                <asp:TextBox ID="txtinfo" runat="server" Text="" Height="150px" Width="331px" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tagContent" id="tagContent5" runat="server">
                    <div class="form-div">
                        <h2>上传文件</h2>
                        <div class="control-group">
                            <label class="control-label">选择文件（不上过50M）</label>
                            <div class="controls">
                                <asp:FileUpload ID="FileUpload" runat="server" />
                                <label class="control-label">可以添加文件名</label>
                                <asp:TextBox ID="file_info" CssClass="form-input" runat="server"></asp:TextBox><br />
                                <asp:Button ID="btnfileload" runat="server" CssClass="sub" Text="上传" OnClick="btnfileload_Click" /><br />
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
<script src="Js/jquery-1.9.1.js"></script>
<script type="application/javascript">
    function selectTag(showContent, selfObj) {
        // 操作标签
        var tag = document.getElementById("tags").getElementsByTagName("li");
        var taglength = tag.length;
        for (i = 0; i < taglength; i++) {
            tag[i].className = "";
        }
        selfObj.parentNode.className = "selectTag";
        // 操作内容
        for (i = 0; j = document.getElementById("tagContent" + i) ; i++) {
            j.style.display = "none";
        }
        document.getElementById(showContent).style.display = "block";
    }
</script>
