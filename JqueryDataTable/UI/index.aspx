<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JqueryDataTable.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Data Table</title>

    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.bootstrap.css" />

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.bootstrap.js"></script>
    <%-- <link type="text/css" rel="stylesheet"href="../Lib/dataTables.bootstrap.min.css"/> --%>
    <%-- <link type="text/css" rel="stylesheet"href="../Lib/bootstrap3.5.min.css"/> --%>
    <%-- <link type="text/css" rel="stylesheet"href="../Lib/responsive.bootstrap.min.css"/> --%>
    <%-- --%>
    <%-- <script type="text/javascript" src="../Lib/jquery-1.12.4.js"></script> --%>
    <%-- <script type="text/javascript" src="../Lib/jquery.dataTables.min.js"></script> --%>
    <%-- <script type="text/javascript" src="../Lib/dataTables.responsive.min.js"></script> --%>
    <%-- <script type="text/javascript" src="../Lib/dataTables.bootstrap.min.js"></script> --%>
    <%-- <script type="text/javascript" src="../Lib/bootstrap3.5.min.js"></script> --%>
    <%-- --%>
    <%--  --%>

    <script type="text/javascript">
        $(document).ready(function() {
            $("[id*=EmployeeTable]").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                "responsive": true,
                "sPaginationType": "full_numbers"
            });
//            $("#EmployeeTable").DataTable();
        });
    </script>
</head>

<body>

<form id="form1" runat="server">

    <div class="container">
        <br />
        <asp:GridView ID="EmployeeTable" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered" Width="100%">
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>Serial No.</HeaderTemplate>
                    <ItemTemplate>
                        <%#Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <%-- Name --%>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <%#Eval("name") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <%-- Position --%>
                <asp:TemplateField HeaderText="Position">
                    <ItemTemplate>
                        <%#Eval("position") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <%-- Office --%>
                <asp:TemplateField HeaderText="Office">
                    <ItemTemplate>
                        <%#Eval("office") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <%-- Age --%>
                <asp:TemplateField HeaderText="Age">
                    <ItemTemplate>
                        <%#Eval("age") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <%-- <asp:TemplateField HeaderText="Action"> --%>
                <%--     <ItemTemplate> --%>
                <%--         <button ID="LinkButton1" runat="server">Update</button> --%>
                <%--     </ItemTemplate> --%>
                <%-- </asp:TemplateField> --%>

            </Columns>
        </asp:GridView>

    </div>

</form>
</body>
</html>