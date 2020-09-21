using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factura
{
    public partial class Inicial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference1.WebService1SoapClient Servicio1 = new ServiceReference1.WebService1SoapClient();

        }

        protected void DropDownListCargo_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Cargo = DropDownListCargo.SelectedValue;
            switch (Cargo)
            {
                case "Asesor":
                    TextBoxSueldo.Text = "877900";
                    break;
                case "Mercaderista":
                    TextBoxSueldo.Text = "1100900";
                    break;
                case "Supervisor":
                    TextBoxSueldo.Text = "1609900";
                    break;
                case "Coordinador":
                    TextBoxSueldo.Text = "2100900";
                    break;

            }
        }

        protected void DropDownListCargo_TextChanged(object sender, EventArgs e)
        {
            string Cargo = DropDownListCargo.SelectedValue;
            switch (Cargo)
            {
                case "Asesor":
                    TextBoxSueldo.Text = "877900";
                    break;
                case "Mercaderista":
                    TextBoxSueldo.Text = "1100900";
                    break;
                case "Supervisor":
                    TextBoxSueldo.Text = "1609900";
                    break;
                case "Coordinador":
                    TextBoxSueldo.Text = "2100900";
                    break;

            }
        }
    }
}