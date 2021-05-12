<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MySpace.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style1.css"/>
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
         <section class="Login">
        <div class="Right3">
            <div class="elem">
               <h1>Registration for form</h1>
               <div class="col">
                <asp:TextBox class="textbox" type="text" placeholder="Username" ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <span class="focus-border"></span>
              </div>
              <br>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please enter Username" Font-Bold="False" Font-Size="Small" ForeColor="#FF8D02"></asp:RequiredFieldValidator>
				<br>
              <div class="col">
                 <asp:TextBox class="textbox" type="text" placeholder="Email Adresse" ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <span class="focus-border"></span>
              </div>
              <br>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please enter Email" Font-Size="Small" ForeColor="#FF8D02"></asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="The email is not correct" Font-Size="Small" ForeColor="#FF8D02" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
				<br>
              <div class="col">
                 <asp:TextBox class="textbox" type="text" placeholder="Country" ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                <span class="focus-border"></span>
              </div>
              <br>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please enter Country" Font-Size="Small" ForeColor="#FF8D03"></asp:RequiredFieldValidator>
				<br>
              <div class="col">
                <asp:TextBox class="textbox" type="text" placeholder="Phone" ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Phone"></asp:TextBox>
                <span class="focus-border"></span>
              </div>
              <br>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Please enter Phone" Font-Size="Small" ForeColor="#FF8D03"></asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="mobile number is not correct" Font-Size="Small" ForeColor="#FF8D03" ValidationExpression="(\+212|0)([ \-_/]*)(\d[ \-_/]*){9}"></asp:RegularExpressionValidator>
				<br>
              <div class="col">
                <asp:TextBox class="textbox" type="text" placeholder="Password" ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" TextMode="Password"></asp:TextBox>
                <span class="focus-border"></span>
              </div>
                 <br/>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Please enter Password" Font-Size="Small" ForeColor="#FF8D02"></asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Password is not correct" Font-Size="Small" ForeColor="#FF8D02" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,15})$"></asp:RegularExpressionValidator>
				<asp:Button CssClass="button" ID="Button1" runat="server" Text="Register" Width="275px" OnClick="Button1_Click" />
                 <p>Already have an account?<asp:HyperLink CssClass="link" ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Sing in</asp:HyperLink> </p>
            </div>
         </div>
</section>
<script src="https://unpkg.com/scrollreveal"></script>
<script src="apps.js"></script>
    </form>
</body>
</html>
