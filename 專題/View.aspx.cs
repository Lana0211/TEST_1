using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MessagingToolkit.QRCode.Codec;
using System.Drawing;
using System.Drawing.Imaging;

namespace 專題
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WelcomeLB.Text = "歡迎你";
        }

        protected void CountryBT_Click(object sender, EventArgs e)
        {
            CountryBT.Text = "重新選擇";
            viewGridView.DataBind();
            //GridView1.DataBind();

            Random rand = new Random();
            int a, b, c;
            a = rand.Next(0, 5);
            b = rand.Next(0, 5);
            c = rand.Next(0, 5);

            while (a == b || a == c || b == c)
            {
                b = rand.Next(0, 5);
                c = rand.Next(0, 5);
            }

            Session["A"] = viewGridView.Rows[a].Cells[0].Text;
            Session["B"] = viewGridView.Rows[b].Cells[0].Text;
            Session["C"] = viewGridView.Rows[c].Cells[0].Text;
            Calendar1.Visible = true;
            CTextBox.Visible = true;
            EnterBT.Visible = true;
        }

        protected void EnterBT_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            GridView1.DataBind();
            QRbutton.Visible = true;
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
            CTextBox.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
            Session["date"] = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
           
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void CountryList_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void QRbutton_Click(object sender, EventArgs e)
        {
            QRCodeEncoder encoder = new QRCodeEncoder();
            String playlist = "日期： " + Session["date"] + "\n早上 " + Session["A"] + "\n下午 " + Session["B"] + "\n晚上 " + Session["C"];
            String ID = "playlist";
            Bitmap img = encoder.Encode(playlist);

            img.Save(Server.MapPath("/pic/" + ID + ".jpg"), ImageFormat.Jpeg);

            Image1.ImageUrl = "/pic/" + ID + ".jpg";
            Image1.Visible = true;
        }
    }
}