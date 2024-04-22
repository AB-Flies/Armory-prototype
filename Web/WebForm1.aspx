<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx" Inherits="proWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Product management </h1>
    <p>
        Code &nbsp;&nbsp; <asp:TextBox id="Code" runat="server" Width="253px"></asp:TextBox>
    </p>
    <p>
        Name &nbsp;&nbsp; <asp:TextBox id="Name" runat="server" Width="253px"></asp:TextBox>
    </p>
    <p>
        Amount &nbsp;&nbsp; <asp:TextBox id="Amount" runat="server" Width="125px"></asp:TextBox>
    </p>
    <p> 
        Category &nbsp;&nbsp; <asp:DropDownList runat="server" id="Category" name="Category">  
                              </asp:DropDownList>
    </p>
    <p>
        Price &nbsp;&nbsp; <asp:TextBox id="Price" runat="server" Width="125px"></asp:TextBox>
    </p>
    <p>
        Creation Date &nbsp;&nbsp; <asp:TextBox id="Creation_Date" runat="server" Width="253px"></asp:TextBox>
    </p>
    <p>
        <asp:Button runat="server" Text="Create" OnClick="Create"/>&nbsp;&nbsp;
        <asp:Button runat="server" Text="Update" OnClick="Update"/>&nbsp;&nbsp;
        <asp:Button runat="server" Text="Delete" OnClick="Delete"/>&nbsp;&nbsp;
        <asp:Button runat="server" Text="Read" OnClick="Read"/>&nbsp;&nbsp;
        <asp:Button runat="server" Text="Read First" OnClick="ReadFirst"/>&nbsp;&nbsp;
        <asp:Button runat="server" Text="Read Prev" OnClick="ReadPrev"/>&nbsp;&nbsp;
        <asp:Button runat="server" Text="Read Next" OnClick="ReadNext"/>
    </p>
    <asp:Label ID="label" runat="server" style="border-radius: 25px; border-width: 10px; border-style: solid; border-color: white;" ></asp:Label>
</asp:Content>
