<%@ Page Title="Delete Product" Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="YourNamespace.Delete" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Product</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Delete a Product</h1>
            <label for="productId">Product ID:</label>
            <asp:TextBox ID="ProductIdTextBox" runat="server"></asp:TextBox>
            <asp:Button ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButton_Click" />
        </div>
    </form>
</body>
</html>
