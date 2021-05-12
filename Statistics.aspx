<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="MySpace.Statistics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style2.css"/>
    <script src="https://kit.fontawesome.com/d9d377494f.js" crossorigin="anonymous"></script>
    <script src="https://cdn.lordicon.com/libs/frhvbuzj/lord-icon-2.0.2.js"></script>
     <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <title>Dashboard</title>
</head>
<body>
    <style>
#Button1{
	float: left;
    margin-left: 20px;
	margin-top: -25px;
	display: inline-block;
	background: #FF8D02;
	color: white;
	font-size: 15px;
	padding: 15px 40px;
	border-radius: 40px;
	border: 2px solid white;
	transition: all 0.4s ease 0s;
	text-decoration: none;
	cursor: pointer;
}
#Button1:hover {
	color: #FF8D02;
	background-color: white;
	transition: all 0.4s ease 0s;
	border: 2px solid #FF8D02;
}
    </style>
    <form id="form1" runat="server">
       <nav id="navbar">
        <header><img src="./image/cloud2.png" alt=""></header>
        <ul>
          <li>
			    <li><asp:HyperLink class="nav-link" ID="HyperLink3" runat="server" NavigateUrl="~/Dashboard.aspx"><i class="fas fa-cloud"></i>My Drive</asp:HyperLink></li>
          <li>
            <a class="nav-link" href="#"><i class="fas fa-share-square"></i>Shared Files</a>
          </li>
          <li>
            <a class="nav-link" href="#"><i class="fas fa-folder"></i>File Requests</a>
          </li>
          <li><a class="nav-link" href="#"><i class="fas fa-star"></i>Starred</a></li>
          <li><a class="nav-link" href="#"><i class="fas fa-trash"></i>Trash</a></li>
          <li>
            <a class="nav-link" href="#"><i class="fas fa-chart-pie"></i>Statistics</a>
          </li>
          <li><a class="nav-link" href="#"><i class="fas fa-tasks"></i>Task</a></li>
          <li>
         <br/> <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click1" />
          </li>
			
        </ul>
      </nav>
      <main>

        <ul class="profile-wrapper">
          <li>
            <!-- user profile -->
            <div class="profile">
              <img src="./image/Ali.jpg" />
              <a href="http://swimbi.com" class="name">
				  <asp:Label ID="Label2" runat="server" Text=""></asp:Label></a>
              
              <!-- more menu -->
              <ul class="menu">
                <li><a href="#">Edit</a></li>
                <li><a href="#">Change Password</a></li>
                <li><a href="#">Log out</a></li>
              </ul>
            </div>
          </li>
        </ul>
        <div class="Header">
        <div class="wrap">
          <div class="search">
             <input type="text" class="searchTerm" placeholder="Search">
             <button type="submit" class="searchButton">
               <i class="fa fa-search"></i>
            </button>
          </div>
       </div>
       <div class="Elem1">
 <div class="Doc1">
      <img src="./image/file.png" alt="">
      <h1><asp:Label ID="Label1" runat="server" Text="00"></asp:Label></h1>
  </div>
   <div style="background-color: #ED7C52;" class="Doc1">        
    <img src="./image/Camera.png" alt="">  
    <h1>
		<asp:Label ID="Label3" runat="server" Text="00"></asp:Label></h1>  
</div> 
   <div style="background-color: #E84341;" class="Doc1">                        
     <img src="./image/video.png" alt="">
     <h1><asp:Label ID="Label4" runat="server" Text="00"></asp:Label></h1>     
</div>
    </div>
      </main>
      <script src="https://unpkg.com/scrollreveal"></script>
      <script src="apps.js"></script>
    </form>
</body>
</html>