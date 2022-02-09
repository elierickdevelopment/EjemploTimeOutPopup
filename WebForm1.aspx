<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EjemploTimeOutPopup.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejemplo</title>
    
    <script type="text/javascript">
    var totalTiempo=10;
    //var totalTiempo=480;
    
    function updateReloj()
    {
       document.getElementById('CuentaAtras').innerHTML = totalTiempo;
       
        if(totalTiempo==0)
        {   
            //popupmensaje1.Show();
            alert('Sesión caducada;');

        }else{
            totalTiempo -= 1;
            //popupmensaje1.Hide();
            setTimeout("updateReloj()",1000);
        }
    }
 
    window.onload=updateReloj;


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>        <h3 id='CuentaAtras' style="color: black">
    </h3>
            <asp:Button ID="Button1" runat="server" Text="Prueba" />
        </div>
    </form>
</body>
</html>
