<%@ Page Title="Accueil" Language="C#" MasterPageFile="~/PageMaître.Master" AutoEventWireup="true" CodeBehind="PageAccueil.aspx.cs" Inherits="WebApplication24.WebForm3" UICulture="auto"%>

<%--Programmeur : Alex Boudreault
Dernière modification le : 17 décembre 2017
Objectif de la page : Cette page à pour but d'acceuillir l'utilisateur sur notre site
avec une belle image de la pologne.--%>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <%--Création de l'encadré de la photo de
        la pologne ainsi que mise en forme du texte
        des labels --%>
    <style>
        
        .AccueilBordure
        {
            padding:5%;
            border:3px solid black;
            margin-left: 30%;
            margin-top: 10%;
            margin-right: 23%;
            margin-bottom: 20%;
            border-color: #3399ff;
        }
        .LB
        {
            color: #3399ff;
            font-weight: bold;
            font-size: 30px;
        }
    </style>

    <%--On créer une divison pour l'intérieur du cadre --%>
    <div class="AccueilBordure">

        <%--On créer le label qui contiendra l'information
            d'accueil de l'utilisateur--%>
        <asp:Label
            ID="LB_Info_Accueil"
            runat="server"
            Text="<%$ Resources:Site, Info_Accueil %>"
            CssClass="LB">
        </asp:Label>

        <br />

        <%--On ajoute la belle image de la Pologne --%>
        <img src="pologne_158631_pgbighd.jpg" runat="server" />

    </div>
</asp:Content>
