<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="UrunListele.aspx.cs" Inherits="Ecommerceproje.AdminPanel.UrunListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                          <%     Ecommerceproje.UrunCRUD urun = new Ecommerceproje.UrunCRUD();
                                System.Data.DataTable dt = new System.Data.DataTable();
                                dt = urun.liste();
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
                          <th>Urun Kategori ID</th>
                          <th>Ürün Markası</th>
                          <th>Ürün Adı</th>
                          <th>Ürün Fiyat</th>
                          <th>Ürün KDV</th>
                          <th>ParaBirimi</th>
                            <th>Ürün Stok ID</th>
                          <th>Ürün Barkod</th>
                          <th>Ürün Stok Adet</th>
                          <th>Ürün Stok Türü</th>
                          <th>Ürün Resim</th>
                            <th>Ürün Kargo Ağırlığı</th>
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
                            <td><%=dt.Rows[i][6] %></td>
                          <td><%=dt.Rows[i][7] %></td>
                          <td><%=dt.Rows[i][8] %></td>
                          <td><%=dt.Rows[i][9] %></td>
                          <td><img alt="" src="<%=dt.Rows[i][10] %>" height="50" width="50"/></td>
                          <td><%=dt.Rows[i][11] %></td>
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
   





</asp:Content>
