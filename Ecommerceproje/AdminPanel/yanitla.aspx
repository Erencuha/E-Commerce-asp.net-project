<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="yanitla.aspx.cs" Inherits="Ecommerceproje.AdminPanel.yanitla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                     <div class="row">
                         <asp:Panel ID="Panel1" runat="server" Visible="false"> <div class="alert alert-success alert-dismissible " role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                    <strong>Mesaj başarıyla yanıtlandı!</strong>
                  </div></asp:Panel>


                        <asp:TextBox ID="TextBox1" class="form-control" runat="server" TextMode="MultiLine" Height="300"></asp:TextBox>
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Yanıtla" OnClick="Button1_Click" />
                        
      </div>
</asp:Content>
