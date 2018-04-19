<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastrar.aspx.cs" Inherits="SafeGirls.cadastrar" %>


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
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Registrar conta</div>
                <div class="card-body">
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputName">Nome</label>
                                <asp:TextBox runat="server" class="form-control" ID="txtNome" type="text" />
                            </div>
                            <div class="col-md-6">
                                <label for="exampleInputLastName">Sobrenome</label>
                                <asp:TextBox runat="server" class="form-control" ID="txtSobrenome" type="text" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputName">Email</label>
                                <asp:TextBox runat="server" class="form-control" ID="txtEmail" type="text" />
                            </div>
                            <div class="col-md-6">
                                <label for="exampleInputLastName">Data de Nascimento</label>
                                <asp:TextBox runat="server" class="form-control" ID="txtIdade" type="text" />

                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputPassword1">Senha</label>
                                <asp:TextBox runat="server" class="form-control" ID="txtSenha" type="password" />
                            </div>
                            <div class="col-md-6">
                                <label for="exampleConfirmPassword">Confirme a senha</label>
                                <asp:TextBox runat="server" class="form-control" ID="txtConfirmarSenha" type="password" />
                            </div>
                        </div>
                    </div>
                    <asp:LinkButton runat="server" class="btn btn-primary btn-block" ID="cmdRegistrar" OnClick="cmdRegistrar_Click">Registrar</asp:LinkButton>

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
