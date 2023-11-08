<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" MasterPageFile="~/NestedMasterPage2.master" Inherits=WebApplication1.register %>



<asp:Content ID="Content2" ContentPlaceHolderID="RegisterContent" runat="server">
    <div class="register-container">
    <h1>Rejestracja</h1>
    <div class="registration-form">
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        <asp:Label ID="lblSuccess" runat="server" ForeColor="Green"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" placeholder="Nazwa użytkownika: "></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Hasło: "></asp:TextBox>
        <asp:Button ID="btnRegister" runat="server" Text="Zarejestruj" OnClick="btnRegister_Click" CssClass="button" />
        <asp:Button ID="btnRedirect" runat="server" Text="Przejdź do strony logowania" OnClick="btnRedirect_Click" CssClass="button"/>
    </div>
        </div>
</asp:Content>
