<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_view.aspx.cs" Inherits="ISPDEMO.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Customer Details</title>
    <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
     <link rel="stylesheet" type="text/css" href="DataTables/Responsive-2.2.2/css/responsive.dataTables.css"/>
    <script src="DataTables/jQuery-3.3.1/jQuery-3.3.1.js"></script>
    <script type="text/javascript" src="DataTables/datatables.min.js"></script>
    <script type="text/javascript" src="DataTables/Responsive-2.2.2/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="DataTables/Responsive-2.2.2/js/responsive.bootstrap4.min.js"></script>
    <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="Bootstrapjs/bootstrap.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#CustView1').prepend($("<thead></thead>").append($("#CustView1").find("tr:first"))).DataTable();
            $("#CustView1").addClass("table table-striped table-light table-bordered table-hover").DataTable();
        });
        $('#CustView1 tr').append('<td>new</td>').addClass("btn");
    </script>
    <style>
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
        <div class="table-wrapper-scroll-y">
         <br />
        <asp:GridView ID="CustView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="cust_id" HeaderText="ID"  />
                <asp:BoundField DataField="cust_fname" HeaderText="First Name" />
                <asp:BoundField DataField="cust_lname" HeaderText="Last Name" />
                <asp:BoundField DataField="cust_no" HeaderText="Number" />
                <asp:BoundField DataField="cust_email" HeaderText="Email" />
                <asp:BoundField DataField="cust_add" HeaderText="Address" />
                <asp:BoundField DataField="cust_pack" HeaderText="Pack" />
                <asp:BoundField DataField="cust_type" HeaderText="Pack Type" />
            </Columns>
        </asp:GridView>
         <br />
         <br />
         <br />
        </div>
    </div>
    </form>
</body>
</html>
