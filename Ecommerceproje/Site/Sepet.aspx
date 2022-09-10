<%@ Page Title="" Language="C#" MasterPageFile="~/Site/AnaSite.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="Ecommerceproje.Site.Sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="default.aspx">Anasayfa</a></li>
				  <li class="active">Alışveriş Sepeti</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Ürün Resmi</td>
							<td class="description">Ürün İsmi</td>
							<td class="price">Fiyatı</td>
							<td class="quantity">Adet</td>
							<td class="total">Toplam</td>
							<td></td>
						</tr>
					</thead>






					<%Ecommerceproje.UrunCRUD yuruncrud = new Ecommerceproje.UrunCRUD();
            System.Data.DataTable dt = yuruncrud.sepetgoster(Session["uye"].ToString());
						%>

					

					<tbody>

						<%for (int i = 0; i < dt.Rows.Count; i++)
                            {     
								
								  Ecommerceproje.Urun urunum = new Ecommerceproje.Urun();
                          urunum = yuruncrud.urungoster(dt.Rows[i][1].ToString());
								%>
						 <%int toplam = Convert.ToInt32(urunum.Ufiyat) * Convert.ToInt32(dt.Rows[i][2]);
                             int gtoplam = 0;
                             gtoplam= gtoplam+ toplam;
							 
							 %>
						<tr>
							<td class="cart_product">
								<a href=""><img src="<%=urunum.Uresim %>" width="75" height="75" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href=""><%=urunum.Urunadi %></a></h4>
								<p><%--Web ID: 1089772--%></p>
							</td>
							<td class="cart_price">
								<p><%=urunum.Ufiyat %></p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href="Sepet.aspx?arttır=<%=dt.Rows[i][1] %>"> + </a>
									<input class="cart_quantity_input" type="text" Enabled="false" name="quantity" value="<%=dt.Rows[i][2] %>" autocomplete="off" size="2" disabled="true">
									
									<a class="cart_quantity_down" href="Sepet.aspx?azalt=<%=dt.Rows[i][1] %>"> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price"><%=toplam %> TL</p>
							</td>
							<td class="cart_delete">
								<%--<a class="cart_quantity_delete" href="Sepet.aspx?brkd=<%=dt.Rows[i][0] %>" runat="server" onserverclick="Button1_Click" ><i class="fa fa-times" ></i></a>--%>
								<a href="Sepet.aspx?gprms=<%=dt.Rows[i][1] %>" class="cart_quantity_input"  role="button"><i class="fa fa-times"  ></i> </a>
							</td>
						</tr>
                           <% } %>

						<asp:Button ID="Button1" runat="server" Text="Button" Visible="false" OnClick="Button1_Click" />


						<%--<tr>
							<td class="cart_product">
								<a href=""><img src="images/cart/two.png" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">Colorblock Scuba</a></h4>
								<p>Web ID: 1089772</p>
							</td>
							<td class="cart_price">
								<p>$59</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a>
									<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
									<a class="cart_quantity_down" href=""> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">$59</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
							</td>
						</tr>
						<tr>
							<td class="cart_product">
								<a href=""><img src="images/cart/three.png" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">Colorblock Scuba</a></h4>
								<p>Web ID: 1089772</p>
							</td>
							<td class="cart_price">
								<p>$59</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a>
									<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
									<a class="cart_quantity_down" href=""> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">$59</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
							</td>
						</tr>--%>
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
			<div class="heading">
				<%--<h3>What would you like to do next?</h3>
				<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>--%>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="chose_area">
						<ul class="user_option">
							<h4>Adres Bilgileri:</h4>
							<li>
								<%--<input type="checkbox">
								<label>Use Coupon Code</label>--%>
								<asp:TextBox ID="TextBox1" CssClass="form-control" Text="Şehir" runat="server" Width="500"></asp:TextBox><br />
							</li>
							<li>
								<%--<input type="checkbox">
								<label>Use Gift Voucher</label>--%>
								<asp:TextBox ID="TextBox2" Text="İlçe" CssClass="form-control" runat="server" Width="500"></asp:TextBox><br />
							</li>
							<li>
							<%--	<input type="checkbox">
								<label>Estimate Shipping & Taxes</label>--%>
								<asp:TextBox ID="TextBox3" Text="Adres" CssClass="form-control" runat="server" TextMode="MultiLine" Height="200" Width="500"></asp:TextBox>
							</li>
						</ul>
					<%--	<ul class="user_info">
							<li class="single_field">
								<label>Country:</label>
								<select>
									<option>United States</option>
									<option>Bangladesh</option>
									<option>UK</option>
									<option>India</option>
									<option>Pakistan</option>
									<option>Ucrane</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
								
							</li>
							<li class="single_field">
								<label>Region / State:</label>
								<select>
									<option>Select</option>
									<option>Dhaka</option>
									<option>London</option>
									<option>Dillih</option>
									<option>Lahore</option>
									<option>Alaska</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
							
							</li>
							<li class="single_field zip-field">
								<label>Zip Code:</label>
								<input type="text">
							</li>--%>
						</ul>
						<%--<a class="btn btn-default update" href="">Get Quotes</a>--%>
						
					</div>
				</div>
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
							<%--<li>Cart Sub Total <span>$59</span></li>
							<li>Eco Tax <span>$2</span></li>--%>

							
							<li>Kargo Bedeli <span>Ücretsiz</span></li>

							<%int kaysay = yuruncrud.sepetsayigoster(Session["uye"].ToString()); %>
							<%if (kaysay==0)
                                {%>
							<li>Toplam Ödenecek Tutar: <span>0</span></li>
                               <%}
                                   else
                                   {%> 
							<%int toplamü = yuruncrud.sepettoplamgoster(Session["uye"].ToString()); %>
							<li>Toplam Ödenecek Tutar: <span><%=toplamü %></span></li>
                                   <% }%>  
							
						</ul>
							<%--<a class="btn btn-default update" href="">Update</a>

							<a class="btn btn-default check_out" href="">Check Out</a>--%>
						<a class="btn btn-default check_out" href="">Ödemeye geç</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->
</asp:Content>
