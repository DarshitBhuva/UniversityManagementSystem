<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="UniversityManagementSystem.student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Student Home</title>
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
        left: -1px;
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
        left: -1px;
       }
	.form_inner_area
	{
		top:1%;
		height: 20%;
		width: 100%;
		position: absolute;
	}
     .details_area1
	   {
                overflow:auto;
				top:30%;				
				width: 98%;
                height: 70%;
				position: absolute;				
				opacity:.9;
                left: 1%;
       }
	.button 
	{
		width: 24.5%;
		background-color: #2461BF;
		color: white;
		padding: 14px 20px;
		margin: 3px 0;
		border: none;
		border-radius: 4px;
		cursor: pointer;
		
	}
	.button:hover 
	{
		background-color: #45a049;
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
                &nbsp;
                <asp:Button ID="Button1" class="button" runat="server" Text="Home" OnClick="Button1_Click" CausesValidation="False" />
                <asp:Button ID="Button7" class="button" runat="server" Text="Options" OnClick="Button7_Click" CausesValidation="False" />
                <asp:Button ID="Button8" class="button" runat="server" Text="Profile" OnClick="Button8_Click" CausesValidation="False" />
                <asp:Button ID="Button9" class="button" runat="server" Text="Logout" OnClick="Button9_Click" CausesValidation="False" />
            </div>
        </div>

     <div class="copyright">
		&copy; 2022
    
         <br />All Rights Reserved
	 </div>

     <div class="details_area1" align="center">
             <h2>**Your Course Information**</h2>
         <asp:Label ID="LabelNoCourse" runat="server" ForeColor="Red"></asp:Label>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="Id" HeaderText="Course Id" />
                     <asp:BoundField DataField="CourseName" HeaderText="Name" />
                     <asp:BoundField DataField="Name" HeaderText="Faculty" />
                     <asp:BoundField DataField="Timing" HeaderText="Timing" />
                     <asp:BoundField DataField="Room" HeaderText="Room" />
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
             <br />
          <%--   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT [Id], [CourseName], [Timing], [Room], [Semester] FROM [Schedule] WHERE ([Semester] = @Semester)">
                 <SelectParameters>
                     <asp:SessionParameter Name="Semester" SessionField="semester" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>--%>
      </div>

    </form>
</body>
</html>
