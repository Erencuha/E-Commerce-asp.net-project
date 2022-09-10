<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="musterimesajlar.aspx.cs" Inherits="Ecommerceproje.AdminPanel.musterimesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    
     <%
                                
                                Ecommerceproje.MusteriCRUD musteri = new Ecommerceproje.MusteriCRUD();
                                System.Data.DataTable dt = new System.Data.DataTable();
                                dt = musteri.tümmgoster();
                                %>

     <div class="row">
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Müşteri Listesi</h2>
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
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                  
                    <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                      <thead>
                        <tr>
                          <th>Mesaj ID</th>
                          <th>Mesaj Başlığı</th>
                          <th>Detaylı Göster</th>
                            <th>Yanıt Ver</th>
                          
                        </tr>
                      </thead>


                      <tbody>


                          <%    for (int i = 0; i < dt.Rows.Count; i++)
                              {%>

						  
                        <tr>
                          <td><%=dt.Rows[i][0] %></td>
                          <td><%=dt.Rows[i][1] %></td>
                          <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#gprm<%=dt.Rows[i][0] %>">Detaylı İncele</button></td>
                        <%-- <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ggprm<%=dt.Rows[i][0] %>">Yanıtla</button></td>--%>


							<%
                                bool cevap = musteri.okunmusmu(Convert.ToInt32( dt.Rows[i][0])) ;


                                if (cevap)
                                {%>
							<td><a href="yanitla.aspx?idprm=<%=dt.Rows[i][0] %>" class="btn btn-danger"> Yanıtlandı</a></td>
                                <%}
                                    else
                                    {%>
							
							<td><a href="yanitla.aspx?idprm=<%=dt.Rows[i][0] %>" class="btn btn-primary"> Yanıtla</a></td>
                                   <% } %>


							
                        </tr>
                       <%    } %>
                       
                      </tbody>
                    </table>
                  </div>
                  </div>
                          </div>
        </div>
      </div>
                    </div>
           </div>
   

    	<%for (int i = 0; i < dt.Rows.Count; i++)
								  {%>
										<div id="gprm<%=dt.Rows[i][0] %>" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
										  <div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">

												<div class="modal-header">
											<h4 class="modal-title" id="gprm<%=dt.Rows[i][0] %>">Deetaylı Mesaj Bilgileri:</h4>
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


    <%for (int i = 0; i < dt.Rows.Count; i++)
								  {%>
										<div id="ggprm<%=dt.Rows[i][0] %>" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
										  <div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">

												<div class="modal-header">
											<h4 class="modal-title" id="ggprm<%=dt.Rows[i][0] %>">Yanıt Verme Ekranı:</h4>
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										</div>

											   <div class="modal-body">
												
												<div class="table-responsive">
												<table class="table table-striped">
																							
													<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
												
													<asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Yanıtla" OnClick="Button1_Click" />

												
												

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








</asp:Content>
