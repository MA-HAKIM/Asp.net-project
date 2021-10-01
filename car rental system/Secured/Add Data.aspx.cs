using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1259332.Secured
{
    public partial class Add_Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lvAdd_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd_ItemUpdated(object sender, ListViewUpdatedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd_ItemDeleted(object sender, ListViewDeletedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd1_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd1_ItemUpdated(object sender, ListViewUpdatedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd1_ItemDeleted(object sender, ListViewDeletedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd2_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd2_ItemUpdated(object sender, ListViewUpdatedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd2_ItemDeleted(object sender, ListViewDeletedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd3_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd3_ItemUpdated(object sender, ListViewUpdatedEventArgs e)
        {
            this.DataBind();
        }

        protected void lvAdd3_ItemDeleted(object sender, ListViewDeletedEventArgs e)
        {
            this.DataBind();
        }
        //protected string rentDate
        //{
        //    get { return lvAdd1.InsertItem.FindControl("RentedDateIn").ClientID; }
        //}
        //protected string returnDate
        //{
        //    get { return lvAdd1.InsertItem.FindControl("ReturnDateED").ClientID; }
        //}

    }
}