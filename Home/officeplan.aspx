<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="officeplan.aspx.cs" ClientIDMode="Static" Inherits="ISPDEMO.office" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
     <link rel="stylesheet" type="text/css" href="DataTables/Responsive-2.2.2/css/responsive.dataTables.css"/>
     <link rel="stylesheet" href="fontawesome/css/all.css"/>
     <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <script src="DataTables/jQuery-3.3.1/jQuery-3.3.1.js"></script>
    <script type="text/javascript" src="DataTables/datatables.min.js"></script>
    <script type="text/javascript" src="DataTables/Responsive-2.2.2/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="DataTables/Responsive-2.2.2/js/responsive.bootstrap4.min.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
 <script>
        $(document).ready(function() {
            $('#OfficePlan1').prepend($("<thead></thead>").append($("#OfficePlan1").find("tr:first"))).DataTable();
            $("#OfficePlan1").addClass("table table-striped table-light table-bordered table-hover").DataTable();
        });
        $('#OfficePlan1 tr').append('<td>new</td>').addClass("btn");
    </script>
     <style>
        hr{
    height:10px ;
    background-color:#067980;
}
       body{
           padding-top:100px;
       } 
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
      <hr />
<p style="text-align: center; font-size: 50px; ">
        <i class="fas fa-building" style="color:#067980;"></i> Office Plans!</p>
<hr/>

  </div>
   
    <div>
        <div class="table-wrapper-scroll-y">
         <br />
            <asp:GridView ID="OfficePlan1" AutoGenerateColumns="false" runat="server"><Columns>
                <asp:BoundField DataField="p_id" HeaderText="ID"  />
                <asp:BoundField DataField="p_type" HeaderText="Plan Type" />
                <asp:BoundField DataField="p_name" HeaderText="Plan Name" />
                <asp:BoundField DataField="p_pack" HeaderText="Plan Pack" />
                <asp:BoundField DataField="p_speed" HeaderText="Plan Speed" />
                <asp:BoundField DataField="p_price" HeaderText="Plan Price" />
                 <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btn_hp" runat="server" Text="Enroll it!" CssClass="btn btn-info" OnClick="btn_hp_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
           
            </Columns>
        </asp:GridView>
         <br />
         <br />
         <br />
        </div>
    </div>
  
</asp:Content>
