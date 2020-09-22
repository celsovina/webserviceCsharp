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
            int ValorCargo = 0;
            string Valor;
            switch (Cargo)
            {

                case "Seleccione":
                    Valor = "$0";
                    LabelSueldo.Text = Valor;
                    ValorCargo = 0;
                    break;
                case "Asesor":
                    Valor = "$877.900";
                    LabelSueldo.Text = Valor;
                    ValorCargo = 877900;
                    break;
                case "Mercaderista":
                    Valor = "$1'100.900";
                    LabelSueldo.Text = Valor;
                    ValorCargo = 1100900;
                    break;
                case "Supervisor":
                    Valor = "$1'600.900";
                    LabelSueldo.Text = Valor;
                    ValorCargo = 1600900;
                    break;
                case "Coordinador":
                    Valor = "2'100.900";
                    LabelSueldo.Text = Valor;
                    ValorCargo = 2100900;
                    break;

            }
        }

    }
}