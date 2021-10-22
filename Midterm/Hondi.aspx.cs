using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Midterm
{
    public partial class Hondi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panFinal.Visible = panPrice.Visible = false;

            if (!Page.IsPostBack)
            {
                txtPhone.Visible = lblPhone.Visible = false;

                cboModel.Items.Add(new ListItem("Select a car", "0"));
                cboModel.Items.Add(new ListItem("Civoc", "25000"));
                cboModel.Items.Add(new ListItem("DR-V", "30000"));
                cboModel.Items.Add(new ListItem("Appord", "33000"));
                cboModel.Items.Add(new ListItem("Cilot", "45000"));
                cboModel.Items.Add(new ListItem("Odyrrey", "54000"));

                lstColor.Items.Add(new ListItem("White", "0"));
                lstColor.Items.Add(new ListItem("Dark", "300"));
                lstColor.Items.Add(new ListItem("Pearl", "900"));
                lstColor.SelectedIndex = 0;

                chklstAccessories.Items.Add(new ListItem("Aero Kit", "1300"));
                chklstAccessories.Items.Add(new ListItem("Film", "600"));
                chklstAccessories.Items.Add(new ListItem("Cold Weather", "900"));
                chklstAccessories.Items.Add(new ListItem("Hondi Emblem", "150"));
                chklstAccessories.Items.Add(new ListItem("Snow Tire Package", "1800"));

                radlstWarranty.Items.Add(new ListItem("3 Years", "0"));
                radlstWarranty.Items.Add(new ListItem("5 Years", "1000"));
                radlstWarranty.Items.Add(new ListItem("7 Years", "1500"));
                radlstWarranty.SelectedIndex = 0;
            }

            if (cboModel.SelectedIndex > 0)
            {
                CalculatePrice();
            }
        }

        private void CalculatePrice()
        {
            decimal total = 0, accessories = 0, subTotal = 0;
            decimal model = Convert.ToDecimal(cboModel.SelectedItem.Value);
            decimal color = Convert.ToDecimal(lstColor.SelectedItem.Value);
            decimal warranty = Convert.ToDecimal(radlstWarranty.SelectedItem.Value);

            litPrice.Text = "<br><strong>Car Price: $</strong>" + model;
            litPrice.Text += "<br><strong>Interior Color: $</strong>" + color;
            foreach (ListItem item in chklstAccessories.Items)
            {
                if (item.Selected)
                {
                    accessories += Convert.ToDecimal(item.Value);
                }
            }
            litPrice.Text += "<br><strong>Acessories: $</strong>" + accessories;
            litPrice.Text += "<br><strong>Warranty: $</strong>" + warranty;

            subTotal = model + color + warranty + accessories;
            litPrice.Text += "<br><br><br><strong>Total without taxes: $</strong>" + subTotal;
            total = Math.Round(subTotal * Convert.ToDecimal(1.15));
            litPrice.Text += "<br><strong>Total with taxes (15%): $</strong>" + total;

            panPrice.Visible = true;
        }

        protected void checkDealer_CheckedChanged(object sender, EventArgs e)
        {
            txtPhone.Visible = lblPhone.Visible = checkDealer.Checked;
        }

        protected void btnConclude_Click(object sender, EventArgs e)
        {
            panFinal.Visible = true;

            litFinal.Text = "Congratulations in obtain your new Hondi " + cboModel.SelectedItem.Text + " in " + txtCity.Text + ", " + txtZip.Text + ".";
            litFinal.Text += "<br><br>Your car comes with " + lstColor.SelectedItem.Text + " Interior Color";

            foreach (ListItem item in chklstAccessories.Items)
            {
                if (item.Selected)
                {
                    litFinal.Text += ", " + item.Text;
                }
            }
            litFinal.Text += " accessories.";

            litFinal.Text += "<br><br>You choosed " + radlstWarranty.SelectedItem.Text.ToLower() + " of warranty and our dealer contact you by the phone number " + txtPhone.Text + ".";
        }
    }
}