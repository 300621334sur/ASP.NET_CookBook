﻿<%@ Page Title="Address Book" MasterPageFile="MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="addressBook.aspx.cs" Inherits="addressBook" %>

<asp:Content ID="addressBookContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Address Book using GridView</h1>

<asp:GridView AutoGenerateColumns="False" CssClass="addressGridView" id="grid" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="grid_SelectedIndexChanged" >
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:BoundField DataField="CookName" HeaderText="Name" />
        <asp:HyperLinkField DataTextField="CookEmail" NavigateUrl="search.aspx" HeaderText="eMail" />
        <%--No code for asp:ButtonField's action, it's secretly done by this ctrl. Clicking this btm fires "SelectedIndexChanged" made by doubleClick on grid--%>
        <asp:ButtonField CommandName="Select" HeaderText="ButtonField" ShowHeader="True" Text="Select This Row" />



    </Columns>
    <%--Following styles AutoGenerated: in design mode select grid, click SmartTab, Auto Format, choose from available styles--%>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />

</asp:GridView>
   
    <br /><asp:Label ID="gridLbl" runat="server" Text=""></asp:Label>


    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>
    <asp:Label id="focusHereWhenGridViewRowSelected" runat="server" />
</asp:Content>
