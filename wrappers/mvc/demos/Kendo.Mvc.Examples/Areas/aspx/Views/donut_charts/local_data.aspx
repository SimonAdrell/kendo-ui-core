﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master"
Inherits="System.Web.Mvc.ViewPage<IEnumerable<Kendo.Mvc.Examples.Models.ElectricitySource>>" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<div class="chart-wrapper">
    <%= Html.Kendo().Chart(Model)
        .Name("chart")
        .Title("Break-up of Spain Electricity Production for 2008")
        .Legend(legend => legend
            .Position(ChartLegendPosition.Bottom)
        )
        .SeriesColors(new string[] { "#42a7ff", "#666666", "#999999", "#cccccc" })
        .Series(series =>
        {
            series.Donut(
                model => model.Percentage,
                model => model.Source,
                null, // Color expression is omitted
                model => model.Explode
            );
        })
        .Tooltip(tooltip => tooltip.
            Template("${ category } - ${ value }%").Visible(true)
        )
    %>
</div>
</asp:Content>
