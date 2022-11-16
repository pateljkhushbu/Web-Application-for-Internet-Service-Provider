<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="Contact.aspx.cs" Inherits="ISPDEMO.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
         <link rel="stylesheet" href="fontawesome/css/all.css"/>
             <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <script src="Bootstrap/jQuery/jQuery-3.4.1.slim.min.js"></script>
    <script src="Bootstrap/popper/popper.min.js"></script>

    <style>
body{
    padding-top:130px;
}
.col-lg-6{

    padding: 25px;
    height:600px;

}
.form-control,.btn{
    border-radius: 20px;
}

.col-lg-6{
	box-shadow: 0 0 1rem 0 rgba(0, 0, 0, .2);	
	border-radius: 5px;
	background-color: rgba(255, 255, 255, .15);
	backdrop-filter: blur(5px);
}
.form3{

    width:100%;
    box-shadow: 0 0 1rem 0 rgba(0, 0, 0, .2);	
	border-radius: 5px;
	background-color: rgba(255, 255, 255, .15);
	backdrop-filter: blur(5px);

}

.div1{
    color: black; 
    height:70px; 
    border-radius: 20px;
    border:2px solid;
    border-color:#053346;  
    padding:10px;
    font-size: 30px;
}
.div2{
    margin-left:30px;
    margin-right: 30px;
    height:400px;
    width: 400px;
    padding:10px;
}

.div3{
    margin-left:30px;
    margin-right: 30px;
    padding:10px;
}
.row{
    margin: 0px auto;
}
i{
    box-shadow: 0 0 1rem 0 rgba(0, 0, 0, .2);	
	border-radius: 50%;
	background-color: rgba(255, 255, 255, .15);
    backdrop-filter: blur(5px);
    padding:20px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid form3 text-center">
<h1>GET IN TOUCH</h1>
</div>
    <!-- symbols -->
<div class="container-fluid align-center">
<div class="row">
    
<div class="div2 text-center">

        <h2>Visit us:</h2>
        <i class="fa fa-map-marker-alt" style="font-size:100px;color:#050957;"></i><br>
   <br/><h5> <p>Office No. 4</p>
    <p>Poonam Aakruti CHS LTD.Tirupati Nagar Phase - II, Unitech Road,</p>
     <p>Near New Viva College, Virar West.</p></h5>
</div>

<div class="div2 text-center">
        <h2>Call us:</h2>
        <i class="fas fa-phone" style="font-size:100px;color:#050957;"></i><br /><br />
    <h5><p>07028000906</p></h5>
    </div>

<div class="div2 text-center">
        <h2>Our email:</h2>
        <i class="fas fa-envelope" style="font-size:100px;color:#050957;"></i><br/><br/>
    <h5><p>mapinfotel@gmail.com</p></h5>

</div>
</div>
</div>

    <!--symbols-->
    <!--forms-->
    <div class="text-center p-5" >
        <div class="row">
    <div class="col-lg-6">
         <div class="div1 text-center">
                <p>Contact us</p>
                </div>
    <br/>
    <!--Form-->
    <div class="form2"> 
        <asp:RequiredFieldValidator ID="rfv_fn" runat="server" ErrorMessage="Name Required" ControlToValidate="con_name" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="con_name" CssClass="form-control mb-4" runat="server" placeholder="Name"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mail Required" ControlToValidate="con_mail" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="con_mail" CssClass="form-control mb-4" placeholder="E-mail" runat="server"></asp:TextBox>

    
    <label>Subject</label>
        <asp:DropDownList ID="con_ddl" CssClass="form-control mb-4" runat="server">
                    <asp:ListItem>Feedback</asp:ListItem>  
            <asp:ListItem>Complaint</asp:ListItem>
                 </asp:DropDownList>
      
    

    <div class="form-group">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Message Required" ControlToValidate="con_mess" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="con_mess" CssClass="form-control" placeholder="Message" TextMode="MultiLine" rows="3" runat="server"></asp:TextBox>
    </div>
        <asp:Button ID="con_btn" CssClass="btn btn-info btn-block" runat="server" OnClick="con_btn_Click1" Text="Button" />   
</div>
    <!--Form-->



</div>
<div class="col-lg-5 text-center" style="margin-left: 50px;">
<h1 style="font-style: oblique">MESSAGE US</h1><br/>
<h3 style="font-style: oblique">Fill the form for any kind of queries or complaint</h3><br/>
<i class="fas fa-mail-bulk" style="font-size:200px;color:#050957;"></i>
</div>
</div>
</div>

    <!--forms-->


</asp:Content>
