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
    public partial class Downloading : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                FilesBLL bll = new FilesBLL();
                Files f = new Files();
                int id;
                string filePath;
                string fileName;
                id = Convert.ToInt32(Request.QueryString["id"]);
                f.FUrl = bll.GetFileById(id).FUrl;
                f.FRName = bll.GetFileById(id).FRName;
                filePath = Server.MapPath(f.FUrl);//路径
                fileName = f.FRName;//客户端保存的文件名
                FileStream fs = new FileStream(filePath, FileMode.Open);
                byte[] bytes = new byte[(int)fs.Length];
                //以字符流的形式下载文件
                fs.Read(bytes, 0, bytes.Length);
                fs.Close();
                Response.ContentType = "application/octet-stream";
                //通知浏览器下载文件而不是打开
                Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(fileName, System.Text.Encoding.UTF8));
                Response.BinaryWrite(bytes);
                Response.Flush();
                Response.End();

            }
            catch (IOException)
            {

                throw;
            }
        }
    }
}