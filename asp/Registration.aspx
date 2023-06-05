<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="dotnetCPIS358.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Registration Form</h1>
                            </div>
                        </header>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="txtempname"><b>Name</b></asp:Label>
                                        <br />
                                        <asp:TextBox runat="server" required="required" Enabled="true" Font-Names="BrandName" ID="txtempname" class="form-control input-sm" placeholder="Name"></asp:TextBox>

                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>

</asp:Content>
