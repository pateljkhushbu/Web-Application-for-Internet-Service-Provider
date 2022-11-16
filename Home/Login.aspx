<%@ Page Title="Login" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ISPDEMO.Login" UnobtrusiveValidationMode="None"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <script src="Bootstrap/jQuery/jQuery-3.4.1.slim.min.js"></script>
    <script src="Bootstrap/popper/popper.min.js"></script>
        <style>
    body {
  	padding-top:90px;
    height:800px;
    background: linear-gradient(to bottom, #afcdfa, white )
}
.form1{
	box-shadow:0 15px 12px;
	background:url(images/img2.jpg) no-repeat;
    background-size: 600px 600px;
    color: black;
    margin: 0px auto;
    padding: 35px;
    padding-top: 100px;
    max-width: 600px;
    height: 600px;
    border: 10px solid;
    border-style:outset;
}

.label{
    font-weight: bold;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="shade">
<div class="form1" >
        <hr style="height:8px;background-color:white; color:black;" /><h2>Login</h2><hr style="height:8px; background-color: white;" />
    <div class="form-group">
    <label class="label">Username: </label><asp:RequiredFieldValidator ID="rvf1" runat="server" ErrorMessage="Username Required!" ForeColor="Red" ControlToValidate="user"></asp:RequiredFieldValidator>
    <asp:TextBox ID="user" runat="server" CssClass="form-control" placeholeder="Username"></asp:TextBox><br />
    </div>
    <div class="form-group">
    <label class="label">Password: </label>
        <asp:RequiredFieldValidator ID="rvf2" runat="server" ErrorMessage="Password Required!" ForeColor="Red" ControlToValidate="pass"></asp:RequiredFieldValidator>
    <asp:TextBox ID="pass" runat="server" CssClass="form-control" placeholeder="Password" TextMode="Password" ></asp:TextBox><br />
    </div>
        
    <div class="form-group">
    <asp:Button ID="Button1" runat="server" Text="SignIn" CssClass="form-control btn" OnClick="Button1_Click" ForeColor="White" BackColor="#024a49"/>   
    </div>
    <p style="font-weight: bold">Please Enter Your Username and Password!</p><br/>
        </div>
           </div>
</asp:Content>
