using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Limon_Studio_Model;
using Limon_Studio_BLL;

namespace Limon_Studio
{
    public partial class essay : System.Web.UI.Page
    {
        public void cookieUse(string name, string value, int day)
        {
            HttpCookie cookie = new HttpCookie(name);
            cookie.Value = value;
            cookie.Expires = DateTime.Today.AddDays(day);
            Response.Cookies.Add(cookie);
        }
        public string cookieRead(string name)
        {
            string value;
            if (Request.Cookies[name] != null)
            {
                value = Request.Cookies[name].Value;
            }
            else
            {
                value = "(未知错误)";
            }
            return value;
        }
        SmallClass sc = new SmallClass();
        public string A_content;
        public string A_title;
        public string A_imageSource;
        public string A_AddTime;
        public string A_Hits;
        public string A_Resource;
        public string A_Author;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ip = HttpContext.Current.Request.UserHostAddress;
                if (sc.IsFirstLogin(ip))
                {
                    cookieUse("islogin", "0", 30);
                }
                if (cookieRead("islogin") != "0")
                {
                    personal_seting.Text = cookieRead("username");
                    logining.Visible = false;
                    personal_seting.Visible = true;
                    wel.Visible = true;
                    registering.Visible = false;
                    signouting.Visible = true;
                }
            }
            int id = 1;
            id = Convert.ToInt32(Request.QueryString["id"]);
            Essay essay = null;
            EssayBLL bll = new EssayBLL();
            if(bll.GetEssayById(id) != null)
            {
                essay = new Essay();
                essay.A_content = bll.GetEssayById(id).A_content;
                essay.A_title = bll.GetEssayById(id).A_title;
                essay.A_imagesource = bll.GetEssayById(id).A_imagesource;
                essay.A_addtime = bll.GetEssayById(id).A_addtime;
                essay.A_hits = bll.GetEssayById(id).A_hits;
                essay.A_resource = bll.GetEssayById(id).A_resource;
                essay.A_author = bll.GetEssayById(id).A_author;

                A_content = essay.A_content;
                A_title = essay.A_title;
                A_imageSource = essay.A_imagesource;
                A_AddTime = essay.A_addtime.ToString();
                A_Hits = essay.A_hits.ToString();
                A_Resource = essay.A_resource;
                A_Author = essay.A_author;
            }
            

        }

        protected void logining_Click(object sender, EventArgs e)
        {
            string url = Request.UrlReferrer.ToString();
            Response.Redirect("/Login.aspx?url=" + HttpUtility.UrlEncode(url));
        }

        protected void registering_Click(object sender, EventArgs e)
        {
            string url = Request.UrlReferrer.ToString();
            Response.Redirect("/register.aspx?url=" + HttpUtility.UrlEncode(url));
        }

        protected void signouting_Click(object sender, EventArgs e)
        {
            cookieUse("islogin", "0", 30);
            Response.Redirect(Request.Url.ToString());
        }

        protected void personal_seting_Click(object sender, EventArgs e)
        {
            string url = Request.UrlReferrer.ToString();
            Response.Redirect("/BaseInfoSet.aspx?url=" + HttpUtility.UrlEncode(url));
        }
    }
}