﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="essay.aspx.cs" Inherits="Limon_Studio.essay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><%= A_title %></title>
    <link href="CSS/blogPostStyle.css" rel="stylesheet" />
    <link rel="icon" href="image/logo/favicon.ico" />
    <script src="Js/jquery-1.11.0.min.js"></script>
    <script src="Js/lightbox.js"></script>
    <link href="CSS/lightbox.css" rel="stylesheet" />
</head>
<!--!!!!!-->
<body>
    <form runat="server">
        <div id="mainwrapper">
            <div id="fix">
                <header>
                    <!--**************************************************************************
        Header starts here. It contains Logo and 3 navigation links.
        ****************************************************************************-->

                    <div id="logo">
                        <img src="image/index/logoImage.png" /><!-- Company Logo text -->
                    </div>
                    <nav>
                        <a href="index.aspx" title="Link">主页</a><asp:Label ID="wel" runat="server" Text="欢迎你：" Font-Names="微软雅黑" Visible="False"></asp:Label><asp:LinkButton ID="personal_seting" runat="server" OnClick="personal_seting_Click" Visible="False">Username</asp:LinkButton><asp:LinkButton ID="logining" runat="server" OnClick="logining_Click">登录</asp:LinkButton><asp:LinkButton ID="registering" runat="server" OnClick="registering_Click">注册</asp:LinkButton><asp:LinkButton ID="signouting" runat="server" OnClick="signouting_Click" Visible="False">Sign Out</asp:LinkButton>
                    </nav>
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
                    <div class="post_title">
                        <h1><%= A_title %></h1>
                        <span><span><%= A_AddTime %></span>
                            <span>来源：<a href="<% =A_Resource %>">阅读全文</a></span>
                            <span>作者：<strong><% =A_Author %></strong>
                            </span>
                            <span>
                                <img src="image/images/view.png" />
                                <strong><%= A_Hits %></strong>
                            </span>
                        </span>
                    </div>
                    <div class="post_content" id="paragraph">
                        <div class="image-row">
                                <a class="example-image-link" href="<%= A_imageSource %>" data-lightbox="example-1">
                                    <img style="display: block; margin: 0 auto; margin-top: 26px; max-width: 728px; border: 0; vertical-align: bottom;" src="<%= A_imageSource %>" class="example-image" alt="image-1"/></a>
                            </div>
                        <p style="font-size: 1pc; line-height: 30px; padding: 26px 0; text-indent: 2em; color: #333333;">
                            <%= A_content %>
                        </p>
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
                        <img src="image/index/rm.png" />
                    </div>
                    <nav>
                        <ul>
                            <li><a href="photo.aspx" title="Link">照片</a></li>
                            <li><a href="article.aspx" title="Link">文章</a></li>
                            <li><a href="party.aspx" title="Link">活动</a></li>
                            <li><a href="resource.aspx" title="Link">资源</a></li>
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
    </form>
</body>
</html>

