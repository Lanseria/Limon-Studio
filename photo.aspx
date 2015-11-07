<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="photo.aspx.cs" Inherits="Limon_Studio.photo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎来到寝室108的Zone</title>
    <link href="CSS/blogPostStyle.css" rel="stylesheet" />
    <link rel="icon" href="image/logo/favicon.ico" />
    <script src="Js/jquery-1.11.0.min.js"></script>
    <script src="Js/lightbox.js"></script>
    <link href="CSS/lightbox.css" rel="stylesheet" />
    <%--<link href="CSS/screen.css" rel="stylesheet" />--%>
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
                    <img src="image/index/logoImage.png" /><!-- Company Logo text --></div>
                
                    <nav><a href="index.aspx" title="Link">主页</a><asp:Label ID="wel" runat="server" Text="欢迎你：" Font-Names="微软雅黑" Visible="False"></asp:Label><asp:LinkButton ID="personal_seting" runat="server" OnClick="personal_seting_Click" Visible="False">Username</asp:LinkButton><asp:LinkButton ID="logining" runat="server" OnClick="logining_Click">登录</asp:LinkButton><asp:LinkButton ID="registering" runat="server" OnClick="registering_Click">注册</asp:LinkButton><asp:LinkButton ID="signouting" runat="server" OnClick="signouting_Click" Visible="False">Sign Out</asp:LinkButton>
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
                <h1>
                    <!-- Blog title -->
                    照片</h1>
                <h3>
                    <!-- Tag_line -->
                    一群2B室友的家</h3>
                <div class="photo_dis">
                    <section id="examples" class="examples-section">
                        <div class="container">
                            <h1 style="font-size: 35px">Lightbox 图片画廊</h1>
                            <h3><a href="http://huati.weibo.com/k/9.3%E8%83%9C%E5%88%A9%E6%97%A5%E5%A4%A7%E9%98%85%E5%85%B5?from=501">#9.3胜利日大阅兵#！</a></h3>
                            <p>烽烟遮蔽天空年代，中国生死存亡之际，是他们，挺身而出，舍生忘死，浴血奋战。几十年过去，现在，他们变成风烛残年的老人⋯他们就是抗战老兵！“我们不怕死亡，我们怕被遗忘。”今天，部分抗战老兵在天安门参加9.3胜利日大阅兵！</p>
                            <div class="image-row">
                                <a class="example-image-link" href="image/album/mu1.jpg" data-lightbox="example-1">
                                    <img class="example-image" src="image/album/mu1.jpg" alt="image-1"/></a>
                                <a class="example-image-link" href="image/album/mu2.jpg" data-lightbox="example-2" data-title="Optional caption.">
                                    <img class="example-image" src="image/album/mu2.jpg" alt="image-1"/></a>
                                <a class="example-image-link" href="image/album/mu3.jpg" data-lightbox="example-3">
                                    <img class="example-image" src="image/album/mu3.jpg" alt="image-1"/></a>
                                <a class="example-image-link" href="image/album/mu4.jpg" data-lightbox="example-4" data-title="Optional caption.">
                                    <img class="example-image" src="image/album/mu4.jpg" alt="image-1"/></a>
                                <a class="example-image-link" href="image/album/mu5.jpg" data-lightbox="example-1">
                                    <img class="example-image" src="image/album/mu5.jpg" alt="image-1"/></a>
                                <a class="example-image-link" href="image/album/mu6.jpg" data-lightbox="example-2" data-title="Optional caption.">
                                    <img class="example-image" src="image/album/mu6.jpg" alt="image-1"/></a>
                                <a class="example-image-link" href="image/album/mu7.jpg" data-lightbox="example-3">
                                    <img class="example-image" src="image/album/mu7.jpg" alt="image-1"/></a>
                                <a class="example-image-link" href="image/album/mu8.jpg" data-lightbox="example-4" data-title="Optional caption.">
                                    <img class="example-image" src="image/album/mu8.jpg" alt="image-1"/></a>
                                <a class="example-image-link" href="image/album/mu9.jpg" data-lightbox="example-4" data-title="Optional caption.">
                                    <img class="example-image" src="image/album/mu9.jpg" alt="image-1"/></a>
                            </div>
                            <!-- <hr /> -->
                            <h3 style="clear: both;">
                                已上传模式
                            </h3>
                            <div class="image-row">
                                <div class="image-set">
                                    <asp:ListView ID="DL_img1" runat="server">
                                        <ItemTemplate>
                                            <a class="example-image-link" href="<%# Eval("P_Url") %>" data-lightbox="example-set" data-title="信息：<%# Eval("P_Info") %>" data-author="<br/>作者：<%# Eval("P_Username") %>">
                                        <img class="example-image" src="<%# Eval("P_Url") %>" alt=""></a>
                                        </ItemTemplate>
                                    </asp:ListView>
                                    <%--<asp:DataList ID="DL_img" runat="server">
                                        <ItemTemplate>
                                            <a class="example-image-link" href="<%# Eval("P_Url") %>"" data-lightbox="example-set" data-title="<%# Eval("P_Info") %>">
                                        <img class="example-image" src="<%# Eval("P_Url") %>" alt=""></a>
                                        </ItemTemplate>
                                    </asp:DataList>--%>
                                </div>
                            </div>
                        </div>
                    </section>
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
                <input type="text" placeholder="Search">
                <div id="adimage">
                    <img src="image/index/rm.png" /></div>
                <nav>
                    <ul>
                        <li class="click_on"><a href="photo.aspx" title="Link">照片</a></li>
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

