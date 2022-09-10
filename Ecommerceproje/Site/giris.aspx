<%@ Page Title="" Language="C#" MasterPageFile="~/Site/AnaSite.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="Ecommerceproje.Site.giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


	 <script id="basarisiz">
         function basarisiz() {

             const Toast = Swal.mixin({
                 toast: true,
                 position: 'top-end',
                 showConfirmButton: false,
                 timer: 3000,
                 timerProgressBar: true,
                 didOpen: (toast) => {
                     toast.addEventListener('mouseenter', Swal.stopTimer)
                     toast.addEventListener('mouseleave', Swal.resumeTimer)
                 }
             })

             Toast.fire({
                 icon: 'error',
                 title: 'Girdiğiniz Email veya Şifre Yanlış!'
             })
         }
		 </script>










    <div id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div ><!--login form-->
						<h2>Hesabına Giriş Yap</h2>
						<form action="">

		<asp:TextBox ID="TextBox1" class="form-control" placeholder="Email" runat="server"></asp:TextBox><br />
		<asp:TextBox ID="TextBox2" class="form-control" placeholder="Şifre" runat="server" TextMode="Password"></asp:TextBox>
							<%--<input type="text" class="form-control" placeholder="Email" /><br />
							<input type="email" class="form-control" placeholder="Şifre" />--%>
							<span>
			<asp:CheckBox ID="CheckBox1" runat="server" /> Beni Hatırla
								<%--<input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span><br />--%><br />
		<asp:Button ID="Button1" runat="server" class="btn btn-warning" Text="Giriş" OnClick="Button1_Click" Visible="false" /><br />
								<input id="Button3" type="button" class="btn btn-warning" value="Giriş" runat="server" onserverclick="Button1_Click" />
								<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
							<%--<button type="submit" class="btn btn-default">Login</button>--%>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">YA DA</h2>
				</div>
				<div class="col-sm-4">
					<div ><!--sign up form-->
						<h2>Yeni Hesap Oluştur</h2>
						<%--<form action="">--%>
							<asp:TextBox ID="TextBox3" class="form-control" placeholder="Tc Kimlik No" runat="server"></asp:TextBox><br />
							<asp:TextBox ID="TextBox4" class="form-control" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox><br />
							<asp:TextBox ID="TextBox5" class="form-control" placeholder="Ad" runat="server"></asp:TextBox><br />
							<asp:TextBox ID="TextBox6" class="form-control" placeholder="Soyad" runat="server"></asp:TextBox><br />
							<asp:TextBox ID="TextBox7" class="form-control" placeholder="Şifre" runat="server" TextMode="Password"></asp:TextBox><br />
							<asp:TextBox ID="TextBox8" class="form-control" placeholder="Email" runat="server"></asp:TextBox><br />
							
							<%--<input type="text" class="form-control"  placeholder="Name"/><br />
							<input type="email" class="form-control" placeholder="Email Address"/><br />
							<input type="password" class="form-control" placeholder="Password"/><br />--%>
			<asp:Button ID="Button2" runat="server" class="btn btn-warning" Text="Kayıt Ol" OnClick="Button2_Click" Visible="false" />
							<input id="Button4" type="button" class="btn btn-warning" value="Kayıt" runat="server" onserverclick="Button2_Click" />
						<asp:Label ID="Label2" runat="server" Text=""></asp:Label>

							<%--<button type="submit" class="btn btn-warning">Signup</button>--%>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</div><!--/form-->
    </span>
</asp:Content>
