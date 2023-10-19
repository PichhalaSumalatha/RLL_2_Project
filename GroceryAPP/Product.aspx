<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="GroceryAPP.Product1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
              <asp:Button ID="createButton" runat="server" Text="Add Products" CssClass="btn btn-info mt-1" CommandName="Create" CommandArgument='<%# Eval("ProductId") %>' OnClick="createButton_Click" Width="160px" />


            <asp:DropDownList ID="CategoryDropDown" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CategoryDropDown_SelectedIndexChanged">
            </asp:DropDownList>


            <br/>
        </div>
    </div>
    <div class="row">
        <asp:Repeater ID="ProductRepeater" runat="server">
            <ItemTemplate>
                <div class='col-md-3 mb-4'>
                    <div class='card h-100'>
                        <div class='card-body d-flex flex-column'>
                            <asp:Image ID="ProductImage" runat="server" ImageUrl='<%# Eval("ProductImage") %>' CssClass="card-img-top" />
                            <h5 class='card-title text-center'><%# Eval("ProductName") %></h5>
                            <p class='card-text text-center'><%# Eval("Price", "{0:C}") %></p>
                            <asp:Button ID="AddToCartButton" runat="server" Text="Add to Cart" CssClass="btn btn-outline-primary mt-auto" CommandName="AddToCart" CommandArgument='<%# Eval("ProductId") %>' />

                            <asp:Button ID="EditButton" runat="server" Text="Edit" CssClass="btn btn-info mt-1" CommandName="Edit" CommandArgument='<%# Eval("ProductId") %>' />
 <asp:Button ID="DeleteButton" runat="server" Text="Delete" CssClass="btn btn-danger mt-1" CommandName="Delete" CommandArgument='<%# Eval("ProductId") %>' />
                        </div>

                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>




