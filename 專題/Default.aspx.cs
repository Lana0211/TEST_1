using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_final
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clientDetailsView.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void loginBT_Click(object sender, EventArgs e)
        {
            clientDetailsView.Visible = false;
            entry.Visible = false;
            if(1 == clientDetailsView.DataItemCount)
            {
                Session["name"] = clientDetailsView.Rows[0].Cells[1].Text;
                entry.Visible = true;
            }
            else
            {
                Session["name"] = null;
                clientDetailsView.Visible = true;
            }
        }
    }
}