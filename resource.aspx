﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resource.aspx.cs" Inherits="Limon_Studio.resource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎来到寝室108的Zone</title>
    <link href="CSS/blogPostStyle.css" rel="stylesheet" />
    <link rel="icon" href="image/logo/favicon.ico" />
    <script src="Js/jquery-1.11.0.min.js"></script>
</head>
<!--!!!!!-->
<body>
    <div id="mainwrapper">
        <div id="fix">
            <header>
                <!--**************************************************************************
        Header starts here. It contains Logo and 3 navigation links.
        ****************************************************************************-->

                <div id="logo">
                    <img src="image/index/logoImage.png" /><!-- Company Logo text --></div>
                <form runat="server">
                    <nav><a href="index.aspx" title="Link">主页</a><asp:Label ID="wel" runat="server" Text="欢迎你：" Font-Names="微软雅黑" Visible="False"></asp:Label><asp:LinkButton ID="personal_seting" runat="server" OnClick="personal_seting_Click" Visible="False">Username</asp:LinkButton><asp:LinkButton ID="logining" runat="server" OnClick="logining_Click">登录</asp:LinkButton><asp:LinkButton ID="registering" runat="server" OnClick="registering_Click">注册</asp:LinkButton><asp:LinkButton ID="signouting" runat="server" OnClick="signouting_Click" Visible="False">Sign Out</asp:LinkButton>
                    </nav>
                </form>
            </header>
        </div>
        <div id="content">
            <div class="notOnDesktop">
                <!-- This search box is displayed only in mobile and tablet layouts and not in desktop layouts -->
                <input type="text" placeholder="Search" />
            </div>
            <section id="mainContent">
                <!--************************************************************************
          Main Blog content starts here
          ****************************************************************************-->
                <h1>
                    <!-- Blog title -->
                    资源</h1>
                <h3>
                    <!-- Tag_line -->
                    一群2B室友的家</h3>
                <div class="article_dis">
                    <ul>
                        <asp:DataList ID="DL_file" runat="server">
                            <ItemTemplate>
                                <li><a href="Downloading.aspx?id=<%# Eval("FID") %>"><%# stringformat(Eval("FName").ToString(), 50) %></a>
                                    <span style="float: right;">上传者：<%# Eval("FUsername") %></span>
                                    <span style="float: right;">大小：<%# Eval("FSize")%>Kb</span>
                                </li>
                            </ItemTemplate>
                        </asp:DataList>
                    </ul>
                </div>
                <aside id="authorInfo">
                    <!-- The author information is contained here -->
                    <h2>limonplayerstudio柠檬工作室</h2>
                    <p>视频站点：<a href="http://i.youku.com/zhangchao564265135" target="_blank">http://i.youku.com/zhangchao564265135</a></p>
                    <p>微信号：limonplayerstudio</p>
                </aside>
            </section>
            <section id="sidebar">
                <!--************************************************************************
          Sidebar starts here. It contains a search_box, sample ad image and 6 links
          ****************************************************************************-->
                <input type="text" placeholder="Search" />
                <div id="adimage">
                    <img src="image/index/rm.png" /></div>
                <nav>
                    <ul>
                        <li><a href="photo.aspx" title="Link">照片</a></li>
                        <li><a href="article.aspx" title="Link">文章</a></li>
                        <li><a href="party.aspx" title="Link">活动</a></li>
                        <li class="click_on"><a href="resource.aspx" title="Link">资源</a></li>
                        <li><a href="game.aspx" title="Link">游戏</a></li>
                        <li><a href="music.aspx" title="Link">音乐</a></li>
                    </ul>
                </nav>
            </section>
            <footer>
                <!--************************************************************************
          Footer starts here
          ****************************************************************************-->
                <article>
                    <p>Learn more Listen more and Do more!</p>
                    <p>学的更多，听的更多，做的更多！</p>
                </article>
            </footer>
        </div>
        <div id="footerbar">
            <!-- Small footer_bar at the bottom -->
        </div>
    </div>
</body>
</html>



