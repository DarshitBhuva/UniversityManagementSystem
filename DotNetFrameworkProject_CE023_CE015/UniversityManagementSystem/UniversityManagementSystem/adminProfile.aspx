<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminProfile.aspx.cs" Inherits="UniversityManagementSystem.adminProfile" %>

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
            overflow: auto;
            top: 24%;
            width: 98%;
            position: absolute;
            opacity: .9;
            left: 1%;
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
        <div class="details_area1" align="center">
            <h2>**Profile Information**</h2>
            <br />
            <h3>**General Information**</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" GridLines="None" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="DOB" HeaderText="Date Of Birth" SortExpression="DOB" />
                    <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" SortExpression="BloodGroup" />
                    <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                    <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
                    <asp:BoundField DataField="MaritalStatus" HeaderText="Marital Status" SortExpression="MaritalStatus" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus] FROM [Information] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Id" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
            <h3>**Academic Information**</h3>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Admin Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="JoiningDate" HeaderText="Joining Date" SortExpression="JoiningDate" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" DeleteCommand="DELETE FROM [Admin] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Admin] ([Id], [JoiningDate]) VALUES (@Id, @JoiningDate)" SelectCommand="SELECT [Id], [JoiningDate] FROM [Admin] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Admin] SET [JoiningDate] = @JoiningDate WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="JoiningDate" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="Id" SessionField="username" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="JoiningDate" Type="String" />
                    <asp:Parameter Name="Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
