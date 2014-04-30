﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <%= Html.Kendo().StockChart<Kendo.Mvc.Examples.Models.StockDataPoint>()
        .Name("stockChart")
        .Title("The Boeing Company (NYSE:BA)")
        .DataSource(ds => ds.Read(read => read
            .Action("_BoeingStockData", "Financial")
        ))
        .DateField("Date")
        .Panes(panes =>
        {
            panes.Add().Title("Value");
            panes.Add("volumePane").Title("Volume").Height(150);
        })
        .CategoryAxis(axis => axis.Pane("volumePane"))
        .ValueAxis(axis => axis.Numeric().Line(line => line.Visible(false)))
        .ValueAxis(axis => axis.Numeric("volumeAxis").Pane("volumePane").Visible(false))
        .Series(series =>
        {
            series.Candlestick(s => s.Open, s => s.High, s => s.Low, s => s.Close);
            series.Column(s => s.Volume).Axis("volumeAxis")
                  .Tooltip(tooltip => tooltip.Format("{0:C0}"));
        })
        .Navigator(nav => nav
            .Series(series =>
            {
                series.Area(s => s.Close);
            })
            .Select(
                DateTime.Parse("2009/02/05"),
                DateTime.Parse("2011/10/07")
            )
        )
        .HtmlAttributes(new { style = "height:500px;" })
    %>
</asp:Content>