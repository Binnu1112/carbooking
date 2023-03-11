<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Otpverify.aspx.cs" Inherits="carbooking.Otpverify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <center>
       <body style="background-color:black;">
        <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                 <asp:Label ID="Label1" runat="server" Text="Your Account Has Been Created Successfully" Font-Bold="True" Font-Size="X-Large" ForeColor="#009900"></asp:Label><br /><br />
                <div class="card">
                    <div class="card-body">
                        <form runat="server">
                            <asp:Label ID="Label2" runat="server" Text="Please Verify Your Account By Entering Verification Code Sent To Your Email Address : " ForeColor="Black"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text="Email" ForeColor="Black"></asp:Label><br /><hr />
                            <asp:Label ID="Label4" runat="server" Text="Verify Code" ForeColor="Black"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="code" runat="server" placeholder="Enter Otp"></asp:TextBox><br /><br />
                            <asp:Button CssClass="btn btn-success" ID="verifycode" runat="server" Text="Verify" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
       </body>    
    </center>
</asp:Content>
