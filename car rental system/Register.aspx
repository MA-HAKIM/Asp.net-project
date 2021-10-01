<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1259332.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row form-group mb-1">
         <div class="col-12">
            <h3>Register</h3>
            <div visible="false" class="alert alert-warning alert-dismissible fade show" role="alert" id="alert" runat="server">
              <strong>Failed.</strong> Register user failed.
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </div>
        <div class="col-2">
            <label>UserName</label>
        </div>
        <div class="col-4">
            <asp:TextBox ID="username" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
        </div>
    </div>
     <div class="row form-group mb-1">
        <div class="col-2">
            <label>Password</label>
        </div>
        <div class="col-4">
            <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
        </div>
    </div>
    <div class="row form-group">
        <div class="col-2"></div>
        <div class="col-4">
             <asp:Button ID="Button1" CssClass="btn btn-sm btn-outline-primary" runat="server" Text="Register"  OnClick="Button1_Click"/>

        </div>
    </div>
   </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
