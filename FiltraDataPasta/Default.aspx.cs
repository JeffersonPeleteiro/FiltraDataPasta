using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FiltraDataPasta
{
    public partial class _default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtData.Text = DateTime.Now.ToString("dd/MM/yyyy");
            }
        }

        protected void btnProcessar_Click(object sender, EventArgs e)
        {
            BindGridview();
        }

        protected void BindGridview()
        {
            string pathFolder = Path.GetPathRoot(Environment.SystemDirectory) + txtPath.Text;
            string[] filesLoc = Directory.GetFiles(pathFolder);
            List<ListItem> files = new List<ListItem>();

            foreach (string file in filesLoc)
            {
                files.Add(new ListItem(Path.GetFileName(file)));
            }
            gvFiles.DataSource = files;
            gvFiles.DataBind();
        }

        protected void GetFiles(object sender, EventArgs e)
        {
            BindGridview();
        }
    }
}