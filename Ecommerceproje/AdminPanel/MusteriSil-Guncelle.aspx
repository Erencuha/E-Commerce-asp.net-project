<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="MusteriSil-Guncelle.aspx.cs" Inherits="Ecommerceproje.AdminPanel.MusteriSil_Guncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <%

         Ecommerceproje.MusteriCRUD musteri = new Ecommerceproje.MusteriCRUD();
         System.Data.DataTable dt = new System.Data.DataTable();
         dt = musteri.liste();
                                %>
  




     <div class="row">
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Müşteri Sil-Güncelle</h2>
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
                          <th>Tc Kimlik</th>
                          <th>Kullanıcı Adı</th>
                          <th>Ad</th>
                          <th>Soyad</th>
                          <th>Şifre</th>
                          <th>Email</th>
                            <th>Sil</th>
                            <th>Güncelle</th>
                        </tr>
                      </thead>


                      <tbody>


                          <%    for (int i = 0; i < dt.Rows.Count; i++)
                              {%>


                        <tr>
                          <td><%=dt.Rows[i][0] %></td>
                          <td><%=dt.Rows[i][1] %></td>
                          <td><%=dt.Rows[i][2] %></td>
                          <td><%=dt.Rows[i][3] %></td>
                          <td><%=dt.Rows[i][4] %></td>
                             <td><%=dt.Rows[i][5] %></td>
                                <td><a href="<%--MusteriSil-Guncelle.aspx?musterisil=<%=dt.Rows[i][5] %>--%>" data-toggle="modal" data-target="#sil-onay<%=dt.Rows[i][0] %>" class="btn btn-app" >
                              <i class="fa fa-trash"></i> Sil
                                 </a></td>
                          
                            <td><a href="MusteriGuncelle.aspx?musteriguncelle=<%=dt.Rows[i][0] %>"" class="btn btn-app">
                    <i class="fa fa-edit"></i> Güncelle
                  </a>







                               
                            </td>
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
                             <div class="modal fade" id="sil-onay<%=dt.Rows[i][0] %>" tabindex="-1" role="dialog" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-body text-center font-18">
											<h5 class="padding-top-30 mb-30 weight-500"><%=dt.Rows[i][2] %><%=dt.Rows[i][3] %> Adlı Kullanıcıyı</h5>
											<h4 class="padding-top-30 mb-30 weight-500">Silmek istediğinize emin misiniz?</h4>
											<div class="padding-bottom-30 row" style="max-width: 170px; margin: 0 auto;">
												<div class="col-6">
													<button type="button" class="btn btn-secondary border-radius-100 btn-block confirmation-btn" data-dismiss="modal"><i class="fa fa-times"></i></button>
													HAYIR
												</div>
												<div class="col-6">
													
								                         <a href="MusteriSil-Guncelle.aspx?musterisil=<%=dt.Rows[i][5] %>" <%--class="btn btn-primary border-radius-100 btn-block confirmation-btn"--%>> 
														
													  
													<button type="button"  class="btn btn-primary border-radius-100 btn-block confirmation-btn" >
														<i class="fa fa-check"></i></button>
														EVET
															 </a>
													<%//Evet Butonu %>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

                              <%} %>

</asp:Content>
