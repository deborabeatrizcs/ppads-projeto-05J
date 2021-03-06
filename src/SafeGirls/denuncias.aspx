﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="denuncias.aspx.cs" Inherits="SafeGirls.denuncias" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Safe Girls</title>
    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
</head>


<body class="bg-dark">
    <form id="Form1" runat="server">
        <div style="text-align: center">
            <img src="<%=ResolveUrl("~/image/logo.png")%>" style="width: 300px" />
        </div>

        <div class="alert alert-danger" style="margin: 20px;" id="erromodal" runat="server" visible="false">
            <span class="close" data-dismiss="alert">&times;</span>
            <strong>Atenção.</strong><br />
            <asp:ValidationSummary ID="ValidationSummary1" HeaderText="Os seguinte(s) erro(s) ocorreram:" DisplayMode="BulletList" EnableClientScript="false" runat="server" />
        </div>

        <div class="container" style="margin-bottom: 50px">

            
    <!-- Example DataTables Card-->
    <div class="card mb-3" id="cardredes" runat="server">
        <div class="card-header">
            Denúncias cadastradas
        </div>
        <div class="card-body">
            <div class="table-responsive">

                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Data</th>
                            <th>Local</th>
                            <th>Ocorrido</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="listaDenuncias" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# DataBinder.Eval(Container.DataItem, "data_ocorrido") %></td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "local") %></td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "denuncia") %></td> 
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
           
        </div>
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    </form>
</body>
</html>
