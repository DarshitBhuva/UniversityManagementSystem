<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminAddSchedule.aspx.cs" Inherits="UniversityManagementSystem.adminAddSchedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
    <style type="text/css">
        body {
            margin: 0 auto;
            /*background: url("images/background.jpg") no-repeat;*/
            background-size: auto;
            font-family: 'Open Sans', sans-serif;
        }

        .name_area {
            height: 15%;
            width: 100%;
            position: absolute;
            background-color: #f1f1f1;
            opacity: .5;
            border-radius: 4px;
            left: -1px;
        }

        .details_area1 {
            position: absolute;
            left: 37%;
            top: 23%;
            height: 95%;
            width: 337px;
            position: absolute;
            background-color: #f1f1f1;
            resize: initial;
            opacity: .9;
        }

        .details_area2 {
            top: 2%;
            height: 200px;
            width: 800px;
            position: absolute;
            left: 50px;
        }

        .form_area {
            top: 15%;
            height: 6.3%;
            width: 100%;
            position: absolute;
            background-color: #f1f1f1;
            opacity: .9;
            border-radius: 4px;
            left: -1px;
        }

        .form_inner_area {
            left: .1%;
            top: 1%;
            height: 20%;
            width: 100%;
            position: absolute;
        }

        .button {
            width: 10.7%;
            background-color: #2461BF;
            color: white;
            padding: 14px 20px;
            margin: 3px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

            .button:hover {
                background-color: #45a049;
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
    <form id="form1" runat="server">
        <div class="name_area">
            <center>
                <h1>University Management System</h1>
            </center>
        </div>
        <div class="form_area">
            <div class="form_inner_area">
                &nbsp;
                <asp:Button ID="Button1" class="button" runat="server" Text="Home" OnClick="Button1_Click" CausesValidation="False" />
                <asp:Button ID="Button2" class="button" runat="server" Text="+ Admin" OnClick="Button2_Click" CausesValidation="False" />
                <asp:Button ID="Button3" class="button" runat="server" Text="+ Faculty" OnClick="Button3_Click" CausesValidation="False" />
                <asp:Button ID="Button4" class="button" runat="server" Text="+ Student" OnClick="Button4_Click" CausesValidation="False" />
                <asp:Button ID="Button5" class="button" runat="server" Text="+ Schedule" OnClick="Button5_Click" CausesValidation="False" />
                <asp:Button ID="Button6" class="button" runat="server" Text="Update Info" OnClick="Button6_Click" CausesValidation="False" />
                <asp:Button ID="Button7" class="button" runat="server" Text="Options" OnClick="Button7_Click" CausesValidation="False" />
                <asp:Button ID="Button8" class="button" runat="server" Text="Profile" OnClick="Button8_Click" CausesValidation="False" />
                <asp:Button ID="Button9" class="button" runat="server" Text="Logout" OnClick="Button9_Click" CausesValidation="False" />
            </div>
        </div>

        <div class="copyright">
            &copy; 2022
         <br />
            All Rights Reserved
        </div>

        <div class="details_area1">
            <div class="details_area2">
                <p>+ Add New Schedule</p>
                <asp:Label ID="Label1" runat="server" Text="Course Id:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBoxCourseId" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxCourseId" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Invalid Format (ex: CSC1234)" ForeColor="Red" ControlToValidate="TextBoxCourseId" Display="Dynamic" ValidationExpression="[A-Z]{3}[0-9]{4}"></asp:RegularExpressionValidator><br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBoxCourseName" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxCourseName" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Special symbols or only digits are not allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z. ]+$" ControlToValidate="TextBoxCourseName" Display="Dynamic"></asp:RegularExpressionValidator><br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Timing:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBoxTiming" runat="server" BorderWidth="1px" Height="25px" TextMode="MultiLine" Width="250px"></asp:TextBox><br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Faculty:"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownListFaculty" runat="server" Height="30px" Width="250px"></asp:DropDownList><br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Room:"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownListRoom" runat="server" Height="52px" Width="250px">
                    <asp:ListItem>R1</asp:ListItem>
                    <asp:ListItem>R2</asp:ListItem>
                    <asp:ListItem>R3</asp:ListItem>
                    <asp:ListItem>R4</asp:ListItem>
                    <asp:ListItem>R5</asp:ListItem>
                    <asp:ListItem>R6</asp:ListItem>
                    <asp:ListItem>R7</asp:ListItem>
                    <asp:ListItem>R8</asp:ListItem>
                    <asp:ListItem>R9</asp:ListItem>
                    <asp:ListItem>R10</asp:ListItem>
                    <asp:ListItem>R11</asp:ListItem>
                    <asp:ListItem>R12</asp:ListItem>
                    <asp:ListItem>R13</asp:ListItem>
                    <asp:ListItem>R14</asp:ListItem>
                    <asp:ListItem>R15</asp:ListItem>
                    <asp:ListItem>R16</asp:ListItem>
                    <asp:ListItem>R17</asp:ListItem>
                    <asp:ListItem>R18</asp:ListItem>
                    <asp:ListItem>R19</asp:ListItem>
                    <asp:ListItem>R20</asp:ListItem>
                    <asp:ListItem>R21</asp:ListItem>
                    <asp:ListItem>R22</asp:ListItem>
                    <asp:ListItem>R23</asp:ListItem>

                </asp:DropDownList><br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Semester:"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownListSemester" runat="server" Height="30px" Width="250px">
                    <asp:ListItem>1st</asp:ListItem>
                    <asp:ListItem>2nd</asp:ListItem>
                    <asp:ListItem>3rd</asp:ListItem>
                    <asp:ListItem>4th</asp:ListItem>
                    <asp:ListItem>5th</asp:ListItem>
                    <asp:ListItem>6th</asp:ListItem>
                    <asp:ListItem>7th</asp:ListItem>
                    <asp:ListItem>8th</asp:ListItem>
                </asp:DropDownList><br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Department:"></asp:Label>
                <br />
                <asp:DropDownList ID="Department" runat="server" Height="30px" Width="250px">
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>EE</asp:ListItem>
                    
                </asp:DropDownList><br />
                <br />
                <asp:Button ID="Button10" class="button" runat="server" Text="Confirm" OnClick="Button10_Click" Height="40px" Width="250px" />
            </div>
        </div>
    </form>
</body>
</html>
