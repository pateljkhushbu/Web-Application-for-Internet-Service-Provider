<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnrollView.aspx.cs" Inherits="ISPDEMO.EnqView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Enrollment Details</title>
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
            $('#EnrollView1').prepend($("<thead></thead>").append($("#EnrollView1").find("tr:first"))).DataTable();
            $("#EnrollView1").addClass("table table-striped table-light table-bordered table-hover").DataTable();
        });
        $('#EnrollView1 tr').append('<td>new</td>').addClass("btn");
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

}</style>
 
</head>
<body>
    <form id="form1" runat="server">
<asp:HyperLink ID="HyperLink1" NavigateUrl="~/EditPage.aspx" CssClass="btn back" runat="server">Admin Page</asp:HyperLink>
    <div>
        <div class="table-wrapper-scroll-y">
         <br />
        <asp:GridView ID="EnrollView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="eid" HeaderText="ID"  />
                <asp:BoundField DataField="e_fname" HeaderText="First Name" />
                <asp:BoundField DataField="e_lname" HeaderText="Last Name" />
                <asp:BoundField DataField="epack" HeaderText="Pack" />
                <asp:BoundField DataField="eno" HeaderText="Number" />
                <asp:BoundField DataField="e_email" HeaderText="Email" />
                <asp:BoundField DataField="eadd" HeaderText="Address" />
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
