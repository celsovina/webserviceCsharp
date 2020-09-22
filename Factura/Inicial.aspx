<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicial.aspx.cs" Inherits="Factura.Inicial" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <title>Calculo de Nomina</title>
    </head>
    <body>
        
       <div class="container p-3 my-3 bg-dark text-white">
           <h1>Ingreso de datos</h1>
            <form id="form1" runat="server">
                <label for="uname">Identificacion:</label><asp:TextBox type="text" class="form-control" id="txtIdent" runat="server" placeholder="Ingrese sus nombre" Width="215px"></asp:TextBox>
                <div class="left">
                    <label for="uname">Nombres:</label><br />
                    <asp:TextBox type="text" class="form-control" id="Nombre" runat="server" placeholder="Ingrese sus nombre" Width="300px"></asp:TextBox>
                    <Label for="uname">Cargo:</Label><br />
                    <asp:DropDownList ID="DropDownListCargo" runat="server" AutoPostBack="True" Width="300px" class="custom-select" OnSelectedIndexChanged="DropDownListCargo_SelectedIndexChanged">
                        <asp:ListItem>Asesor</asp:ListItem>
                        <asp:ListItem>Mercaderista</asp:ListItem>
                        <asp:ListItem>Supervisor</asp:ListItem>
                        <asp:ListItem>Coordinador</asp:ListItem>
                    </asp:DropDownList><br />
                    <label for="uname">Domingos laborados:</label><br />
                    <asp:DropDownList ID="DropDownListDom" runat="server" Width="300px" class="custom-select">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList><br />
                    <label for="uname">Horas extras:</label>
                    <asp:TextBox type="number" class="form-control" id="horasext" runat="server" placeholder="Digite cuantas horas extras laboro" Width="300px"></asp:TextBox><br />
                    <asp:Button ID="btnCalcular" runat="server" Text="Enviar Datos" class ="btn btn-success" OnClick="Button1_Click"/>
                </div>
                <div class="right">
                    <label for="uname">Apellido:</label>
                    <asp:TextBox type="text" class="form-control" id="Apellido" runat="server" placeholder="Ingrese sus apellidos" Width="300px" ></asp:TextBox>  

                    <label for="uname">Sueldo:</label><br />
                    <asp:Label ID="LabelSueldo" runat="server"></asp:Label>
                    <br />
                    <label for="uname">Fallas injustificadas:</label>
                    
                    <asp:TextBox type="number" class="form-control" id="fallas" runat="server" placeholder="Digite cuantas fallas injustificadas tiene" Width="300px"></asp:TextBox>  
                </div><br />
                </form>
       </div>
        
    </body>
</html>
<style>
    .left {
        float:left;
        height: 300px;
        width: 310px;
    }
    .right {
        float:right;
        height: 300px;
        width: 310px;
    }
    #form1 {
        height: 446px;
        width: 650px;
        float:initial;
        align-content:center;
        align-items:center;
    }
    body {
        align-content:center;
        align-items:center;
    }
</style>