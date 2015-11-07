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
    public partial class music : System.Web.UI.Page
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