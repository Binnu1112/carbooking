﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="carbooking.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br />
    <br />
    <br />
    <br />

    <center>
       <body style="background-color:black;">
        <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <form runat="server">
                            <asp:Label ID="Label2" runat="server" Text="Login" Font-Bold="True" Font-Size="XX-Large" ForeColor="#00CC00"></asp:Label><br /><hr />
                            <asp:Label ID="Label" runat="server" Text="ID" Font-Bold="True" Font-Size="Larger" ForeColor="Black"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="id" runat="server" placeholder="ID"></asp:TextBox><p /><br />
                             <asp:Label ID="Label1" runat="server" Text="Password" Font-Bold="True" Font-Size="Larger" ForeColor="Black"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox><p /><br />
                            <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
       </body>    
    </center>
</asp:Content>
