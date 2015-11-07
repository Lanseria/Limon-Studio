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
    public partial class register : System.Web.UI.Page
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
            rbl.SelectedIndex = 1;
            BindDDLclass();
        }
        PersonBLL bll = new PersonBLL();
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Person per = new Person();
            per.PLoginName = reg_username.Text;
            per.PType = int.Parse(rbl.SelectedValue);
            per.PPwd = reg_pwd.Text;
            per.PGender = Convert.ToBoolean(rbl1.SelectedValue)==false ? "男":"女";
            per.PCID = Convert.ToInt32(ddlclass.SelectedValue);
            per.PQQNumber = "";
            per.PName = "";
            per.PPYName = "";
            per.PEmail = "";
            per.PAreas = "";
            per.PTelNum = "";
            if (bll.AddPerson(per))
            {
                string msg;
                Person person = new Person();
                bll.Login(per.PLoginName, per.PPwd, per.PType, out msg, out person);
                cookieUse("username", person.PLoginName, 30);
                cookieUse("id", (person.PID).ToString(), 30);
                cookieUse("islogin", "1", 30);
                Response.Redirect(HttpUtility.UrlDecode(Request.QueryString["url"].ToString()));
            }
            else
            {
                Response.Write("<script>alert('添加失败');</script>");
            }
        }
        void BindDDLclass()
        {
            ClassesBLL cBLL= new ClassesBLL();

            ddlclass.DataTextField = "cname";
            ddlclass.DataValueField = "cid";
            ddlclass.DataSource = cBLL.GetAllClasses();
            ddlclass.DataBind();
        }
    }
}