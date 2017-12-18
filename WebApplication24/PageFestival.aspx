<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaître.Master" AutoEventWireup="true" CodeBehind="PageDate.aspx.cs" Inherits="WebApplication24.WebForm2" UICulture="auto"%>

<%--Programmeur : Alex Boudreault
Dernière modification le : 17 décembre 2017
Objectif de la page : Cette page à pour but de permettre à l'utilisateur
de sélectionner un date qui sera enregistré dans un cookie pour recevoir 
de l'information sur les événements ultérieurs en Pologne.--%>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <%--On créer et on ajuste tous les paramètres de mise en page --%>
    <style>
        .Calendrier
        {
           background-color: white;
           margin-left: 25%;
        }
        .Bouton
        {
           margin-left:38%;
           margin-bottom:30%;
           background-color: #ffffcc;
           border-color: #ffffcc;
        }
        .CalendrierBordure 
        {
            padding:5%;
            border:3px solid;
            margin-left: 30%;
            margin-top: 10%;
            margin-right: 25%;
            border-color: #3399ff;
        }
        .LB
        {
   
            color: #3399ff;
            font-weight: bold;
            font-size: 30px;
        }
    </style>

    <%--On créer une division pour l'intérieur du cadre --%>
    <div class="CalendrierBordure">
       
    <%--On créer un Label qui contiendra les informations pour l'utilisateur 
        s'il n'a pas choisi de date--%>
    <asp:Label
        ID="LB_Info_Calendrier"
        runat="server"
        Text="<%$ Resources:Site, Info_Calendrier %>"
        CssClass="LB">
    </asp:Label>


    <%--On créer un Label qui contiendra les informations pour l'utilisateur 
    s'il a choisi une date--%>
    <asp:Label
        ID="LB_Date_Choisi"
        runat="server"
        Text="<%$ Resources:Site, Date_Choisie %>"
        Visible ="false"
        CssClass="LB">
    </asp:Label>

    <%--On créer le calendrier --%>
    <asp:Calendar
         ID="Calendrier_1"
         runat="server"
         CssClass="Calendrier" Width="235px">
    </asp:Calendar>
    
    <%--Changement de ligne --%>
    <br />
    
    <%--On créer un bouton pour enregistrer la date dans un cookie --%>
    <asp:Button
         ID="BT_Enregistrer_Date"
         runat="server"
         Text="Enregistrer Date" 
         CssClass="Bouton"
         OnClick="BT_Enregistrer_Date_Click"/>
    </div>
</asp:Content>
