<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_update.aspx.cs" Inherits="ISPDEMO.cust_update" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Customer</title>
     <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="Bootstrapjs/bootstrap.min.js"></script>
    <script src="DataTables/jQuery-3.3.1/jQuery-3.3.1.js"></script>
    <style>
        .form1{
background:linear-gradient(to right, #004e92, #000428);
color: white;
margin: 0px auto;
padding: 35px;
max-width: 700px;
border: 10px solid;
border-style:outset;
}
         body{
                background: linear-gradient(to bottom, #afcdfa, white);

        }
.back{
    height: 80px;
    width: 250px;
    background: linear-gradient(to right, #f12711, #f5af19 );
    border-width: 3px;
    border-color: white;
    border-radius: 30px;
    color:white;
    float:left;

}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/EditPage.aspx" CssClass="btn back" runat="server">Admin Page</asp:HyperLink>

    <div>
        
        <div class="form1">

        <h5> Update</h5>
        <hr style="height:8px; background-color:ghostwhite;" />  
        <div class="form-group">
		<label class="label"><b>ID: </b></label>
        <asp:TextBox ID="txtid" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
		</div>  
		<div class="form-group">
		<label class="label"><b>First Name: </b></label>
        <asp:TextBox ID="txtfn" CssClass="form-control" runat="server"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Last Name: </b></label>
        <asp:TextBox ID="txtln" CssClass="form-control" runat="server"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Number: </b></label>
        <asp:TextBox ID="txtno" CssClass="form-control" runat="server"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Email: </b></label>
        <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Address: </b></label>
        <asp:TextBox ID="txtadd" CssClass=" form-control" runat="server"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Pack: </b></label>
        <asp:TextBox ID="txtpack" CssClass="form-control" runat="server"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Pack Type: </b></label>
        <asp:TextBox ID="txtpacktype" CssClass="form-control" runat="server"></asp:TextBox>
		</div>
        <div class="form-group">
        <asp:Button ID="btnsub" runat="server" Text="Update" CssClass="form-control btn" OnClick="btnsub_Click" style="background-color:blue; color:white;" />
		</div>
  </div>
    </div>
    </form>
</body>
</html>
