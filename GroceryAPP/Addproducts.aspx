<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Addproducts.aspx.cs" Inherits="GroceryAPP.AddProductsaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="color: blue; text-align: center;">Add Products</h2>

    <div style="text-align: center;">
        <div style="display: inline-block; text-align: left;">
            <asp:Label ID="categoryIdLabel" runat="server" Text="Category ID: " AssociatedControlID="categoryIdTextBox" />
            <asp:TextBox ID="categoryIdTextBox" runat="server" /><br />
            <asp:Label ID="productImageLabel" runat="server" Text="Image to upload: " AssociatedControlID="f1" />
            <asp:FileUpload ID="f1" runat="server" />
            <br />
            <asp:Label ID="productNameLabel" runat="server" Text="Product Name: " AssociatedControlID="productNameTextBox" />
            <asp:TextBox ID="productNameTextBox" runat="server" />
            <br />
            <asp:Label ID="productPriceLabel" runat="server" Text="Price: " AssociatedControlID="productPriceTextBox" />
            <asp:TextBox ID="productPriceTextBox" runat="server" />
            <br />
            <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" BackColor="Lime" ForeColor="White" />
            <br />
            <asp:Label ID="LblMsg" runat="server" CssClass="mt-2"></asp:Label>
        </div>
    </div>
</asp:Content>






--%>




<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="GroceryAPP.AddProductsaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="color: blue; text-align: center;">Add Products</h2>

    <div style="text-align: center; border: 1px solid #ccc; padding: 5px; border-radius: 2px;">
        <div style="display: inline-block; text-align: left;">
            <asp:Label ID="categoryIdLabel" runat="server" Text="Category ID: " AssociatedControlID="categoryIdTextBox" />
            <asp:TextBox ID="categoryIdTextBox" runat="server" /><br />
            <asp:Label ID="productImageLabel" runat="server" Text="Image to upload: " AssociatedControlID="f1" />
            <asp:FileUpload ID="f1" runat="server" />
            <br />
            <asp:Label ID="productNameLabel" runat="server" Text="Product Name: " AssociatedControlID="productNameTextBox" />
            <asp:TextBox ID="productNameTextBox" runat="server" />
            <br />
            <asp:Label ID="productPriceLabel" runat="server" Text="Price: " AssociatedControlID="productPriceTextBox" />
            <asp:TextBox ID="productPriceTextBox" runat="server" />
            <br />
            <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" BackColor="#0066FF" ForeColor="Black" />
            <br />
            <asp:Label ID="LblMsg" runat="server" CssClass="mt-2"></asp:Label>
        </div>
    </div>
</asp:Content>
