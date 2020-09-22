using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Factura
{
    /// <summary>
    /// Descripción breve de WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        int VDia = 0, VDom = 0, VHOrd, VHExt = 0, VHDom;
        int TotDed = 0, TotDev = 0, SalTot, Salud = 0, Pension = 0, Salario = 0;
        double Conv;
        int Op;
        int DomTr = 7, TotDom = 0, HrExt, TotHrExt = 0;
        int DiasInj, DescDias = 0, DiasTr = 30;
        int SalMin = 822116;
        string Empleado, Cargo = "", SalarioBas = "";
        int SubTr = 0;
        int Desc = 0;

        [WebMethod]
        public string CalculoSueldo(int sueldo, int domingos, int fallas, int horasext)
        {
            VDia = sueldo / 30;
            VHOrd = VDia / 8;
            Conv = VHOrd * 1.25; VHExt = (int)Conv;
            Conv = VHOrd * 1.75; VHDom = (int)Conv;
            VDom = VHDom * 8;
            Conv = sueldo * 0.04;
            Salud = (int)Conv; //Salud
            Pension = Salud; // Pension
            TotDev = sueldo; //Devengados
            TotDed = Salud + Pension; // Deducciones

            if (fallas != 0)
            {
                DescDias = fallas * VDia;
                TotDev = TotDev - DescDias;
            }

            TotHrExt = horasext * VHExt;
            TotDom = domingos * VDom; // Domingos Trabajados

            TotDev = TotDev + TotHrExt; // Horas Extras
            TotDev = TotDev + TotDom; //Devengados
            SalTot = TotDev - TotDed;

            string Datos;
            Datos = SalTot.ToString();
            return Datos;
        }
        [WebMethod]
        public String Persona(string nombre, string apellidos)
        {
            return nombre + " " + apellidos;
        }

        [WebMethod]
        public string cargo(string Puesto)
        {
            return Puesto;

        }
    }
}
