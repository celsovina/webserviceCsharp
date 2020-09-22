<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicial.aspx.cs" Inherits="Factura.Inicial" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <title>Calculo de Nomina</title>
    </head>
    <body>
        <div>
       <div class="container">
           <h1>Ingreso de datos</h1>
            <form id="form1" runat="server">
                <label for="uname">Identificacion:</label><asp:TextBox type="text" class="form-control" id="txtIdent" runat="server" placeholder="Ingrese su documento" Width="215px" TabIndex="1"></asp:TextBox>
                <div class="left">
                    <label for="uname">Nombres:</label><br />
                    <asp:TextBox type="text" class="form-control" id="Nombre" runat="server" placeholder="Ingrese sus nombres" Width="300px" TabIndex="2"></asp:TextBox>
                    <Label for="uname">Cargo:</Label><br />
                    <asp:DropDownList ID="DropDownListCargo" runat="server" AutoPostBack="True" Width="300px" class="custom-select" OnSelectedIndexChanged="DropDownListCargo_SelectedIndexChanged"  TabIndex="4">
                        <asp:ListItem>Seleccione</asp:ListItem>
                        <asp:ListItem>Asesor</asp:ListItem>
                        <asp:ListItem>Mercaderista</asp:ListItem>
                        <asp:ListItem>Supervisor</asp:ListItem>
                        <asp:ListItem>Coordinador</asp:ListItem>
                    </asp:DropDownList><br />
                    <label for="uname">Domingos laborados:</label><br />
                    <asp:DropDownList ID="DropDownListDom" runat="server" Width="300px" class="custom-select" TabIndex="5">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList><br />
                    <label for="uname">Horas extras:</label>
                    <asp:TextBox type="number" class="form-control" id="horasext" runat="server" placeholder="Digite cuantas horas extras laboro" Width="300px" TabIndex="6"></asp:TextBox>
                    <br />
                    <br />
                &nbsp;</div>
                <div class="right">
                    <label for="uname">Apellido:</label>
                    <asp:TextBox type="text" class="form-control" id="Apellido" runat="server" placeholder="Ingrese sus apellidos" Width="300px" TabIndex="3" ></asp:TextBox>  

                    <label for="uname">Sueldo:</label>
                    <asp:TextBox type="number" class="form-control" id="TextBoxSueldo" runat="server" placeholder="Este es su sueldo" Width="300px" BackColor="White" Enabled="False" TabIndex="7" required></asp:TextBox>

                    <label for="uname">Fallas injustificadas:</label>
                    <asp:TextBox type="number" class="form-control" id="fallas" runat="server" placeholder="Digite cuantas fallas injustificadas tiene" Width="300px" TabIndex="8"></asp:TextBox>  
                </div><br />
                <div class="centro">
                    <asp:Button ID="btnCalcular" runat="server" Text="Enviar Datos" class ="btn btn-info" OnClick="Button1_Click" TabIndex="9"/>
                </div>
                </form>
       </div>
        <div class="container2">
            <div class="logo">
                <img src="logo.png" width="100px"/>
            </div>
            <div class="info">
                <h2>LA EMPRESA DE SOFTWARE</h2>
                <p>NIT: 12345678-8</p>
            </div>
            <div class="cuerpo">
                <div class="detalle">
                    <label for="id">Documento:</label>
                    <asp:Label CssClass="label" Id="id" Text="123456789" runat="server"></asp:Label>
                    <br />
                    <label for="nomb">Nombre:</label>
                    <asp:Label CssClass="label" Id="nomb" Text="123456789" runat="server"></asp:Label>
                    <br />
                    <label for="carg">Cargo:</label>
                    <asp:Label CssClass="label" Id="carg" Text="123456789" runat="server"></asp:Label>
                    <label for="sueldo">Sueldo:</label>
                    <asp:Label CssClass="label" Id="sueldo" Text="123456789" runat="server"></asp:Label>
                </div>
                <div class="detalle2">
                    <label for="dom">Domingos:</label>
                    <label for="he">Horas extras:</label>
                    <label for="st">Sub. transporte:</label>
                    <br />
                    
                    <asp:Label CssClass="label2" Id="dom" Text="123456789" runat="server"></asp:Label>
                    <asp:Label CssClass="label2" Id="he" Text="123456789" runat="server"></asp:Label>
                    <asp:Label CssClass="label2" Id="st" Text="123456789" runat="server"></asp:Label>
                </div>
                <div class="detalle3">
                    <label for="f">Fallas:</label>
                    <label for="p">Pensión:</label>
                    <label for="s">Salud:</label>
                    <br />

                    
                    <asp:Label CssClass="label2" Id="f" Text="123456789" runat="server"></asp:Label>
                    <asp:Label CssClass="label2" Id="p" Text="123456789" runat="server"></asp:Label>
                    <asp:Label CssClass="label2" Id="s" Text="123456789" runat="server"></asp:Label>
                </div>
                <div class="detallet">
                    <label for="qt">Quincena total:</label>
                    <asp:Label CssClass="labelt" Id="qt" Text="123456789" runat="server"></asp:Label>
                </div>
            </div>
            <div class="pie">
                <p>Desarrollado por Celso Viña y Vincent Cristancho</p>
                <p>Todos los derechos reservados 2020&copy;</p>
            </div>
        </div>
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
    .container{
        align-content:center;
        align-items:center;
        float:left;
        margin-left: 10%;
        width: 670px;
        margin-top: 7%;
        border-radius:15px;
        background: #999;
        border: 3px solid #888;
        color: white;
        box-shadow: 0 10px 15px 5px rgba(0,0,0,0.4);
    }
    .container h1{
        text-align: center;
    }
    .centro{
        margin-left: 42%;
    }

        .container2{
        align-content:center;
        align-items:center;
        float:left;
        margin-left:10%;
        width: 670px;
        margin-top: 5%;
        border-radius:15px;
        background: #999;
        border: 3px solid #888;
        color: white;
        box-shadow: 0 10px 15px 5px rgba(0,0,0,0.4);
    }

    body{
        background: #ccc;
    }
    #btnCalcular{
        border: 2px solid #0072ff;
        box-shadow: 0 5px 1px 2px rgba(0,0,0,0.4);
    }
        #btnCalcular:hover{
        border: 2px solid #285be9;
        box-shadow: 0 2px 1px 2px rgba(0,0,0,0.4);
    }
        .logo{
/*            border: solid red;*/
            width: 30%;
            height: 100px;
            float: left;
        }
        .logo img{
            margin-left:25%;
        }
        .info{
/*            border: solid black;*/
            width: 70%;
            float: left;
            height: 100px;
            text-align: center;
            margin-top: 10px
        }
        .cuerpo{
            border-top: solid #888;
            width:100%;
            float: left;
            height: 400px;
        }
        .pie{
            border-top: solid #888;
            width:100%;
            float: left;
            height: 100px;
        }
        .pie p {
            margin-top: 40px;
            margin-bottom: -40px;
            text-align: center;
        }
        .detalle{
            margin-top:10px;
            margin-bottom:10px;
/*            border: solid pink;*/
        }
        .detalle label{
            margin-top: 10px;
            margin-left: 20px;
        }
        .label{
            margin-top: 10px;
            margin-left: 20px;
        }

        .detalle2{
            border-top: solid #888;
            margin-top:30px;
            margin-bottom:30px;
/*            border: solid pink;*/
        }
        .detalle2 label{
            margin-top: 10px;
            margin-left: 14%;
        }
        .label2{
            margin-top: 10px;
            margin-left: 15%;
        }

                .detalle3{
            border-top: solid #888;
            margin-top:20px;
            margin-bottom:20px;
/*            border: solid pink;*/
        }
        .detalle3 label{
            margin-top: 10px;
            margin-left: 19%;
        }

        .detallet{
            margin-left:50%;
            margin-top:30px;
        }
        .labelt{
            margin-left:20px;
        }
</style>