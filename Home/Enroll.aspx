<%@ Page Title="Enroll" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Enroll.aspx.cs" Inherits="ISPDEMO.Enroll" UnobtrusiveValidationMode="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script src="Bootstrap/jQuery/jQuery-3.4.1.slim.min.js"></script>
    <script src="Bootstrap/popper/popper.min.js"></script>
        <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="Bootstrap/js/bootstrap.min.js"></script>s
<style>
    
    body{
    padding-top:100px;
    background:url(images/img15.jpg) no-repeat;
    background-size: 100%;
    padding-bottom:50px;
    }
.form-image{
        background: linear-gradient(to left, #24243e,#4286f4, #373B44);
        background-size: 500px 700px;       
        color: black;   
        padding: 35px;
        padding-top: 100px;
        max-width: 500px;
        height: 700px;
        display: block; 
}
.form-enq{	
    color: black;
    padding-top: 30px;
    max-width: 750px;
    height: 800px;
}
btn{
    outline-color:white;
}

.label{
    font-weight: bold;
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr style="height:50px; background-color:white;" />
    <div class="container">
    <div class="row" style="border: 3px solid white;">
        <div class="col-lg-5 form-image">
           <h1>Enroll Here!</h1>
     </div>
     <div class="col-lg-7 form-enq">
    <div id="form1" runat="server">
     <hr style="height:8px;background-color:white; color:black;" /><h2>Enrollment</h2><hr style="height:8px; background-color: white;" /> 
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
		<label class="label"><b>Plan: </b></label>
            <asp:RequiredFieldValidator ID="rfv_p" runat="server" ErrorMessage="Plan Required(go to plan page if Required)" ControlToValidate="txtp" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtp" CssClass="form-control" runat="server" placeholder="Enter Plan"></asp:TextBox>
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
        <asp:Button ID="Sub" runat="server" CssClass="btn form-control" Text="Insert" OnClick="Sub_Click" BackColor="#000066" ForeColor="White"/><br />
        </div>     
        </div>
         </div>
    </div>
        </div>
</asp:Content>
