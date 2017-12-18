<%@ Page Title="Connexion" Language="C#" MasterPageFile="~/PageMaître.Master" AutoEventWireup="true" CodeBehind="PageLogin.aspx.cs" Inherits="WebApplication24.PageLogin" UICulture="auto"%>

<%--Programmeur : Alex Boudreault
Dernière modification le : 17 décembre 2017
Objectif de la page : Cette page à pour but d'afficher un gridview
qui contient des villes de la Pologne. Il sera possible d'ajouter de modifier
ou de supprimer une ville et les villes seront affichées trois par pages.--%>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%--On créer tous les éléments de mise en page --%>
    <style>
        .LoginBordure
        {
            padding:5%;
            border:3px solid black;
            margin-left: 30%;
            margin-top: 10%;
            margin-right: 39%;
            margin-bottom: 20%;
            border-color: #3399ff;
        }
        .LB
        {
            color: #3399ff;
            font-weight: bold;
        }
    </style>

     <%--On créer une division pour l'intérieur du cadre --%>
    <div class="LoginBordure">

        <%--On créer un Label qui demande à l'utilisateur d'entrer
            son nom d'utilisateur--%>
        <asp:Label
             ID="LB_Username"
             runat="server"
             Text="<%$ Resources:Site, Info_Username %>"
             CssClass="LB">
        </asp:Label>

        <%--On créer un TextBox pour que l'utilisateur entre son
            nom d'utilisateur--%>
        <asp:TextBox
             ID="TB_Username"
             runat="server">
        </asp:TextBox>

        <%--Changement de ligne --%>
        <br />

        <%--On créer un Label qui demande à l'utilisateur d'entrer
            son mot de passe--%>
        <asp:Label
             ID="LB_Password"
             runat="server"
             Text="<%$ Resources:Site, Info_Password %>"
             CssClass="LB">
        </asp:Label>

        <%--On créer un TextBox pour que l'utilisateur entre
            son mot de passe--%>
        <asp:TextBox
             ID="TB_Password"
             runat="server"
             TextMode="Password">
        </asp:TextBox>

        <%--Changement de ligne --%>
        <br />

        <%--On créer un bouton pour effectuer la connection --%>
        <asp:Button
             ID="BT_Login"
             runat="server"
             Text="<%$ Resources:Site, Info_BT_Login %>"
             OnClick="BT_Login_Click" />

    </div>
</asp:Content>

