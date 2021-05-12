<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MySpace.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css"/>
    <script src="https://cdn.lordicon.com/libs/frhvbuzj/lord-icon-2.0.2.js"></script>
    <script src="https://kit.fontawesome.com/d9d377494f.js" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <title></title>
</head>
<body>
    <script>
        function altreme() {
			Swal.fire({
				icon: 'error',
				title: 'Oops...',
				text: 'Sorry, The Password or Username is Wrong!',
            })
        }

		function altreyou() {
			Swal.fire({
				position: 'center',
				icon: 'success',
				title: 'Your work has been saved',
				showConfirmButton: false,
				timer: 4500
			})
		}
	</script>
    <style>
                    .Cards {
	margin-left: 100px;
	padding-top: 80px;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	grid-gap: 4rem;
}

.Service {
	height: 700px;
	padding-top: 20px;
}

	.Service h1 {
		text-align: center;
		color: #4361C4;
		font-family: monospace;
		font-size: 35px;
	}

.Card {
	background-color: #E9F4FF;
	width: 200px;
	height: 320px;
	padding: 30px;
	text-align: center;
	border-radius: 20px;
	box-shadow: 1px 1px 20px rgba(0, 0, 0, 0.171);
	transition: transform .3s;
}

	.Card:hover {
		transform: scale(1.03);
	}

	.Card p {
		color: #4361c4a9;
		font-family: 'Montserrat', sans-serif;
	}

	.Card button {
		display: inline-block;
		background: #FF8D02;
		color: white;
		font-size: 15px;
		padding: 10px 20px;
		margin-top: 7px;
		border-radius: 40px;
		border: none;
		transition: all 0.4s ease 0s;
		text-decoration: none;
		cursor: pointer;
	}

		.Card button:hover {
			color: #FF8D02;
			background-color: white;
			transition: all 0.4s ease 0s;
			border: 2px solid #FF8D02;
		}
    </style>
    <form id="form1" runat="server">
         <div class="navbar">
      <img src="./image/cloud.png">
      <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">Contact Us</a></li>
      </ul>
    </div>

    <section class="Home">
      <div class="Left">
       <h1>Secure cloud storge 
        <br/>for your files</h1>
        <p>All of your photos,videos,music and documents every<br/> where with you</p>
      <button>JOIN US</button>
    </div>
     
    <div class="Right">
        <div class="elem">
           <h1>Welcome back</h1>
           <div class="col">
			   <asp:TextBox class="textbox" type="text" placeholder="Username" ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <span class="focus-border"></span>
          </div>
          <br>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please entre Usernam" Font-Size="Small" ForeColor="#FF8D02"></asp:RequiredFieldValidator>
			<br>
          <div class="col">
           <asp:TextBox class="textbox" type="password" placeholder="Password" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <span class="focus-border"></span>
          </div>
             <br/>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please entre Password" Font-Bold="False" Font-Size="Small" ForeColor="#FF8D02"></asp:RequiredFieldValidator>
			<asp:Button CssClass="button" ID="Button1" runat="server" Text="Button" Width="275px" OnClick="Button1_Click" />
             <p>Don’t have an account? <asp:HyperLink CssClass="link" ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Clike her</asp:HyperLink></p>
			
        </div>
     </div>
    </section>
    <section class="About">
     <div class="Left1">
     <img src="./image/Vectore.png">
     </div>
     <div class="Right2">
      
      <h1>What is MySpace?</h1>
      <p>Working with coworkers, customers and partners has never been
        simpler. With MySpace, not only can you securely share files,
        you can also create, edit and review documents with others
        in real time from anywhere, on any device. From simplifying the way
        you manage your content to empowering global teams, Box helps
       you work smarter than ever before.</p>
       <asp:Button CssClass="button1" ID="Button2" runat="server" Text="MORE ABOUT US" Width="208px" Height="55px" />
     </div>
    </section>
         <section class="Service">
       <h1>Service</h1>
      <div class="Cards">
         <div class="Card">
             <div class="info">
              <lord-icon
              src="https://cdn.lordicon.com/nocovwne.json"
              trigger="hover"
              colors="primary:#FF8D02,secondary:#FF8D02"
              style="width:150px;height:150px; margin-top: -15px;">
          </lord-icon>
              <p>
                We offer you a service to store
                your personal fills by providing
                enough storage space safely 
                 away from intrusion
              </p>
              <button>Read more</button>
             </div>
         </div>
         <div class="Card">
          <div class="info">
           <lord-icon
           src="https://cdn.lordicon.com/fgkmrslx.json"
           trigger="hover"
           colors="primary:#FF8D02,secondary:#FF8D02"
           style="width:150px;height:150px; margin-top: -15px;">
       </lord-icon>
           <p>
             We offer you a service to store
             your personal image by providing
             enough storage space safely 
              away from intrusion
           </p>
           <button>Read more</button>
          </div>
      </div>
      <div class="Card">
        <div class="info">
         <lord-icon
         src="https://cdn.lordicon.com/tdxypxgp.json"
         trigger="hover"
         colors="primary:#FF8D02,secondary:#FF8D02"
         style="width:150px;height:150px; margin-top: -15px;">
     </lord-icon>
         <p>
           We offer you a service to store
           your personal video by providing
           enough storage space safely 
            away from intrusion
         </p>
         <button>Read more</button>
        </div>
    </div>
      </div>
    </section>

         <footer>
      <div class="Media">
        <ul>
          <li><a href="https://web.facebook.com/abdlali.badou" target="_blank"><i class="fab fa-facebook-square"></i></a></li>
          <li><a href="https://twitter.com/AbdlaaliE" target="_blank"><i class="fab fa-twitter"></i></a></li>
          <li><a href="https://www.instagram.com/ali.zin99/" target="_blank"><i class="fab fa-instagram"></i></a></li>
          <li><a href="#"><i class="fab fa-whatsapp"></i></a></li>
          <li><a href="https://github.com/Ali-Zine" target="_blank"><i class="fab fa-github"></i></a></li>
        </ul>
      </div>
      <h2>Copyright © 2021 Ali Zine</h2>
    </footer>
    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="apps.js"></script>
    </form>
</body>
</html>
