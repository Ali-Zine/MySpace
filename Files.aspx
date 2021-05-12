<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Files.aspx.cs" Inherits="MySpace.Files" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style2.css"/>
    <script src="https://kit.fontawesome.com/d9d377494f.js" crossorigin="anonymous"></script>
    <title>Dashboard</title>
	<style type="text/css">
		.auto-style1 {
			width: 921px;
		}
		.auto-style2 {
			margin-left: 140px;
			margin-top: 150px;
		}
        #Button2{
	float: left;
    margin-left: 20px;
	margin-top: -10px;
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
#Button2:hover {
	color: #FF8D02;
	background-color: white;
	transition: all 0.4s ease 0s;
	border: 2px solid #FF8D02;
}
	</style>
</head>
<body>
    <form id="form1" runat="server">
       <nav id="navbar">
        <header><img src="./image/cloud2.png" alt=""></header>
        <ul>
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
          <li><asp:Button ID="Button2" runat="server" Text="Logout" OnClick="Button2_Click2" /></li>
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
			<asp:Button CssClass ="btn" ID="Button1" runat="server" Text="Uplaod Fill" OnClick="Button1_Click1" />
       <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Small" ForeColor="#E17D08" />
          </div>
        <div class="wrap">
          <div class="search">
             <input type="text" class="searchTerm" placeholder="Search">
             <button type="submit" class="searchButton">
               <i class="fa fa-search"></i>
            </button>
          </div>
           
       </div>
		  <asp:DataList CssClass ="auto-style2" ID="DataList1" runat="server">
               
                   <a href="Files/<%#Eval("Files")%>" target="_blank">File</a>   
          
		  </asp:DataList>
      </main>

      <script src="https://unpkg.com/scrollreveal"></script>
      <script src="apps.js"></script>
    </form>
</body>
</html>
