<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="carbooking.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                             <asp:Label ID="Label1" runat="server" Text=" Register Form " Font-Bold="True" Font-Size="XX-Large" ForeColor="Black"></asp:Label><br />
                            <hr />
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Label ID="Label2" runat="server" Text="Full Name" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="fullname" runat="server" placeholder="Full Name"></asp:TextBox><br /><br />
                                        </div>
                                          <div class="col-6">
                                            <asp:Label ID="Label3" runat="server" Text="Phone No" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="phonenum" runat="server" Placeholder="Contact No"></asp:TextBox><br /><br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                              <asp:Label ID="Label8" runat="server" Text="Email" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Example@gmail"></asp:TextBox><br /><br />
                           
                           <div class="row">
                               <div class="col-12">
                                   <div class="row">
                                       <div class="col-4">
                                            <asp:Label ID="Label5" runat="server" Text="ID" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="userid" runat="server" placeholder="ID"></asp:TextBox><br /><br />
                                       </div>
                                       <div class="col-4">
                                            <asp:Label ID="Label6" runat="server" Text="Password" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password"></asp:TextBox><br /><br />
                                       </div>
                                       <div class="col-4">
                                             <asp:Label ID="Label7" runat="server" Text="Confirm password" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="cnfmpasswrd" runat="server" placeholder="Confirm Password"></asp:TextBox><br /><br />
                                       </div>
                                   </div>
                               </div>
                           </div>
                            
                            
                            <asp:Label ID="Label4" runat="server" Text="Address" Font-Bold="True" Font-Size="Large"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="address" runat="server" placeholder="H.No,Street,Pincode,City,State."></asp:TextBox><br /><br />
                           
                            <asp:Button CssClass="btn btn-success" Width="100" ID="registerbtn" runat="server" Text="Register" />
                          
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </center>
    

</asp:Content>
