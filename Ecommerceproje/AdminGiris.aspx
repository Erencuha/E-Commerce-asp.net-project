<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGiris.aspx.cs" Inherits="Ecommerceproje.AdminGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
</head>
<body class="login">
    <form id="form1" runat="server">
        <div>
            <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form>
              <h1>Giriş Formu</h1>
              <div>
                <%--<input type="text" class="form-control" placeholder="Username" required="" />--%>
                  <asp:TextBox ID="TextBox1" class="form-control" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
              </div>
                  <br />
                  
                
              <div>
                <%--<input type="password" class="form-control" placeholder="Password" required="" />--%>
                  <asp:TextBox ID="TextBox2" class="form-control"  placeholder="Şifre" runat="server" TextMode="Password"></asp:TextBox>
              </div>
              <div>
                <%--<a class="btn btn-default submit" href="index.html">Log in</a>--%>
                  <br />
                  <br />
                  <br />
                  <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Giriş Yap" OnClick="Button1_Click" />
                  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <%--<a class="reset_pass" href="#">Lost your password?</a>--%>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
               
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Eren E-Ticaret</h1>
                  <p>©2016 Tüm Hakları saklıdır</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form>
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="index.html">Submit</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Eren E-Ticaret</h1>
                  <p>©2016 Tüm Hakları saklıdır.</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
        </div>
    </form>
</body>
</html>
