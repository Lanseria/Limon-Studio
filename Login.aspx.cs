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
    public partial class Login : System.Web.UI.Page
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            PersonBLL perbll = new PersonBLL();
            string name = username.Text;
            string pwd = txtpwd.Text;
            int type = rdol.SelectedIndex;
            string msg;
            Person per = new Person();
            if (perbll.Login(name, pwd, type, out msg, out per))
            {
                cookieUse("islogin", "1", 30);
                cookieUse("username", per.PLoginName, 30);
                cookieUse("id", per.PID.ToString(), 30);
                Response.Redirect(HttpUtility.UrlDecode(Request.QueryString["url"].ToString()));

            }
            else
            {
                Response.Write("<script>alert('" + msg + "');</script>");
            }
        }
    }
}