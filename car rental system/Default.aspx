<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1259332.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col-4">
            <asp:LoginView ID="LoginView1" runat="server">
                            <AnonymousTemplate >
                                <div class="table table-bordered bg-light">
                                    <a href="/Register.aspx" class="nav-link">* Click Here To Register</a>
                                </div>
                                <div class="table table-bordered bg-light">
                                    <a href="/Login.aspx" class="nav-link">* Click Here To Login</a>
                                </div>
                            </AnonymousTemplate>

                </asp:LoginView>
        </div>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
