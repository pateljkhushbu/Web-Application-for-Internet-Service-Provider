<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="planview.aspx.cs" Inherits="ISPDEMO.planview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Plan Details</title>
    <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
     <link rel="stylesheet" type="text/css" href="DataTables/Responsive-2.2.2/css/responsive.dataTables.css"/>
    <script src="DataTables/jQuery-3.3.1/jQuery-3.3.1.js"></script>
    <script type="text/javascript" src="DataTables/datatables.min.js"></script>
    <script type="text/javascript" src="DataTables/Responsive-2.2.2/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="DataTables/Responsive-2.2.2/js/responsive.bootstrap4.min.js"></script>
    <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="Bootstrap/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#PlanView1').prepend($("<thead></thead>").append($("#PlanView1").find("tr:first"))).DataTable();
            $("#PlanView1").addClass("table table-striped table-light table-bordered table-hover").DataTable();
        });
        $('#PlanView1 tr').append('<td>new</td>').addClass("btn");
    </script>
    <style>
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
        <div class="table-wrapper-scroll-y">
         <br />
        <asp:GridView ID="PlanView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="p_id" HeaderText="ID"  />
                <asp:BoundField DataField="p_name" HeaderText="Plan Name" />
                <asp:BoundField DataField="p_type" HeaderText="Plan Type" />
                <asp:BoundField DataField="p_pack" HeaderText="Plan Pack" />
                <asp:BoundField DataField="p_speed" HeaderText="Plan Speed" />
                <asp:BoundField DataField="p_price" HeaderText="Plan Price" />
            </Columns>
        </asp:GridView>
         <br />
         <br />
         <br />
        </div>
    </div>
    </form>
</body></html>
