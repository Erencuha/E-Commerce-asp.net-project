<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="Ecommerceproje.AdminPanel.UrunEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
						<div class="col-md-12 col-sm-12 ">
							<div class="x_panel">
								<div class="x_title">
									<h2>Form Design <small>different form elements</small></h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
										</li>
										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a class="dropdown-item" href="#">Settings 1</a>
												</li>
												<li><a class="dropdown-item" href="#">Settings 2</a>
												</li>
											</ul>
										</li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

										<div class="item form-group">
											<label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Ürün Kategorisi</label>
											
											<div class="col-md-6 col-sm-6 ">
												<%--<asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>--%>
												<asp:DropDownList ID="DropDownList2" class="custom-select col-8" runat="server" AutoPostBack="True"></asp:DropDownList>
												<%--<asp:Label ID="Label2" runat="server" Text="Yeni Kategori Ekle" class="btn btn-primary col-4-form-label" data-toggle="modal" data-target="#y_yazar_ekle" causesvalidation="false"></asp:Label>--%>
<%--                                                <asp:DropDownList ID="DropDownList1" runat="server" class="custom-select col-8" AutoPostBack="True">
                                                </asp:DropDownList>									--%>
								<%--<asp:Label ID="Label2" runat="server" Text="Yeni Kategori Ekle" class="btn btn-primary col-4-form-label" data-toggle="modal" data-target="#y_yazar_ekle" causesvalidation="false"></asp:Label>--%>
											</div>
										</div>

										<div class="item form-group">
											<label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Ürün Kategori Ekleme</label>
											
											<div class="col-md-6 col-sm-6 ">
												<%--<asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>--%>
											
												<%--<asp:Label ID="Label1" runat="server" Text="Yeni Kategori Ekle" class="btn btn-primary col-4-form-label" data-toggle="modal" data-target="#y_yazar_ekle" causesvalidation="false"></asp:Label>--%>
<%--                                                <asp:DropDownList ID="DropDownList1" runat="server" class="custom-select col-8" AutoPostBack="True">
                                                </asp:DropDownList>									--%>
												<asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
												<asp:Button ID="Button5" runat="server" Text="Kaydet" CssClass="btn btn-primary" onclick="Button5_Click" ValidationGroup="yazarkayit"  />
								<%--<asp:Label ID="Label2" runat="server" Text="Yeni Kategori Ekle" class="btn btn-primary col-4-form-label" data-toggle="modal" data-target="#y_yazar_ekle" causesvalidation="false"></asp:Label>--%>
											</div>
										</div>

										
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Ürün Markası <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<%--<input type="text" id="last-name" name="last-name" required="required" class="form-control">--%>
												<asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Ürün Adı</label>
											<div class="col-md-6 col-sm-6 ">
												<%--<input id="middle-name" class="form-control" type="text" name="middle-name">--%>
												<asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Ürün Fiyatı <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<%--<input type="text" id="first-name" required="required" class="form-control ">--%>
												<asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Ürün KDV <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<%--<input type="text" id="first-name" required="required" class="form-control ">--%>
												<asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Para Birimi <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<%--<input type="text" id="first-name" required="required" class="form-control ">--%>
												<asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Ürün Stok ID <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<%--<input type="text" id="first-name" required="required" class="form-control ">--%>
												<asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Ürün Barkod <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<%--<input type="text" id="first-name" required="required" class="form-control ">--%>
												<asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Stok Adet <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<%--<input type="text" id="first-name" required="required" class="form-control ">--%>
												<asp:TextBox ID="TextBox11" runat="server" class="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Ürün Stok Türü <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<%--<input type="text" id="first-name" required="required" class="form-control ">--%>
												<asp:TextBox ID="TextBox12" runat="server" class="form-control"></asp:TextBox>
											</div>
										</div>

										

										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Ürün Resim <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
											</div>
										</div>



										
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Kargo Kg <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<%--<input type="text" id="first-name" required="required" class="form-control ">--%>
												<asp:TextBox ID="TextBox13" runat="server" class="form-control"></asp:TextBox>
											</div>
										</div>
										

										<%--<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">Gender</label>
											<div class="col-md-6 col-sm-6 ">
												<div id="gender" class="btn-group" data-toggle="buttons">
													<label class="btn btn-secondary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
														<input type="radio" name="gender" value="male" class="join-btn"> &nbsp; Male &nbsp;
													</label>
													<label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
														<input type="radio" name="gender" value="female" class="join-btn"> Female
													</label>
												</div>
											</div>
										</div>--%>
										<%--<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">Date Of Birth <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input id="birthday" class="date-picker form-control" placeholder="dd-mm-yyyy" type="text" required="required" type="text" onfocus="this.type='date'" onmouseover="this.type='date'" onclick="this.type='date'" onblur="this.type='text'" onmouseout="timeFunctionLong(this)">
												<script>
													function timeFunctionLong(input) {
														setTimeout(function() {
															input.type = 'text';
														}, 60000);
													}
												</script>
											</div>
										</div>--%>
										<div class="ln_solid"></div>
										<div class="item form-group">
											<div class="col-md-6 col-sm-6 offset-md-3">
												<asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Kaydet" onclick="Button1_Click"/>
											</div>
										</div>

									</form>
								</div>
							</div>
						</div>
					</div>			</div>
						</div>
					</div>

	<div class="modal fade bs-example-modal-lg" id="y_yazar_ekle" tabindex="-1" role="form" aria-labelledby="myLargeModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-lg modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="modal-title" id="y_yazar_ekle">Yeni Kategori Ekle</h4>
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										</div>
										<div class="modal-body">																				

												<div class="form-group row">
													<%--<label class="col-sm-12 col-md-2 col-form-label">Kategori ID</label>
							
													<div class="col-sm-6 col-md-5">								
														<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
													</div>--%>
							
													<div class="col-sm-6 col-md-5 col-form-label">
														<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Yazar adı alanı boş bırakılamaz." ControlToValidate="TextBox5" Font-Size="Small" ForeColor="#EF5A5A" ValidationGroup="yazarkayit"></asp:RequiredFieldValidator>--%>
													</div>														
												</div>

												<div class="form-group row">
													<label class="col-sm-12 col-md-2 col-form-label">Kategori İsmi</label>
							
													<div class="col-sm-6 col-md-5">								
														<%--<asp:TextBox ID="TextBoxa" class="form-control" runat="server"></asp:TextBox>--%>
														<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Kategori Adı Boş Bırakılamaz." ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
													</div>
							
													<div class="col-sm-6 col-md-5 col-form-label">
														<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Yazar soyadı alanı boş bırakılamaz." ControlToValidate="TextBox6" Font-Size="Small" ForeColor="#EF5A5A" ValidationGroup="yazarkayit" ></asp:RequiredFieldValidator>--%>
													</div>														
												</div>


										</div>
										<div class="modal-footer">
											<asp:Button ID="Button4" runat="server" Text="İptal" class="btn btn-secondary" data-dismiss="modal" OnClick="Button4_Click"/>
											
											<input id="Button2" type="button" value="Kaydet" Class="btn btn-primary" onserverclick="Button5_Click" runat="server" />
											
										</div>
									</div>
								</div>
							</div>
</asp:Content>
