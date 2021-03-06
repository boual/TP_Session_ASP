﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaîtreSecondaire.master" AutoEventWireup="true" CodeBehind="PageWarsaw.aspx.cs" Inherits="WebApplication24.WebForm4" %>

<%--Programmeur : Alex Boudreault
Dernière modification le : 17 décembre 2017
Objectif de la page : Cette page à pour but d'afficher une belle photo de Varsovie
à l'utilisateur.--%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    
    <%--On créer et on ajuste tous les paramètres de mise en page --%>
    <style>
        .PhotoBordure
        {
            border: solid 5px black;
            padding: 5px;
            margin-top: 5%;
            margin-left: 25%;
            margin-right:14%;
            border-color: #3399ff;
        }
        .LB
        {
            margin-left: 21%;
            color: #3399ff;
            font-weight: bold;
            font-size: 30px;
        }
    </style>

    <%--On créer une division pour l'intérieur du cadre --%>
    <div class ="PhotoBordure">

        <%--On créer un Label qui contiendra les informations pour l'usager --%>
        <asp:Label 
            ID="LB_Info_Krakow"
            runat="server"
            text="<%$ Resources:Site, Info_Warsaw %>"
            CssClass="LB">
        </asp:Label>

        <%--On ajoute l'image de Varsovie --%>
        <img src="warsaw-36hours-oldtown-xlarge.jpg" height="550" width="995" runat="server" />

    </div>
</asp:Content>