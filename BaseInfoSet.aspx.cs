using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Limon_Studio_Model;
using Limon_Studio_BLL;
using System.IO;

namespace Limon_Studio
{
    public partial class BaseInfoSet : System.Web.UI.Page
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
        static int id;
        public string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            PersonBLL bll = new PersonBLL();
            username = cookieRead("username");
            id = Convert.ToInt32(cookieRead("id"));
            if (bll.IsAdmin(id))
            {
                GridView_menber.Enabled = true;
                GridViewDel.Enabled = true;
                BindMGV(GridView_menber, 0);
                BindMGV(GridViewDel, 1);
            }
            else
            {
                GridView_menber.Enabled = false;
                GridViewDel.Enabled = false;
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            PersonBLL bll = new PersonBLL();
            Person per = new Person();
            per.PID = id;
            per.PName = reg_name.Text;
            per.PQQNumber = reg_qq.Text;
            per.PAreas = reg_area.Text;
            per.PEmail = reg_email.Text;
            per.PTelNum = reg_telnum.Text;
            if (bll.ModifyInfo(per))
            {
                string msg;
                int type = per.PType;
                string pwd = per.PPwd;
                string name = username;
                bool y = bll.Login(name, pwd, type, out msg, out per);
                cookieUse("islogin", "1", 30);
                cookieUse("username", per.PLoginName, 30);
                cookieUse("id", (per.PID).ToString(), 30);
                Response.Redirect(HttpUtility.UrlDecode(Request.QueryString["url"].ToString()));
            }
            else
            {
                Response.Write("<script>alert('修改失败');</script>");
            }
        }

        protected void btnpwd_Click(object sender, EventArgs e)
        {
            PersonBLL bll = new PersonBLL();
            if (bll.ModifyPwd(username, Common.person.PType, oldpwd.Text, newpwd.Text))
            {
                Response.Redirect(HttpUtility.UrlDecode(Request.QueryString["url"].ToString()));
            }
            else
            {
                Response.Write("<script>alert('修改失败');</script>");
            }
        }
        //绑定
        void BindMGV(GridView gv, int isDel)
        {
            PersonBLL bll = new PersonBLL();
            gv.DataSource = bll.GetAllMenber(isDel);
            gv.DataBind();
        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            PhotosBLL bll = new PhotosBLL();
            Photos photos = new Photos();
            if (photoupload.HasFile)
            {
                if (photoupload.PostedFile.ContentType.Substring(0, 5) == "image")
                {
                    try
                    {
                        string serverPath = Server.MapPath("/image/album");
                        if (!Directory.Exists(serverPath))
                        {
                            Directory.CreateDirectory(serverPath);
                        }
                        string imgName = photoupload.FileName;
                        string newPath = serverPath + "\\" + imgName;
                        photoupload.SaveAs(newPath);
                        txtinfo.Text = "";
                        photos.P_Url = img.ImageUrl = "../image/album/" + imgName;
                        DateTime nowadays = DateTime.Now;
                        int y = nowadays.Year;
                        int m = nowadays.Month;
                        int d = nowadays.Day;
                        int h = nowadays.Hour;
                        int mm = nowadays.Minute;
                        int ss = nowadays.Second;
                        string time = y + "-" + m + "-" + d + " " + h + ":" + mm + ":" + ss;
                        txtinfo.Text += "路径：" + photoupload.PostedFile.FileName + "\n大小：" + (photoupload.PostedFile.ContentLength / 1024.0) + "KB\n类型：" + photoupload.PostedFile.ContentType;
                        photos.P_Info = photos_info1.Text;
                        photos.P_UserId = Convert.ToInt32(cookieRead("id"));
                        bll.AddPhotos(photos);
                        tagContent4.Style["display"] = "block";
                        tagContent0.Style["display"] = "none";
                        ClientScript.RegisterStartupScript(GetType(), "", "alert('上传成功');", true);
                    }
                    catch (Exception)
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "alert('上传失败');", true);
                    }
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "alert('请上传图片');", true);
            }
        }
        //修改图片信息
        //protected void photos_save_Click(object sender, EventArgs e)
        //{
        //    PhotosBLL bll = new PhotosBLL();
        //    Photos photos = new Photos();
        //    photos.P_Info = photos_info.Text;
        //    photos.P_Url = Common.photoid;
        //    if (bll.Modify(photos))
        //    {
        //        Response.Redirect(HttpUtility.UrlDecode(Request.QueryString["url"].ToString()));
        //    }
        //    else
        //    {
        //        ClientScript.RegisterStartupScript(GetType(), "", "alert('修改失败');", true);
        //    }
        //}
        /// <summary>
        /// 上传文件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnfileload_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                try
                {
                    FilesBLL bll = new FilesBLL();
                    Files file = new Files();
                    string serverPath = Server.MapPath("/FileSave");
                    if (!Directory.Exists(serverPath))
                    {
                        Directory.CreateDirectory(serverPath);
                    }
                    string fileName = FileUpload.FileName;
                    string newPath = serverPath + "\\" + fileName;
                    file.FRName = fileName;
                    FileUpload.SaveAs(newPath);
                    file.FUrl = "FileSave/" + fileName;
                    file.FSize = Convert.ToInt32(FileUpload.FileContent.Length / 1000);
                    file.FUserId = Convert.ToInt32(cookieRead("id"));
                    file.FName = file_info.Text;
                    if (file.FName.Equals(""))
                    {
                        file.FName = fileName;
                    }
                    bll.AddFiles(file);
                    tagContent5.Style["display"] = "block";
                    tagContent0.Style["display"] = "none";
                    ClientScript.RegisterStartupScript(GetType(), "", "alert('上传成功');", true);
                }
                catch (Exception)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "alert('上传失败');", true);
                }
            }
        }

    }
}
