<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="UniversityManagementSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <style type="text/css">
    	body {
    		margin: 0 auto;
    		background-size: auto;
    		font-family: 'Open Sans', sans-serif;
    	}

    	form {
    		width: 500px;
    		margin: 50px auto;
    	}

    	/* Reset top and bottom margins from certain elements */

    	.login {
    		height: 100%;
    		position: absolute;
    		right: 32%;
    		top: -1%;
    		background-color: #f1f1f1;
    		opacity: 0.9;
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

    	.copyright {
    		height: 6%;
    		width: 20%;
    		position: fixed;
    		background-color: #f1f1f1;
    		opacity: .5;
    		border-radius: 4px;
    		bottom: 1%;
    		right: .5%;
    		text-align: center;
    	}
    </style>

</head>
<body>
    <div class="login">
        <form id="form1" runat="server">
            <center>
                <h1>University Management System</h1>
               </p>
                <br />
                <br />
            </center>
            <p>Sign in with your organizational id number.</p>
            <br />
            <p>
                <asp:TextBox ID="TextBox1" type="text" placeholder="Username" required="required" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:TextBox ID="TextBox2" type="password" name="password" placeholder="Password" required="required" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" type="submit" runat="server" Text="Sign in" OnClick="Button1_Click" />
            </p>
        </form>
    </div>
    <div class="copyright">
        &copy; 2022
         <br />
        All Rights Reserved
    </div>
    <div>
    </div>

</body>
</html>
