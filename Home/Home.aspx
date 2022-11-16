<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ISPDEMO.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <script src="Bootstrap/jQuery/jQuery-3.4.1.slim.min.js"></script>
    <script src="Bootstrap/popper/popper.min.js"></script>
    <style>
    body{
   padding-top:60px;
   }
   .carousel-item{
    height: 300px;
} 
.carousel-item img{
 opacity:0.7;

}

.carousel-item img:hover{
 opacity:1.0;

}


.col-lg-6{
    margin:0px auto;
    width:100%;
    float: none; 
}

.carousel-caption{
    color:#0c0021;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                  <img class="d-block img-fluid" src="Images/wifi11.jpg" alt="Third slide" style="width:100%; height:500px;" />
                        <div class="carousel-caption">
                          <h2>Internet Service Provider</h2>
                        <p>Fastest Network!</p>
                         </div>
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="Images/wifi6.jpg" alt="Second slide" style="width:100%; height:500px;" />
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="Images/wifi10.jpg" alt="First slide"  style="width:100%; height:500px;" />
                    </div>
            </div>
           <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
   </div>
       <div class="container-fluid">
     <div class="row">
        <div class="col-lg-6">      
            <h2>Office Plans</h2>
          <div class="card" >
            <img class="card-img-top" src="Images/wifi2.jpg" alt="Card image" style="width:100%; height:200px;">
            <div class="card-body">
              <h4 class="card-title">Office Plans</h4>
              <p class="card-text">Office Plans Means to Browse great numbers of devices to do work faster ! </p>
              <a href="officeplan.aspx" class="btn btn-primary">See Plan</a>
            </div>
          </div>
          </div>
       <br>
      <div class="col-lg-6">      
        <h2>Office Plans</h2>
      <div class="card" >
        <img class="card-img-top" src="Images/wifi1.jpg" alt="Card image" style="width:100%; height:200px;">
        <div class="card-body">
          <h4 class="card-title">Home Plans</h4>
          <p class="card-text">Home Plans Means to Browse great numbers of devices at same time </p>
          <a href="homeplan.aspx" class="btn btn-primary">See Plan</a>
        </div>
      </div>
      </div>
    </div>
    </div>
</asp:Content>
