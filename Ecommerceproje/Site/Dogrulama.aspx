<%@ Page Title="" Language="C#" MasterPageFile="~/Site/AnaSite.Master" AutoEventWireup="true" CodeBehind="Dogrulama.aspx.cs" Inherits="Ecommerceproje.Site.Dogrulama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
			<div class="row">
                <div class="col-sm-4 col-sm-offset-1">
    Lütfen kaydı tamamlamak için Emailinize gelen doğrulama kodunu aşağıdaki kutucuğa giriniz.
                    <br>
                <asp:TextBox ID="TextBox1" class="form-control" placeholder="Doğrulama kodu" runat="server"></asp:TextBox><br>
                <asp:Button ID="Button1" runat="server" class="btn btn-warning" Text="Button" OnClick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
        </div>
    </div>
</asp:Content>
