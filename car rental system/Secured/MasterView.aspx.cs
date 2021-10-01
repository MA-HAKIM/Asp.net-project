using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1259332.Secured
{
    public partial class MasterView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lvCartype_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Unselect")
            {
                lvCartype.SelectedIndex = -1;
            }
        }
    }
}