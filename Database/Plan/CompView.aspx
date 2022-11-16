<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompView.aspx.cs" Inherits="ISPDEMO.Complaint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Complaint Details</title>
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
            $('#CompView1').prepend($("<thead></thead>").append($("#CompView1").find("tr:first"))).DataTable();
            $("#CompView1").addClass("table table-striped table-light table-bordered table-hover").DataTable();
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
    float:right;

}
    </style>
 
</head>
<body>
    <form id="form1" runat="server">
        
<asp:HyperLink ID="HyperLink1" NavigateUrl="~/EditPage.aspx" CssClass="btn back" runat="server">Admin Page</asp:HyperLink>
    <div>
        <div class="table-wrapper-scroll-y">
         <br />
        <asp:GridView ID="CompView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="c_id" HeaderText="ID"  />
                <asp:BoundField DataField="c_name" HeaderText="Full Name" />
                <asp:BoundField DataField="c_email" HeaderText="Email" />
               <asp:BoundField DataField="c_sub" HeaderText="Subject" />
                <asp:BoundField DataField="c_desc" HeaderText="Description" />
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
