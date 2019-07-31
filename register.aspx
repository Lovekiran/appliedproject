<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="appliedproject.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       body
{
 background-image:url("bg image.jpg");
            height:100%;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
}

        #h1{
    
color:#d84a91;
font-style:bold;
font-family:Comic Sans MS;
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
        .auto-style1 {
            height: 751px;
        }
        .auto-style2 {
            width: 105px;
            height: 99px;
        }
        .auto-style3 {
            font-size: larger;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="d1" class="auto-style1">
            <h1 id="h1">&nbsp; <span class="auto-style3">Registration</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img alt="logo" class="auto-style2" src="1.png" /></h1>
          <label id="l1" class="text">&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp; First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="158px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br/>&nbsp;<br/>
          <label id="l2" class="text">&nbsp;&nbsp; Last Name 
          <label id="l8" class="text">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="154px"></asp:TextBox>
          <label id="l11" class="text">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </label>
            </label> </label><br/>
            <label id="l3" class="text">
            <br />
            &nbsp;&nbsp;
            Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <label id="l9" class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </label> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Must contain @gmail or hotmail etc.com" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
            </label>
            <br/><br/>
          <label id="l4" class="text">&nbsp;&nbsp; Password&nbsp;&nbsp; 
          <label id="l10" class="text">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Width="152px"></asp:TextBox>
            </label> </label>
            <label id="l5" class="text">
          <label id="l12" class="text">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </label>
            <br />
            <br />
            &nbsp;&nbsp; Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="103px">
                <asp:ListItem Selected="True">Select Month</asp:ListItem>
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" InitialValue="Select Month" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="92px">
                <asp:ListItem Selected="True">Select Day</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" InitialValue="Select Day" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="114px">
                <asp:ListItem Selected="True">Select Year</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select proper field" InitialValue="Select Year" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <br />
            </label>
             <label id="l6" class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
&nbsp; Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem Selected="True">Choose One</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label id="l7" class="text">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Please select Gender" InitialValue="Choose One" ForeColor="Red"></asp:RequiredFieldValidator>
            </label>
            <br />
            &nbsp;<br />
            </label>
            <label id="l7" class="text">&nbsp; Expertise&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList5" runat="server">
                <asp:ListItem Selected="True">Choose One</asp:ListItem>
                <asp:ListItem>Cardiologist</asp:ListItem>
                <asp:ListItem>Dermatologist</asp:ListItem>
                <asp:ListItem>Family Doctor</asp:ListItem>
                <asp:ListItem>Medical examiner</asp:ListItem>
                <asp:ListItem>Neurologist</asp:ListItem>
                <asp:ListItem>Occupational medicine</asp:ListItem>
                <asp:ListItem>Orthopedic surgeon</asp:ListItem>
                <asp:ListItem>Otolaryngologist</asp:ListItem>
                <asp:ListItem>Pathologist</asp:ListItem>
                <asp:ListItem>Pediatrician</asp:ListItem>
                <asp:ListItem>Plastic surgeon</asp:ListItem>
                <asp:ListItem>Psychiatrist</asp:ListItem>
                <asp:ListItem>Pulmonologist</asp:ListItem>
                <asp:ListItem>Radiologist</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label id="l13" class="text"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList5" ErrorMessage="Please select Expertise" InitialValue="Choose One" ForeColor="Red"></asp:RequiredFieldValidator>
            </label>
            &nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            <asp:Button ID="Button1" runat="server" Text="Register" class="button" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" onclick="location.href='login.aspx'" value="Sign in" id="b2" class="button"/>
            <br />
            &nbsp;&nbsp; </label>
          &nbsp;</div>
    </form>
</body>
</html>
