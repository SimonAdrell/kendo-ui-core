﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
   <ul id="dairy">
            <li>
                <img src="<%= Url.Content("/content/web/foods/200/12.jpg")%>" alt="Queso Manchego La Pastora" />
                <%= Html.Kendo().Barcode().Name("manchego").Value("2346722").Encoding(BarcodeSymbology.EAN8).Width(200).Height(100) %>
            </li>
            <li>
                <img src="<%= Url.Content("/content/web/foods/200/32.jpg")%>"alt="Mascarpone Fabioli" />
                <%= Html.Kendo().Barcode().Name("mascarpone").Value("Mascarpone").Encoding(BarcodeSymbology.Code128).Width(200).Height(100) %>
            </li>
            <li>
                <img src="<%= Url.Content("/content/web/foods/200/72.jpg")%>" alt="Gudbrandsdalsost" />
                <%= Html.Kendo().Barcode().Name("gudbrands").Value("CHEESE").Encoding(BarcodeSymbology.Code39).Width(200).Height(100) %>
            </li>
        </ul>
        
        <style scoped>
            #dairy {
                margin: 0;
                padding: 30px 25px;
                list-style-type: none;
            }
            #dairy li {
                display: inline-block;
                padding: 10px;
                margin: 6px;
                background-color: #fff;
                
                box-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);
                -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);
                -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);
            }
            #dairy li p, #dairy li img {
                margin: 0;
                padding: 0;
            }
            #dairy li img {
                margin-bottom: 10px;
            }
        </style>

</asp:Content>