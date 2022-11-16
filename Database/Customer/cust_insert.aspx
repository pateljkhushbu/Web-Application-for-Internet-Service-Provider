<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_insert.aspx.cs" Inherits="ISPDEMO.cust_insert" UnobtrusiveValidationMode="None"  %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Customer</title>
     <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="Bootstrapjs/bootstrap.min.js"></script>
    <script src="DataTables/jQuery-3.3.1/jQuery-3.3.1.js"></script>
    <style>
        body{
            padding-bottom:30px;
            padding-top:30px;
        }
.form1{
background: linear-gradient(to right, #2C7744, #000000);
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
        <h5>Insert New Customers!</h5>
        <hr style="height:8px; background-color:ghostwhite;" />  
		<div class="form-group">
		<label class="label"><b>First Name: </b></label> <asp:RequiredFieldValidator ID="rfv_fn" runat="server" ErrorMessage="First Name Required" ControlToValidate="txtfn" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtfn" CssClass="form-control" runat="server" placeholder="Enter First Name"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Last Name: </b></label>
            <asp:RequiredFieldValidator ID="rfv_ln" runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtln" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtln" CssClass="form-control" runat="server" placeholder="Enter Last Name"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Number: </b></label><asp:RequiredFieldValidator ID="rfv_no" runat="server" ErrorMessage="Address Required" ControlToValidate="txtno" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_no" runat="server" ErrorMessage="Please Enter 10 digits correctly!" ValidationExpression="[0-9]{10}" ControlToValidate="txtno"></asp:RegularExpressionValidator>
        <asp:TextBox ID="txtno" CssClass="form-control" runat="server" placeholder="Enter Mobile Number"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Email: </b></label><asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="Email Required" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="ref_email" runat="server" ErrorMessage="Invalid Email"  ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
        <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" placeholder="Enter Email Id"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Address: </b></label><asp:RequiredFieldValidator ID="rvf_add" runat="server" ErrorMessage="Address Required" ControlToValidate="txtadd" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtadd" CssClass=" form-control" runat="server" TextMode="MultiLine" placeholder="Enter Address"></asp:TextBox>
		</div>
        <div class="form-group">
  		<label class="label"><b>Plan: </b></label><asp:RequiredFieldValidator ID="rvf_txtpack" runat="server" ErrorMessage="Plan Required" ControlToValidate="txtpack" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtpack" CssClass="form-control" runat="server" placeholder="Enter Specific Pack"></asp:TextBox>
		</div>
        <div class="form-group">
		<label class="label"><b>Plan Type: </b></label><asp:RequiredFieldValidator ID="rvf_txtpacktype" runat="server" ErrorMessage="Pack Type Required" ControlToValidate="txtpacktype" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtpacktype" CssClass="form-control" runat="server" placeholder="Enter Type of Pack"></asp:TextBox>
		</div>
        <div class="form-group">
        <asp:Button ID="btnsub" runat="server" Text="Insert" CssClass="form-control btn" OnClick="btnsub_Click" style="background-color:#0f9b0f; color:white;" />
		</div>
  </div>
    </div>
    </form>
</body>

</html>
s