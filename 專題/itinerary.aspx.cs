using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_final
{
    public partial class itinerary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userShowLB.Text = "Hello ! " + Session["name"] + " 請參考下列活動行程";
        }
    }
}