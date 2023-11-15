<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LoginContent" runat="server">
    
    <div class="login-container">
        <h1>Logowanie</h1>
        <div class="form-container">
            
            <asp:Label ID="lblUsername" runat="server" Text="Nazwa użytkownika:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="input"></asp:TextBox>
            <asp:Label ID="lblPassword" runat="server" Text="Hasło:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input"></asp:TextBox>
            <div class="buttons">
            <asp:Button ID="btnLogin" runat="server" Text="Zaloguj się" OnClick="btnLogin_Click" CssClass="buttonlayout" />
            <asp:Button ID="btnRegister" runat="server" Text="Przejdź do rejestracji" OnClick="btnRegister_Click" CssClass="buttonlayout" />
            </div>
            <asp:Label ID="lblError" runat="server" Text="" Visible="false" CssClass="label" ForeColor="red"></asp:Label>

        </div>
    </div>
</asp:Content>
