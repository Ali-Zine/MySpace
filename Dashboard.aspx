<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="MySpace.Dashboard" %>

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
			  <a class="nav-link" href="#"><i class="fas fa-cloud"></i>My Drive</a></li>
          <li>
            <a class="nav-link" href="#"><i class="fas fa-share-square"></i>Shared Files</a>
          </li>
          <li>
            <a class="nav-link" href="#"><i class="fas fa-folder"></i>File Requests</a>
          </li>
          <li><a class="nav-link" href="#"><i class="fas fa-star"></i>Starred</a></li>
          <li><a class="nav-link" href="#"><i class="fas fa-trash"></i>Trash</a></li>
          <li>
			  <asp:HyperLink class="nav-link" ID="HyperLink5" runat="server" NavigateUrl="~/Statistics.aspx"> <i class="fas fa-chart-pie"></i>Statistics</asp:HyperLink>
          </li>
          <li><a class="nav-link" href="#"><i class="fas fa-tasks"></i>Task</a></li>
          <li><!--<asp:HyperLink class="nav-link" ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx" OnDataBinding="HyperLink2_DataBinding"><i class="fas fa-sign-out-alt"></i>Logout</asp:HyperLink>-->
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
          <h2>Dashboard</h2>
          <div class="Banner">
             <div class="Left">
               <h2 class="Back">Welcome Back <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h2>
               <h1>Get additional 500 GB</h1>
               <button id="#btn">Upgrade</button>
             </div>
             <div class="Right">
                <img src="./image/Vectore.png" alt="">
             </div>
          </div>
        </div>
        <div class="wrap">
          <div class="search">
             <input type="text" class="searchTerm" placeholder="Search">
             <button type="submit" class="searchButton">
               <i class="fa fa-search"></i>
            </button>
          </div>
       </div>
       <h2>Folders</h2>
       <div class="Elem">

    <asp:HyperLink class="douc" ID="HyperLink4" runat="server" NavigateUrl="~/Files.aspx"><div class="Doc">
		
          <lord-icon
      src="https://cdn.lordicon.com/nocovwne.json"
      trigger="hover"
      colors="primary:#FFFFFF,secondary:#FFFFFF"
      style="width:150px;height:150px; margin-top: -15px;">
  </lord-icon>
         </div></asp:HyperLink> 

   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/imge.aspx"><div style="background-color: #ED7C52;" class="Doc">        
                <lord-icon
    src="https://cdn.lordicon.com/fgkmrslx.json"
    trigger="hover"
    colors="primary:#FFFFFF,secondary:#FFFFFF"
    style="width:150px;height:150px; margin-top: -15px;">
</lord-icon> 
    </div></asp:HyperLink>

   <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Video.aspx" OnDataBinding="HyperLink3_DataBinding"><div style="background-color: #E84341;" class="Doc">              
                     <lord-icon
    src="https://cdn.lordicon.com/tdxypxgp.json"
    trigger="hover"
    colors="primary:#FFFFFF,secondary:#FFFFFF"
    style="width:150px;height:150px; margin-top: -15px;">
</lord-icon>
     </div></asp:HyperLink> 
    </div>
      </main>
      <script src="https://unpkg.com/scrollreveal"></script>
      <script src="apps.js"></script>
    </form>
</body>
</html>
