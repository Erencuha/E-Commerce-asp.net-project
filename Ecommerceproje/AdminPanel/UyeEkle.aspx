<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="UyeEkle.aspx.cs" Inherits="Ecommerceproje.AdminPanel.UyeEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">









    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Müşteri Ekleme Ekranı <small></small></h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                      <%--  <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Settings 1</a>
                                                <a class="dropdown-item" href="#">Settings 2</a>
                                            </div>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>--%>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>




                                <script>    
                                    function alertme() {
                                        Swal.fire(
                                            'Tebrikler!',
                                            'Kayıt İşleminiz Başarılı!',
                                            'success'
                                        )


                                    }

                                </script>
                                <script id="basarisizgiris">
                                    function basarisizgiris() {

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
                                            title: 'Girdiğiniz Tc Kimlik Numarası Kayıtlı!'
                                        })
                                    }
                                </script>
                                 <script id="kaditekrar">
                                     function kaditekrar() {

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
                                             title: 'Girdiğiniz Kullanıcı Adı Kullanımda!'
                                         })
                                     }
                                 </script>
                                <script id="emailtekrar">
                                    function emailtekrar() {

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
                                            title: 'Girdiğiniz Email Kayıtlı!'
                                        })
                                    }
                                </script>


    <div class="x_content">
                                    <form class="" action="" method="post" novalidate>
                                       <%-- <p>For alternative validation library <code>parsleyJS</code> check out in the <a href="form.html">form page</a>--%>
                                        </p>
                                        <span class="section">Müşteri Ekleme</span>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Tc Kimlik No<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                <%--<input class="form-control" data-validate-length-range="6" data-validate-words="2" name="name" placeholder="ex. John f. Kennedy" required="required" />--%>
                                                <asp:TextBox ID="TextBox1" class="form-control" data-validate-length-range="6" required="required"  data-validate-words="2" runat="server"></asp:TextBox>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ErrorMessage="Bu alanın doldurulması zorunludur!" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                               
                                                
                                            </div>
                                        </div>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Kullanıcı Adı<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                 <asp:TextBox ID="TextBox2" class="form-control" data-validate-length-range="6" required="required"  data-validate-words="2" runat="server"></asp:TextBox>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ErrorMessage="Bu alanın doldurulması zorunludur!" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                                <%--<input class="form-control" class='optional' name="occupation" data-validate-length-range="5,15" type="text" />--%></div>
                                        </div>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Ad<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                 <asp:TextBox ID="TextBox3" class="form-control" data-validate-length-range="6" required="required"  data-validate-words="2" runat="server"></asp:TextBox>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ErrorMessage="Bu alanın doldurulması zorunludur!" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                               <%-- <input class="form-control" name="email" class='email' required="required" type="email" />--%></div>
                                        </div>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Soyad<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                 <asp:TextBox ID="TextBox4" class="form-control" data-validate-length-range="6" required="required"  data-validate-words="2" runat="server"></asp:TextBox>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" runat="server" ErrorMessage="Bu alanın doldurulması zorunludur!" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                <%--<input class="form-control" type="email" class='email' name="confirm_email" data-validate-linked='email' required='required' />--%></div>
                                        </div>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Şifre <span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                 <asp:TextBox ID="TextBox5" class="form-control" data-validate-length-range="6" required="required"  data-validate-words="2" runat="server" ></asp:TextBox>
                                               <%-- <input class="form-control" type="number" class='number' name="number" data-validate-minmax="10,100" required='required'>--%>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Bu alanın doldurulması zorunludur!" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Şifreniz 4-10 Karakter arasında olmalı ve en az 1 büyük harf 1 küçük harf ve 1 sayı bulundurmalıdır  " ControlToValidate="TextBox5" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,10}$" Display="Dynamic" ViewStateMode="Enabled" CssClass="text-md-center" ForeColor="Red"></asp:RegularExpressionValidator>

                                            </div>
                                            
                                        </div>
                                          
                                              
                                        <div class="field item form-group">

                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Email<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                 <asp:TextBox ID="TextBox6" class="form-control" data-validate-length-range="6" required="required"  type="email" data-validate-words="2" TextMode="Email" runat="server"></asp:TextBox>
                                                 <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Bu alanın doldurulması zorunludur!" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                                                <%--<input class="form-control" class='date' type="date" name="date" required='required'>--%></div>
                                        </div>
                                       <%-- <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Time<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                <input class="form-control" class='time' type="time" name="time" required='required'></div>
                                        </div>
                                        
                                        <div class="field item form-group">
											<label class="col-form-label col-md-3 col-sm-3  label-align">Password<span class="required">*</span></label>
											<div class="col-md-6 col-sm-6">
												<input class="form-control" type="password" id="password1" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}" title="Minimum 8 Characters Including An Upper And Lower Case Letter, A Number And A Unique Character" required />
												
												<span style="position: absolute;right:15px;top:7px;" onclick="hideshow()" >
													<i id="slash" class="fa fa-eye-slash"></i>
													<i id="eye" class="fa fa-eye"></i>
												</span>
											</div>
										</div>
                                        
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Repeat password<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                <input class="form-control" type="password" name="password2" data-validate-linked='password' required='required' /></div>
                                        </div>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Telephone<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                <input class="form-control" type="tel" class='tel' name="phone" required='required' data-validate-length-range="8,20" /></div>
                                        </div>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">message<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                <textarea required="required" name='message'></textarea></div>
                                        </div>--%>
                                      <%--  <div class="ln_solid">--%>
                                            <div class="form-group">
                                                <div class="col-md-6 offset-md-3">
                                                    <%--<button type='submit' class="btn btn-primary">Submit</button>--%>
                                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Kaydet" OnClick="Button1_Click" />
                   
                                                    <%--<button type='reset' class="btn btn-success">Reset</button>--%>
                                                </div>
                                            </div>
                                        </div>
     </div>
                            </div>
        </div>
    
                                  <%--  </form>
                                </div>--%>


    
</asp:Content>
