using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1259332.Secured
{
    public partial class carDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvDetails_PreRender(object sender, EventArgs e)
        {
            this.gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
            this.gvDetails.HeaderRow.CssClass = "table-dark";
        }
    }
}