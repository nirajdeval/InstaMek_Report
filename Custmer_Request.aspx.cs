using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InstaMek
{
    public partial class Custmer_Request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Response.Write("Jay Shree Ganeshay nmh");
                Calendar1_Date.Visible = false;
                TextBox_Date.Text = DateTime.Today.ToShortDateString();
                TextBox_service.Visible = false;
            }
        }

        protected void DropDownList_Services_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList_Services.SelectedValue != "-1")
            {
                TextBox_SelServ.Text += DropDownList_Services.SelectedItem.Text;
                TextBox_SelServ.Controls.Add(new LiteralControl("<br />"));
            }
             
        }
        protected void TextBox_SelServ_TextChanged(object sender, EventArgs e)
        {
           // DropDownList_Services.SelectedItem.Text = TextBox_SelServ.Text;
        }

        protected void ImageButton_Calnd_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1_Date.Visible == true)
            {
                Calendar1_Date.Visible = false;
            }
            else
            {
                Calendar1_Date.Visible = true;
            }
        }

        protected void Calendar1_Date_SelectionChanged(object sender, EventArgs e)
        {
            TextBox_Date.Text = Calendar1_Date.SelectedDate.ToShortDateString();
            Calendar1_Date.Visible = false;
        }

        protected void CheckBox_Address_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox_Address.Checked)
            {
                TextBox_service.Visible = true;
            }
            else
            {
                TextBox_service.Visible = false;
            }
        }

        protected void ImageButton_clock_Click(object sender, ImageClickEventArgs e)
        {
            TextBox_Time.Text = DateTime.Now.ToLocalTime().ToShortTimeString();
        }

        protected void Button_submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Request_Form.aspx");
        }
    }
}