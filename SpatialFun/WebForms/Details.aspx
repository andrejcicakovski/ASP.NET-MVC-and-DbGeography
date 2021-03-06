﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="MvcApplication2.WebForms.Details" MasterPageFile="~/Views/Shared/Site.Master" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h2>Modify this template to jump-start your WebForm application.</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Details</h2>
        <asp:FormView runat="server" ItemType="MvcApplication2.Models.TouristAttraction" ID="attractionDetails"
            SelectMethod="attractionDetails_GetItem">
            <ItemTemplate>
                Name:<br />
                <asp:DynamicControl DataField="name" runat="server" ClientIDMode="Static" />
                <br />
                Location:
                <asp:DynamicControl DataField="location" runat="server" />
                <br />
                <a id="A1" href='<%# FriendlyUrl.Href("~/WebForms/Edit", Item.TouristAttractionId ) %>'>Edit</a>
                | <a id="A1" href='<%# FriendlyUrl.Href("~/WebForms") %>'>Back To List</a>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
