<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="carbooking.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <center>
        <div class="container">
        <div class="row">
            <div class="col-md-9 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <form runat="server">
                            <asp:Label ID="Label1" runat="server" Text=" Register Form " Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                            <hr />
                            <asp:Label ID="Label2" runat="server" Text="Full Name" Font-Bold="True"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="fullname" runat="server" placeholder="Full Name"></asp:TextBox><br /><br />
                            <asp:Label ID="Label3" runat="server" Text="Phone No" Font-Bold="True"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="phonenum" runat="server" Placeholder="Contact No"></asp:TextBox><br /><br />
                            <asp:Label ID="Label4" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="Example@gmail"></asp:TextBox><br /><br />
                            <asp:Label ID="Label5" runat="server" Text="ID" Font-Bold="True"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="userid" runat="server" placeholder="ID"></asp:TextBox><br /><br />
                            <asp:Label ID="Label6" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password"></asp:TextBox><br /><br />
                            <asp:Label ID="Label7" runat="server" Text="Confirm password" Font-Bold="True"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="cnfmpasswrd" runat="server" placeholder="Confirm Password"></asp:TextBox><br /><br />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </center>
    

</asp:Content>
