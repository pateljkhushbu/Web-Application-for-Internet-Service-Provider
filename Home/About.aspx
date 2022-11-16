<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ISPDEMO.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="fontawesome/css/all.css"/>
         <link rel="stylesheet" href="fontawesome/css/all.css"/>
     <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <script src="Bootstrap/jQuery/jQuery-3.4.1.slim.min.js"></script>
    <script src="Bootstrap/popper/popper.min.js"></script>

    <style>
body{
    background: linear-gradient(to bottom, #afcdfa, white);
    padding-top: 90px;

}
.div2{
    margin-left:30px;
    margin-right: 30px;
    height:400px;
    width: 400px;
    padding:10px;
}
.div1{
    background: linear-gradient(to right, #243B55, #141E30);
    height: 500px;
}
.hr{
    height: 10px;
    background-color: white;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="Container-fluid div1">
<p style="font-size: 50px; padding:20px; text-align: center; color: white; ">About us</p>
<div class="row">
 <div class="col-lg-6">   
<p style="font-size: 25px; padding:20px; text-align: left; color: white; ">• It is in Internet Service Provider sector.<br/>•The organization was founded in the year 2015, by Manoj Tiwari<br>•They Provide High Speed Broadband Service unlimited, Internet Lease Line, Point to Point, peering with Google, Youtube, Play Store, Akamai, Facebook, Whatts app, Limelite, Microsoft, Netflix, Instagram, etc.</p>
</div>
<div class="col-lg-5 text-center">
        <i class="fas fa-hands-helping" style="font-size:250px;color:white;"></i><br><br>
<p style="font-size: 20px; padding:25px; text-align: center; color: white; ">To Become Most Trusted Company</p>
</div>
</div>
</div>
<div class="container-fluid text-center" style="padding-top: 70px;">
        <div class="row">
            
        <div class="div2 text-center">
        
                <p><h2>Network: </h2></p>
                <i class="fas fa-wifi" style="font-size:100px;color:black;"></i><br>
           <br><h5> <p> To Provide Best Connection at low cost!</p>
  
        </div>
        
        <div class="div2 text-center">
                <p><h2>Speed</h2></p>
                <i class="fas fa-tachometer-alt" style="font-size:100px;color:black;"></i><br><br>
            <h5><p>To Proovide Fastest Speed!</p></h5>
            </div>
        
        <div class="div2 text-center">
                <p><h2>Queries</h2></p>
                <i class="fas fa-question-circle" style="font-size:100px;color:black;"></i><br><br>
            <h5><p>To Solve Queries As Soon As Possible !</p></h5>
        
        </div>
        </div>
        </div>
      
</asp:Content>
