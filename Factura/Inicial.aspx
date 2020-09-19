<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicial.aspx.cs" Inherits="Factura.Inicial" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <title>Calculo de Nomina</title>
    </head>
    <body>
        
       <div class="container-sm border">
           <h1>Ingreso de datos</h1>
            <form action="Servlet1" id="form1" runat="server">
                <label for="uname">Nombres:</label>
                <asp:TextBox type="text" class="form-control" id="Nombre" runat="server" placeholder="Ingrese sus nombre"></asp:TextBox>   
                <label for="uname">Apellido:</label>
                <asp:TextBox type="text" class="form-control" id="Apellido" runat="server" placeholder="Ingrese sus apellidos" > </asp:TextBox>  
                <label for="uname">Cargo:</label>
                <asp:TextBox type="text" class="form-control" id="Cargo" runat="server" placeholder="Ingrese su cargo" >   </asp:TextBox>
                <label for="uname">Sueldo:</label>
                <asp:TextBox type="number" class="form-control" id="sueldo" runat="server" placeholder="Ingrese su sueldo" >   </asp:TextBox>
                <label for="uname">Domingos laborados:</label>
                <asp:TextBox type="number" class="form-control" id="domingos" runat="server" placeholder="Digite la cantidad de domingos laborados">  </asp:TextBox> 
                <label for="uname">Fallas injustificadas:</label>
                <asp:TextBox type="number" class="form-control" id="fallas" runat="server" placeholder="Digite cuantas fallas injustificadas tiene"> </asp:TextBox>  
                <label for="uname">Horas extras:</label>
                <asp:TextBox type="number" class="form-control" id="horasext" runat="server" placeholder="Digite cuantas horas extras laboro"></asp:TextBox>
                <br><asp:Button ID="btnCalcular" runat="server" Text="Enviar Datos" class ="btn btn-success" OnClick="Button1_Click"/>
            </form>
       </div>
        
    </body>
</html>