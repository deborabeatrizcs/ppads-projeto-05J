<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="SafeGirls.principal" %>

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


<body class="fixed-nav sticky-footer bg-dark" id="page-top">
    <form runat="server">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <a class="navbar-brand" href="#">Safe Girls</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
                        <a class="nav-link" href="#">
                            <i class="fa fa-fw fa-dashboard"></i>
                            <span class="nav-link-text">Principal</span>
                        </a>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
                        <a class="nav-link" href="denuncias.aspx">
                            <i class="fa fa-fw fa-dashboard"></i>
                            <span class="nav-link-text">Visualizar Denúncias</span>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="content-wrapper">
            <div class="container-fluid">

                <div class="alert alert-info" style="margin: 20px;" id="sucessomodal" runat="server" visible="false">
                    <span class="close" data-dismiss="alert">&times;</span>
                    <strong>Atenção.</strong><br />
                    <asp:ValidationSummary HeaderText="Foram executadas as seguintes ações" DisplayMode="BulletList" EnableClientScript="false" runat="server" />
                </div>
                <div class="alert alert-danger" style="margin: 20px;" id="erromodal" runat="server" visible="false">
                    <span class="close" data-dismiss="alert">&times;</span>
                    <strong>Atenção.</strong><br />
                    <asp:ValidationSummary HeaderText="Os seguinte(s) erro(s) ocorreram:" DisplayMode="BulletList" EnableClientScript="false" runat="server" />
                </div>

                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Principal</a>
                    </li>
                </ol>

                <div class="card mb-3">
                    <div class="card-header">
                        Inserir Denúncia
                    </div>
                    <div class="card-body">

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Data do ocorrido</label>
                                    <asp:TextBox runat="server" ID="txtDataOcorrido" class="form-control" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Local</label>
                                    <asp:TextBox runat="server" ID="txtLocal" class="form-control" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label>Denuncia</label>
                                    <asp:TextBox runat="server" ID="txtDenuncia" class="form-control" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <asp:Button runat="server" type="submit" class="btn btn-default" Text="Gravar" ID="cmdGravar" OnClick="cmdGravar_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid-->
            <!-- /.content-wrapper-->
            <footer class="sticky-footer">
                <div class="container">
                    <div class="text-center">
                        <small></small>
                    </div>
                </div>
            </footer>
            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fa fa-angle-up"></i>
            </a>
            <!-- Logout Modal-->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Logout?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Deseja realmente efetuar o logout.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <asp:Button class="btn btn-primary" runat="server" Text="Logout" ID="cmdLogout" OnClick="cmdLogout_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <!-- Bootstrap core JavaScript-->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <!-- Core plugin JavaScript-->
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
            <!-- Custom scripts for all pages-->
            <script src="js/sb-admin.min.js"></script>
            <!-- Custom scripts for this page-->
            <!-- Toggle between fixed and static navbar-->
            <script>
                $('#toggleNavPosition').click(function () {
                    $('body').toggleClass('fixed-nav');
                    $('nav').toggleClass('fixed-top static-top');
                });

            </script>
            <!-- Toggle between dark and light navbar-->
            <script>
                $('#toggleNavColor').click(function () {
                    $('nav').toggleClass('navbar-dark navbar-light');
                    $('nav').toggleClass('bg-dark bg-light');
                    $('body').toggleClass('bg-dark bg-light');
                });

            </script>
        </div>
    </form>
</body>

</html>
