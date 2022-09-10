<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="MusteriGuncelle.aspx.cs" Inherits="Ecommerceproje.AdminPanel.Musteri_Güncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <asp:Panel ID="Panel1" runat="server" Visible="False"> <div class="alert alert-success" role="alert">
                                                Kayıt Başarıyla Güncellendi
                                            </div></asp:Panel>


     <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Müşteri Güncelleme Ekranı</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Settings 1</a>
                                                <a class="dropdown-item" href="#">Settings 2</a>
                                            </div>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <form class="" action="" method="post" novalidate>
                                        
                                        </p>
                                        <span class="section">Müşteri Bilgileri</span>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Tc Kimlik No<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                <%--<input class="form-control" data-validate-length-range="6" data-validate-words="2" name="name" placeholder="ex. John f. Kennedy" required="required" />--%>
                                                <asp:TextBox ID="TextBox1" Cssclass="form-control" data-validate-length-range="6" data-validate-words="2" runat="server" Enabled="False"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Kullanıcı Adı<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                               <%-- <input class="form-control" class='optional' name="occupation" data-validate-length-range="5,15" type="text" />--%>
                                                <asp:TextBox ID="TextBox2" class="form-control" data-validate-length-range="6" data-validate-words="2" runat="server"></asp:TextBox>
                                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


                                            </div>
                                        </div>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Ad<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                               <%-- <input class="form-control" name="email" class='email' required="required" type="email" />--%>
                                                <asp:TextBox ID="TextBox3" class="form-control" data-validate-length-range="6" data-validate-words="2" runat="server"></asp:TextBox>


                                            </div>
                                        </div>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Soyad<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                               <%-- <input class="form-control" type="email" class='email' name="confirm_email" data-validate-linked='email' required='required' />--%>
                                                <asp:TextBox ID="TextBox4" class="form-control" data-validate-length-range="6" data-validate-words="2" runat="server"></asp:TextBox>


                                            </div>
                                        </div>
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Şifre<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                              <%--  <input class="form-control" type="number" class='number' name="number" data-validate-minmax="10,100" required='required'>--%>
                                                <asp:TextBox ID="TextBox5" class="form-control" data-validate-length-range="6" data-validate-words="2" runat="server"></asp:TextBox>


                                            </div>
                                        </div>
                                        
                                       
                                        <div class="field item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3  label-align">Email<span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6">
                                                <%--<input class="form-control" type="tel" class='tel' name="phone" required='required' data-validate-length-range="8,20" />--%>
                                                <asp:TextBox ID="TextBox6" class="form-control"  data-validate-length-range="6" data-validate-words="2" runat="server" TextMode="Email"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bu Alanın Doldurulması Zorunludur." ControlToValidate="TextBox6"></asp:RequiredFieldValidator>


                                            </div>
                                        </div>
                                        
                                       
                                            <div class="form-group">
                                                <div class="col-md-6 offset-md-3">
                                                    <%--<button type='submit' class="btn btn-primary">Submit</button>--%>
                                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Kaydet" OnClick="Button1_Click" />
                                                    
                                                </div>
                                            </div>
                                        
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>
