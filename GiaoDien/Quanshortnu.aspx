﻿<%@ Page Language="C#" MasterPageFile="~/UserControl/NguoiDung.master" AutoEventWireup="true" CodeFile="Quanshortnu.aspx.cs" Inherits="GiaoDien_Quanshortnu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="khung-giua">

<div id="sp-moi">
<div class="title-giua">
Quần short nữ
</div>
<div style="float:left; margin-left:10px">
<asp:DataList ID="dlQuanshortnu" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" Width="551px" 
        onitemcommand="dlQuanshortnu_ItemCommand">
                <ItemTemplate>
                    <table>
                                <tr style="text-align: center; color: #1500FF; font-weight: bold; font-size: 15px">
                                    <td style="height: 35px">
                                        <asp:Label runat="server" ID="lbTenSP" Text='<%#Eval("ProductName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr style="text-align: center">
                                    <td>
                                        <a href="#">
                                            <asp:HyperLink ID="hp1" runat="server" ImageUrl='<%#"~/Image/DoNu/"+Eval("Images") %>'
                                                Width="120px" Height="120px"
                                                NavigateUrl='<%# "ThongTinChiTietSP.aspx?ProductID="+Eval("ProductID") %>'>Hình ảnh</asp:HyperLink>
                   
                                    </td>
                                </tr>
                                <tr style="text-align: center; color: black; font-weight: bold; font-size: 13px;
                                    height: 20px">
                                    <td>
                                        <asp:Label ID="lbMaSP" runat="server" Text='<%#Eval("ProductID")%>'></asp:Label>
                                    </td>
                                </tr>
                                <tr style="text-align: center; color: black; font-weight: bold; font-size: 13px;
                                    height: 20px">
                                    <td>
                                        <asp:Label ID="lbGia" runat="server" Text='<%#Eval("Price")%>'></asp:Label>
                                    </td>
                                </tr>
                                <tr style="text-align: center">
                                    <td>
                                        <asp:ImageButton  ID="imbAddCart" runat="server" ImageUrl="~/Image/Icon/button_red_add_to_cart.jpeg"
                                            CommandName="Them" />
                                    </td>
                                </tr>
                            </table>
                </ItemTemplate>
            </asp:DataList>
</div>
</div>
</div>
</asp:Content>
