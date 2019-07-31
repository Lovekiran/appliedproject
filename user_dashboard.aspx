<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_dashboard.aspx.cs" Inherits="appliedproject.user_dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body {
            background-color: #A3C395;
            background-image:url("bg image.jpg");
            height:100%;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        #h1{
    
color:#d84a91;
font-style:bold;
font-family:cursive;
font-size:60px;
}
        .textbox
{
margin-left:30px;
border-radius:12px;
}
.text{
font-weight:bold;
font-size:20px;
}
.button{
width:90px;
height:40px;
background-color:#d84a91;
color:#ffffff;
border-radius:12px;
font-size:15px;
box-shadow:0px 4px 0px #ffffff;
}
        .auto-style2 {
            width: 105px;
            height: 99px;
            border:3px;
            border-color:black;
        }
        .auto-style5 {
            height: 426px;
            width: 460px;
        }
        .auto-style6 {
            height: 426px;
        }
        </style>
    <style type="text/css">
        .auto-style2 {
            width: 97%;
            height: 513px;
        }
        .auto-style5 {
            width: 460px;
            height: 426px;
        }
        .auto-style6 {
            height: 426px;
        }
        
        .auto-style7 {
            height: 135px;
            width: 152px;
        }
        
        .auto-style8 {
            width: 225px;
            height: 225px;
        }
        
        </style>

</head>
<body>
    <form id="form1" runat="server">
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h1 id="h1">&nbsp;&nbsp;&nbsp;
            <img alt="" class="auto-style7" src="1.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Doctor Connect</h1></div>
        <table class="auto-style2" border="1">
            <tr>
        
                <td class="auto-style5">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="pic" class="auto-style8" src="images.png" /><br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Account" Width="262px" Height="62px" class ="button" OnClick="Button1_Click"/>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Log Out" Width="262px" Height="62px" class ="button" OnClick="Button2_Click"/>
                    <br />
                    <br />
                    <br />
                    </td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" ForeColor="Black" Font-Italic="true" Font-Size="Larger"></asp:Label>


                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>
