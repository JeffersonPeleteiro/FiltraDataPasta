using System;
using System.IO;
using System.Web.UI;
using System.Linq;
using System.Data;

namespace FiltraDataPasta
{
    public partial class _default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtDataDe.Text = DateTime.Now.ToString("dd/MM/yyyy");
                txtDataAte.Text = DateTime.Now.ToString("dd/MM/yyyy");
            }
        }

        protected void btnProcessar_Click(object sender, EventArgs e)
        {
            BindGridview();
        }

        protected void BindGridview()
        {
            // Datas
            DateTime your_start_date = Convert.ToDateTime(txtDataDe.Text);
            DateTime your_end_date = Convert.ToDateTime(txtDataAte.Text);

            // Caminho da Pasta
            DirectoryInfo pathFolder = new DirectoryInfo(Path.GetPathRoot(Environment.SystemDirectory) + txtPath.Text);
            FileInfo[] filesLoc = pathFolder.GetFiles().Where(x => x.CreationTime >= (your_start_date) && x.CreationTime <= (your_end_date)).ToArray();

            // Criando os Registros para adicionar ao GridView
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("FileName"));
            dt.Columns.Add(new DataColumn("FileExtension"));

            object[] RowValues = { "", "" };

            foreach (var item in filesLoc)
            {                
                RowValues[0] = Path.GetFileNameWithoutExtension(item.Name);
                RowValues[1] = Path.GetFileName(item.Extension);
                                
                dt.Rows.Add(RowValues);
                dt.AcceptChanges();
            }

            gvFiles.DataSource = dt;
            gvFiles.DataBind();

            // Header
            gvFiles.HeaderRow.Cells[0].Text = "Nome do Arquivo";
            gvFiles.HeaderRow.Cells[1].Text = "Extensão";

            // Items
            //gvFiles.Columns[0].ItemStyle.Width = 300;
        }        
    }
}