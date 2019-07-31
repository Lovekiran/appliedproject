<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="appliedproject.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style>

    body
{
background-color:#A3C395;
background-image:url("bg image.jpg");
height:100%;
background-size: cover;
background-position: center;
background-repeat: no-repeat;
}
#d1
{
   
background-color:#87CEFA; 
width:500px;
height:370px;
text-align:center;
margin-top:115px;
margin-left:430px;
padding-top:20px;
}
#h1{
    
color:#d84a91;
font-style:bold;
font-family:Comic Sans MS;
font-size:45px;
}

#b2
{
margin-left:30px;
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
.textbox
{
margin-left:30px;
border-radius:12px;
}
.text{
font-weight:bold;
font-size:20px;
}

          .auto-style1 {
         width: 84px;
         height: 75px;
     }

    </style>

</head>
<body>
     <form id="form1" runat="server">
        <div id="d1">
          <h1 id="h1">
              <img alt="logo" class="auto-style1" src="1.png" />&nbsp;&nbsp; Doctor Connect</h1>
            <label id="l1" class="text">&nbsp;<label id="l3" class="text">Email</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;<br />
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter your email" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
            <br />
            <label id="l2" class="text">
            <br />
            &nbsp;&nbsp;
            Password&nbsp;&nbsp; <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
            &nbsp;

            <br />

            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" onchange="document.getElementById('TextBox2').type = this.checked ? 'text' : 'password'"/>
            Show password<br />
            </label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your password" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br/>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" CssClass="button" />
&nbsp;<input type="button" onclick="location.href='register.aspx'" value="Sign Up" id="b2" class="button"/>
       </div>
    </form>
</body>
</html>


