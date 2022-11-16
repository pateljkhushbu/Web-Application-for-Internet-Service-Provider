<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPage.aspx.cs" Inherits="ISPDEMO.EditPage" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="Bootstrapjs/bootstrap.min.js"></script>
    <script src="DataTables/jQuery-3.3.1/jQuery-3.3.1.js"></script>
    <style>

        body {
            padding-top: 90px;
            padding-bottom: 30px;
            background: linear-gradient(to bottom, #afcdfa, white );
        }
.btn{
    height: 60px;
    width: 180px;
    border-width: 3px;
    border-color: white;
    border-radius: 30px;
    color:white;
    margin-left: 10px;
    margin-right: 50px;
}

form-control{
 margin-left: 60px;
 margin-right: 50px;
}

.btn-delete{
    background: linear-gradient(to right, #6f0000, #F00000 );
   
}

.btn-update{
    background: linear-gradient(to right, #373B44, #4286f4 );
}
.btn-insert{
    background: linear-gradient(to right, #023102, #38eb38 );
    
}

.btn-view{
    background: linear-gradient(to right, #F09819, #EDDE5D );
}
   .container{
       padding-top:20px;
       padding-bottom:30px;
   }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Customer -->
    <div class="container align-content-center">
        <hr style="background-color:blue; height:4px;"/>
        <h5>Please Edit or View Customer details Here !</h5>
        <hr  style="background-color:blue; height:4px;"/>
        <label> Please Enter the Id to update: </label> <asp:RequiredFieldValidator ID="rvf1" runat="server" ValidationGroup="val1" ErrorMessage="ID Required!" ControlToValidate="cust_upid" ForeColor="Red"></asp:RequiredFieldValidator>
        <div class="form-inline">
        <asp:TextBox ID="cust_upid" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="cust_upbtn" runat="server" CssClass="btn btn-update waves-effect" Text="Update" ValidationGroup="val1" OnClick="cust_upbtn_Click" />
            </div><br />
         <label> Please Enter the Id to delete: </label><asp:RequiredFieldValidator ID="rvf2" runat="server" ValidationGroup="val2" ErrorMessage="ID Required!" ControlToValidate="cust_delid" ForeColor="Red"></asp:RequiredFieldValidator>
        <div class="form-inline">
        <asp:TextBox ID="cust_delid" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="cust_delbtn" runat="server" ValidationGroup="val2" CssClass="btn btn-delete waves-effect" Text="Delete" OnClick="cust_delbtn_Click" />
        </div><br />
        <div>
        <label> Click for Insert </label>
       <asp:Button ID="cust_insbtn" CssClass="btn btn-insert waves-effect" runat="server" Text="Insert" OnClick="cust_insbtn_Click"/>
        <label> Click for View Details</label>
        <asp:Button ID="cust_viewbtn" CssClass="btn btn-view waves-effect" runat="server" Text="View" OnClick="cust_viewbtn_Click" /><br />
        </div>
        <hr  style="background-color:blue; height:4px;"/>
        </div>
        <!-- Customer -->

         <!-- plan -->
         <div class="container align-content-center">
        <hr style="background-color:blueviolet; height:4px;"/>
        <h5>Please Edit or View plan details Here !</h5>
        <hr  style="background-color:blueviolet; height:4px;"/>
        <label> Please Enter the Id to update: </label><asp:RequiredFieldValidator ID="rvf3" runat="server" ValidationGroup="val3" ErrorMessage="ID Required!" ControlToValidate="plan_txtid" ForeColor="Red"></asp:RequiredFieldValidator>
        <div class="form-inline">
        <asp:TextBox ID="plan_txtid" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="plan_upbtn" runat="server" CssClass="btn btn-update waves-effect" ValidationGroup="val3" Text="Update" OnClick="plan_upbtn_Click" />
            </div><br />
         <label> Please Enter the Id to delete: </label><asp:RequiredFieldValidator ValidationGroup="val4" ID="rvf4" runat="server" ErrorMessage="ID Required!" ControlToValidate="plan_txtdel" ForeColor="Red"></asp:RequiredFieldValidator>
        <div class="form-inline">
        <asp:TextBox ID="plan_txtdel" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="plan_btndel" runat="server" CssClass="btn btn-delete waves-effect" ValidationGroup="val4" Text="Delete" OnClick="plan_btndel_Click" />
        </div><br />
        <div>
        <label> Click for Insert </label>
       <asp:Button ID="plan_btnins" CssClass="btn btn-insert waves-effect" runat="server" Text="Insert" OnClick="plan_btnins_Click"/>
        <label> Click for View Details</label>
        <asp:Button ID="plan_btnview" CssClass="btn btn-view waves-effect" runat="server" Text="View" OnClick="plan_btnview_Click" /><br />
        </div>
        <hr  style="background-color:blue; height:4px;"/>
        </div>
        <!-- plan -->
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
         <!-- Enquiry -->
         <div class="container align-content-center">
        <hr style="background-color:blueviolet; height:4px;"/>
        <h5>Please delete or View plan Enquiry details Here !</h5>
        <hr  style="background-color:blueviolet; height:4px;"/>
         <label> Please Enter the Id to delete: </label><asp:RequiredFieldValidator ID="rvf_5" runat="server" ValidationGroup="val5" ErrorMessage="ID Required!" ControlToValidate="enq_txtid" ForeColor="Red"></asp:RequiredFieldValidator>
        <div class="form-inline">
        <asp:TextBox ID="enq_txtid" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="enq_btndel" runat="server" CssClass="btn btn-delete waves-effect" ValidationGroup="val5" Text="Delete" OnClick="enq_btndel_Click" />
        </div><br />
        <div>
        <label> Click for View Details</label>
        <asp:Button ID="enq_btnview" CssClass="btn btn-view waves-effect" runat="server" Text="View" OnClick="enq_btnview_Click" /><br />
        </div>
        <hr  style="background-color:blue; height:4px;"/>
        </div>
        <!-- Enquiry -->

        <!-- complaint -->
        <div class="container align-content-center">
        <hr style="background-color:blueviolet; height:4px;"/>
        <h5>Please delete or View plan complaint Here !</h5>
        <hr  style="background-color:blueviolet; height:4px;"/>
         <label> Please Enter the Id to delete: </label><asp:RequiredFieldValidator ID="rvf6" ValidationGroup="val6" runat="server" ErrorMessage="ID Required!" ControlToValidate="comp_txtid" ForeColor="Red"></asp:RequiredFieldValidator>
        <div class="form-inline">
        <asp:TextBox ID="comp_txtid" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="comp_btndel" runat="server" CssClass="btn btn-delete waves-effect" ValidationGroup="val6" Text="Delete" OnClick="comp_btndel_Click" />
        </div><br />
        <div>
        <label> Click for View Details</label>
        <asp:Button ID="comp_btnview" CssClass="btn btn-view waves-effect" runat="server" Text="View" OnClick="comp_btnview_Click"/><br />
        </div>
        <hr  style="background-color:blue; height:4px;"/>
        </div>
        <!-- complaint -->
    </form>
</body>
</html>
