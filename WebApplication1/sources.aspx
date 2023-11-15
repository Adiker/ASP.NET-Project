<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="sources.aspx.cs" Inherits="WebApplication1.sources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
       .hrefs{
           display: flex;
           flex-direction: column;
           gap: 40px;
           margin-top: 40px;
       }
    </style>
    <div class="main">
        <div class="hrefs">
        <a href="https://www.ppe.pl/gry/TrackMania-Nations-Forever/10626">TM: Nations Forever</a>
        <a href="https://pl.wikipedia.org/wiki/Wied%C5%BAmin_3:_Dziki_Gon">Wiedźmin 3: Dziki Gon</a>
        <a href="https://pl.wikipedia.org/wiki/Red_Dead_Redemption_2">Red Dead Redemption 2</a>
        <a href="https://pl.wikipedia.org/wiki/Half-Life_2">HL2</a>
        <a href="https://pl.wikipedia.org/wiki/Horizon_Zero_Dawn">Horizon: Zero Dawn</a>
        </div>
    </div>
    
</asp:Content>
