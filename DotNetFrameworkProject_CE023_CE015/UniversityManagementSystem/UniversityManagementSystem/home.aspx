<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="UniversityManagementSystem.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Home</title>
   <style type="text/css">
	body	
	{
		margin:0 auto;
		/*background: url("images/background.jpg") no-repeat;*/
		background-size: auto;	
		font-family: 'Open Sans', sans-serif;
	}
    .name_area
	{				
		height: 15%;
		width: 100%;
		position: absolute;				
		background-color:#f1f1f1;
		opacity:.5;
		border-radius: 4px;
        left: 2px;
           top: 8px;
       }
	.form_area
	{
		top:15%;				
		height: 6.3%;
		width: 100%;
		position: absolute;				
		background-color:#f1f1f1;
		opacity:.9;
		border-radius: 4px;
           left: 3px;
       }
	.form_inner_area
	{
        left:11%;
		top:159%;
		height: 20%;
		width: 100%;
		position: absolute;
           margin-top: 0px;
       }
	.button 
	{
		border-style: none;
           border-color: inherit;
           border-width: medium;
           width: 19.6%;
		   background-color: #2461BF;
		   color: white;
		   padding: 14px 20px;
		margin: 3px 0 3px 34;
		   border-radius: 4px;
		   cursor: pointer;
		
	}
	.button:hover 
	{
		background-color: #45a049;
	}
    .mySlides{
        top:24%;
        height:784px;

    }
	
    .copyright {				
		height: 6%;
		width: 20%;
		position: fixed;				
		background-color:#f1f1f1;
		opacity:.5;
		border-radius: 4px;
		bottom: 1%;
		right: .5%;
		text-align: center;
	}

	form {
                width:1415px;
                margin:50px auto;
           height: 757px;
       }
			
		/* Reset top and bottom margins from certain elements */

		.login
		{
            height:57%;
			position:absolute;
			right:26%;
			top:26%;
			background-color:#f1f1f1;
			opacity: 0.9;
           width: 597px;
       }
		.login-header,
		.login p {
		  margin-top: 0;
		  margin-bottom: 0;
		}

		/* The triangle form is achieved by a CSS hack */
		.login-triangle {
		  width: 0;
		  margin-right: auto;
		  margin-left: auto;
		  border: 12px solid transparent;
		  border-bottom-color: #28d;
		}

		.login-header {
		  background: #28d;
		  padding: 20px;
		  font-size: 1.4em;
		  font-weight: normal;
		  text-align: center;
		  text-transform: uppercase;
		  color: #fff;
		}

		.login-container {
		  background: #ebebeb;
		  padding: 12px;
		}

		/* Every row inside .login-container is defined with p tags */
		.login p {
		  padding: 12px;
		}

		.login input {
		  box-sizing: border-box;
		  display: block;
		  width: 100%;
		  border-width: 1px;
		  border-style: solid;
		  padding: 16px;
		  outline: 0;
		  font-family: inherit;
		  font-size: 0.95em;
		}

		.login input[type="text"],
		.login input[type="password"] {
		  background: #fff;
		  border-color: #bbb;
		  color: #555;
		}


		.login input[type="submit"] {
		  background: #28d;
		  border-color: transparent;
		  color: #fff;
		  cursor: pointer;
		}

		.login input[type="submit"]:hover {
		  background: #18c;
		}

		/* Buttons' focus effect */
		.login input[type="submit"]:focus {
		  border-color: #05a;
		}
		
		.login a {
			padding: 60px;
			font-family: inherit;
			font-size: 0.95em;
		}

	
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="name_area">
            <center><h1>University Management System</h1>
            </center>
        </div>
        <div class="form_area">
            <div class="form_inner_area">
                &nbsp;</div>
        </div>

		<div class="login">
		    <p>Sign in with your id number.</p>
            <br />
            <p>
                <asp:TextBox ID="TextBox1" type="text" placeholder="Username"  runat="server"></asp:TextBox>
                </p>
            <p>
                <asp:TextBox ID="TextBox2" type="password" name="password" placeholder="Password" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button6" type="submit" runat="server" Text="Sign in" OnClick="Button6_Click" />
            </p>
		</div>


     <div class="copyright">
		&copy; 2022
         <br />All Rights Reserved
	 </div>
        
    </form>
</body>
</html>
