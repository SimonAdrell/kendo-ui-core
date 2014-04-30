﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<div class="chart-wrapper">
    <%= Html.Kendo().Chart()
        .Name("chart")
        .Title("March Weather Report")
        .Legend(legend => legend
            .Position(ChartLegendPosition.Bottom)
        )
        .Series(series =>
        {
            series
                .Line(new double[] { 6, 10, 10, 10, 10, 9, 5, 5, 10, 8, 8, 5, 8, 11, 9, 15, 20, 23, 24, 21, 21, 20, 22, 22, 20, 18, 16, 15, 20, 13.2, 18 })
                .Color("#ff1c1c")
                .Name("Max. Temperature [&deg;C]")
                .Axis("temp");
            series
                .Line(new double[] { -5, -6, 0, -4, -3, -5.2, -5, -1.7, -1, 0, -0.4, -2, -2, -5, 4, -2, -4, -1, -1, 2, 4, -1, 1, 1, 4, 0, -1, 1, -2, 5.7, 5 })
                .Color("#ffae00")
                .Name("Min. Temperature [&deg;C]")
                .Axis("temp");
            series
                .Area(new double[] { 16.4, 21.7, 35.4, 19, 10.9, 13.6, 10.9, 10.9, 10.9, 16.4, 16.4, 13.6, 13.6, 29.9, 27.1, 16.4, 13.6, 10.9, 16.4, 10.9, 24.5, 10.9, 8.1, 19, 21.7, 27.1, 24.5, 16.4, 27.1, 29.9, 27.1 })
                .Name("MPG")
                .Color("#73c100")
                .Name("Wind Speed [km/h]")
                .Axis("wind");
            series
                .Area(new double[] { 5.4, 2, 5.4, 3, 2, 1, 3.2, 7.4, 0, 8.2, 0, 1.8, 0.3, 0, 0, 2.3, 0, 3.7, 5.2, 6.5, 0, 7.1, 0, 4.7, 0, 1.8, 0, 0, 0, 1.5, 0.8 })
                .Name("l/100 km")
                .Color("#007eff")
                .Name("Rainfall [mm]")
                .Axis("rain");
        })
        .CategoryAxis(axis => axis
            .Categories("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31")
            // Align the first two value axes to the left
            // and the last two to the right.
            //
            // Right alignment is done by specifying a
            // crossing value greater than or equal to
            // the number of categories.
            .AxisCrossingValue(32, 32, 0)
            .Justify(true)
        )
        .ValueAxis(axis => axis
            .Numeric("rain")
            .Color("#007eff")
            .Min(0)
            .Max(60)
        )
        .ValueAxis(axis => axis
            .Numeric("wind")
            .Color("#73c100")
            .Min(0)
            .Max(60)
        )
        .ValueAxis(axis => axis
            .Numeric("temp")
            .Min(-30)
            .Max(30)
        )
        .Tooltip(tooltip => tooltip
            .Visible(true)
            .Format("{0}")
            .Template("#= category #/03: #= value #")
        )
    %>
</div>
</asp:Content>
