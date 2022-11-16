<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="plan_update.aspx.cs" Inherits="ISPDEMO.plan_update" UnobtrusiveValidationMode="None" %>

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
<body style="background: linear-gradient(to bottom, #afcdfa, white);">
    <form id="form1" runat="server">
        
<asp:HyperLink ID="HyperLink1" NavigateUrl="~/EditPage.aspx" CssClass="btn back" runat="server">Admin Page</asp:HyperLink>
    <div>
        
        <div class="form1">

        <h5> Update</h5>
        <hr style="height:8px; background-color:ghostwhite;" />  
        <div class="form-group">
		<label class="label"><b>ID: </b></label>
            <asp:TextBox ID="txtpid" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
		</div>  
		<div class="form-group">
		<label class="label"><b>Plan Name: </b></label> <asp:RequiredFieldValidator ID="rfv_pn" runat="server" ErrorMessage="Plan Name Required" ControlToValidate="txtpn" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtpn" CssClass="form-control" runat="server" placeholder="Enter Plan Name"></asp:TextBox>
		</div>
         <div class="form-group">
		<label class="label"><b>Plan Type: </b></label> <asp:RequiredFieldValidator ID="rvf_type" runat="server" ErrorMessage="Plan Type Required" ControlToValidate="txtpacktype" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtpacktype" CssClass="form-control" runat="server" placeholder="Enter Type of Pkan"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Plan: </b></label>
            <asp:RequiredFieldValidator ID="rfv_p" runat="server" ErrorMessage="Plan Required" ControlToValidate="txtp" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtp" CssClass="form-control" runat="server" placeholder="Enter Plan"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Plan Speed: </b></label> <asp:RequiredFieldValidator ID="rvf_speed" runat="server" ErrorMessage="Plan Speed Required" ControlToValidate="txtspeed" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtspeed" CssClass="form-control" runat="server" placeholder="Enter Plan Speed"></asp:TextBox>
		</div>
        <div class="form-group">
  		<label class="label"><b>Plan Price: </b></label><asp:RequiredFieldValidator ID="rvf_txtpack" runat="server" ErrorMessage="Plan Price Required" ControlToValidate="txtprice" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtprice" CssClass="form-control" runat="server" placeholder="Enter Plan Price"></asp:TextBox>
		</div>
        <div class="form-group">
        <asp:Button ID="btnsub" runat="server" Text="Update" CssClass="form-control btn" OnClick="btnsub_Click" style="background-color:blue; color:white;" />
		</div>
  </div>
    </div>
    </form>
</body>
</html>
