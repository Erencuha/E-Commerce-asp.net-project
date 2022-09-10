<%@ Page Title="" Language="C#" MasterPageFile="~/Site/AnaSite.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Ecommerceproje.Site.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">






















     <div id="contact-page" class="container">
    	<div class="bg">


			<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="default.aspx">Anasayfa</a></li>
				  <li class="active">İletişim</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Mesaj numarası</td>
							<td class="description">Başlık</td>
							<td class="price">Detaylı Gör</td>
							
							<td></td>
						</tr>
					</thead>
					<tbody>

						<%Ecommerceproje.MusteriCRUD mustercrud = new Ecommerceproje.MusteriCRUD();
                            //Ecommerceproje.Musteri musteri = new Ecommerceproje.Musteri();
                            System.Data.DataTable dt = new System.Data.DataTable();
                            dt = mustercrud.mgoster(Session["uye"].ToString());
							%>

					













						<%for (int i = 0; i < dt.Rows.Count; i++)
                            {%>
								<tr>				
							<td class="cart_product">
								<p><%=dt.Rows[i][0] %></p>
							</td>
							<td class="cart_description">
								<%--<h4><a href="">Colorblock Scuba</a></h4>--%>
								<p><%=dt.Rows[i][2] %></p>
							</td>
							<td class="cart_price">
								<p><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#gprm<%=dt.Rows[i][0] %>">Detaylı İncele</button></p>
							</td>
							
							
							
						</tr>
                            <%} %>
						


						










						
					</tbody>
				</table>
			</div>
		</div>


					<%for (int i = 0; i < dt.Rows.Count; i++)
								  {%>
										<div id="gprm<%=dt.Rows[i][0] %>" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
										  <div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">

												<div class="modal-header">
											<h4 class="modal-title" id="myLargeModalLabel">Deetaylı Mesaj Bilgileri:</h4>
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										</div>

											   <div class="modal-body">
												
												<div class="table-responsive">
												<table class="table table-striped">
																							
												
												<tr>
												<td>Başlık</td>
												<td>:</td>
												<td><%=dt.Rows[i][2] %></td>
												</tr>

												<tr>
												<td>Mesaj</td>
												<td>:</td>
												<td><%=dt.Rows[i][3] %></td>
												</tr>

												<tr>
												<td>Yanıt</td>
												<td>:</td>
												<td><%=dt.Rows[i][4] %></td>
												</tr>

												
												

												</table>
													
												</div>
												   

											   </div>

													<div class="modal-footer">
														<button type="button" class="btn btn-primary" data-dismiss="modal">Kapat</button>
														<%--<button type="button" class="btn btn-primary">Save changes</button>--%>
													</div>
																						
											</div>
										  </div>
										</div>
								<%} %> 





	</section> <!--/#cart_items-->





	    	<%--<div class="row">    		
	    		<div class="col-sm-12">    			   			
					<h2 class="title text-center">Contact <strong>Us</strong></h2>    			    				    				
					<div id="gmap" class="contact-map">
					</div>
				</div>			 		
			</div> --%>   	
    		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    				<h2 class="title text-center">Messaj Sayfası</h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<%--<form id="main-contact-form" class="contact-form row" name="contact-form" method="post">--%>
				           <%-- <div class="form-group col-md-6">
				                <input type="text" name="name" class="form-control" required="required" placeholder="Name">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="email" class="form-control" required="required" placeholder="Email">
				            </div>--%>
				            <div class="form-group col-md-12">
				               <%-- <input type="text" name="subject" class="form-control" required="required" placeholder="Subject">--%>
		 <asp:TextBox ID="TextBox1" class="form-control"  placeholder="Konu" runat="server"></asp:TextBox>
				            </div>
				            <div class="form-group col-md-12">
				                <%--<textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>--%>
								<asp:TextBox ID="TextBox2" class="form-control"   placeholder="Mesaj" runat="server" TextMode="MultiLine" Height="310px" Width="710px"></asp:TextBox>

				            </div>                        
				            <div class="form-group col-md-12">
				                <%--<input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">--%>
								<%if (Session["uye"]!=null)
                                    { %>
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary pull-right" Text="Gönder" OnClick="Button1_Click" />
                                  <%  }
                                      else
                                      {%>
								 <asp:Button ID="Button2" runat="server" class="btn btn-primary pull-right" Text="Gönder" OnClick="Button2_Click" />
                                     <% }%>
			 
				            </div>
				        </form>
	    			</div>
	    		</div>
	    		<div class="col-sm-4">
	    			<div class="contact-info">
	    				<h2 class="title text-center">Contact Info</h2>
	    				<address>
	    					<p>Eren E-Ticaret</p>
							
							<p>Osmangazi/Bursa</p>
							
							<p>Tel: 0537 471 3964</p>
							<p>Email: ErenE-Ticaret@hotmail.com</p>
	    				</address>
	    				<div class="social-networks">
	    					<h2 class="title text-center">Social Networking</h2>
							<ul>
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-google-plus"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-youtube"></i></a>
								</li>
							</ul>
	    				</div>
	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
</asp:Content>
