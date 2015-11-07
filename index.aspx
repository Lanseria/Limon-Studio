<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Limon_Studio.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎来到寝室108的Zone</title>
    <link href="CSS/blogPostStyle.css" rel="stylesheet" />
    <link rel="icon" href="image/logo/favicon.ico" />
    <script src="Js/jquery-1.11.0.min.js"></script>
</head><!--!!!!!-->
<body>
<div id="mainwrapper">
    <div id="fix">
    <header>
        <!--**************************************************************************
        Header starts here. It contains Logo and 3 navigation links.
        ****************************************************************************-->
        
        <div id="logo"><img src="image/index/logoImage.png" /><!-- Company Logo text --></div><form runat="server">
        <nav> <a href="index.aspx" title="Link">主页</a><asp:Label ID="weather" runat="server" Text=""></asp:Label>
        <asp:Label ID="wel" runat="server" Text="欢迎你：" Font-Names="微软雅黑" Visible="False"></asp:Label><asp:LinkButton ID="personal_seting" runat="server" OnClick="personal_seting_Click" Visible="False">Username</asp:LinkButton><asp:LinkButton ID="logining" runat="server" OnClick="logining_Click">登录</asp:LinkButton><asp:LinkButton ID="registering" runat="server" OnClick="registering_Click">注册</asp:LinkButton><asp:LinkButton ID="signouting" runat="server" OnClick="signouting_Click" Visible="False">Sign Out</asp:LinkButton> </nav></form>
    </header></div>
    <div id="content">
        <div class="notOnDesktop">
            <!-- This search box is displayed only in mobile and tablet layouts and not in desktop layouts -->
            <input type="text" placeholder="Search"/>
        </div>
        <section id="mainContent">
            <!--************************************************************************
          Main Blog content starts here
          ****************************************************************************-->
            <h1><!-- Blog title -->郑州轻工业学院108寝室</h1>
            <h3><!-- Tag_line -->一群2B室友的家</h3>
                <div id="bannerImage">
                    <div id="in_bannerImage">
                    <ul>
                        <li class="landscapes">
                            <a href="#link1">Landscapes<img src="image/index/108-1.jpg" /></a>
                        </li>
                        <li class="people">
                            <a href="#link1">People<img src="image/index/108-2.jpg" /></a>
                        </li>
                        <li class="nature big">
                            <a href="#link1">Nature<img src="image/index/108-4.jpg" /></a>
                        </li>
                        <li class="urban">
                            <a href="#link1">Urban<img src="image/index/108-5.jpg" /></a>
                        </li>
                        <li class="abstract">
                            <a href="#link1">Abstract<img src="image/index/108-6.jpg" /></a>
                        </li>
                        <li class="fantastic">
                            <a href="#link1">Fantastic<img src="image/index/108.jpg" /></a>
                        </li>
                    </ul></div>
                </div>
                <script type="text/javascript">

                    function bind(el, eventType, callback){
                        if(typeof el.addEventListener === 'function'){
                            //标准事件绑定方法
                            el.addEventListener(eventType, callback, false);
                        }else if(typeof el.attechEvent === 'function'){
                            //IE事件绑定方法
                            el.attachEvent('on' + eventType, callback);
                        }
                    }

                    //鼠标悬停的处理函数
                    function mouseoverHandler(e){
                        var target = e.target || e.srcElement;
                        var outer = document.getElementById('bannerImage');
                        var list = outer.getElementsByTagName('li');
                        //清空所有LI元素的big
                        for(var i = 0; i < list.length; i++){
                            list[i].className = list[i].className.replace(/ ?big/g, '');
                        }

                        //根据事件的冒泡原理，找到需要变更class 的LI元素
                        while(target.tagName!="LI"||target.tagName=="BODY"){
                            target=target.parentNode;
                        }
                        //给当前元素加上class big
                        target.className += ' big';
                    }

                    function initList(){
                        //取得外部元素
                        var outer = document.getElementById('bannerImage');
                        //取得每个列表项
                        var list = outer.getElementsByTagName('li');
                        for(var i = 0; i < list.length; i++){
                            //对每个列表绑定鼠标悬停事件的监听
                            bind(list[i], 'mouseover', mouseoverHandler);
                        }
                    }

                    //执行初始化函数
                    initList();
                </script>

            <p>计算机与科学--本专业培养和造就适应现代化建设需要。德智体全面发展、基础扎实、知识面宽、能力强、素质高具有创新精神，系统掌握计算机硬件、软件的基本理论与应用基本技能，具有较强的实践能力，能在企事业单位、政府机关、行政管理部门从事计算机技术研究和应用，硬件、软件和网络技术的开发，计算机管理和维护的应用型专门技术人才。
                </p>
            <p>软件工程--软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。在现代社会中，软件应用于多个方面。典型的软件有电子邮件、嵌入式系统、人机界面、办公套件、操作系统、编译器、数据库、游戏等。同时，各个行业几乎都有计算机软件的应用，如工业、农业、银行、航空、政府部门等。这些应用促进了经济和社会的发展，也提高了工作效率和生活效率 。</p>
            <p>通信工程--通信工程（也作电信工程，旧称远距离通信工程、弱电工程）是电子工程的一个重要分支，电子信息类子专业，同时也是其中一个基础学科。该学科关注的是通信过程中的信息传输和信号处理的原理和应用。本专业学习通信技术、通信系统和通信网等方面的知识，能在通信领域中从事研究、设计、制造、运营及在国民经济各部门和国防工业中从事开发、应用通信技术与设备。</p>
                <p>电子信息科学与技术--该专业培养具备电子信息科学与技术的基本理论和基本知识，受到严格的科学实验训练和科学研究初步训练，能在电子信息科学与技术、计算机科学与技术及相关领域和行政部门从事科学研究、教学、科技开发、产品设计、生产技术管理工作的电子信息科学与技术高级专门人才。 </p>
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
            <div id="adimage"><img src="image/index/rm.png" /></div>
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
    <div id="footerbar"><!-- Small footer_bar at the bottom --></div>
</div>
</body>
</html>
