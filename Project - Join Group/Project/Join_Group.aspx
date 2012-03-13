<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Join_Group.aspx.cs" Inherits="Project._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:DropDownList ID="GroupNameList" runat="server" AutoPostBack="True" 
        DataSourceID="Choose_Group" DataTextField="GroupName" DataValueField="GroupID" 
        Height="16px"
        Width="147px">
    </asp:DropDownList>
    <asp:AccessDataSource ID="Choose_Group" runat="server" 
        DataFile="~/StudentDatabase (Populated Version).accdb" 
        SelectCommand="SELECT [GroupID], [GroupName] FROM [Groups]">
    </asp:AccessDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="Join_Group" 
        DataKeyNames="GroupID">
        <EditItemTemplate>
            GroupID:
            <asp:Label ID="GroupIDLabel1" runat="server" Text='<%# Eval("GroupID") %>' />
            <br />
            GroupName:
            <asp:TextBox ID="GroupNameTextBox" runat="server" 
                Text='<%# Bind("GroupName") %>' />
            <br />
            MemberCount:
            <asp:TextBox ID="MemberCountTextBox" runat="server" 
                Text='<%# Bind("MemberCount") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            GroupID:
            <asp:TextBox ID="GroupIDTextBox" runat="server" 
                Text='<%# Bind("GroupID") %>' />
            <br />
            GroupName:
            <asp:TextBox ID="GroupNameTextBox" runat="server" 
                Text='<%# Bind("GroupName") %>' />
            <br />
            MemberCount:
            <asp:TextBox ID="MemberCountTextBox" runat="server" 
                Text='<%# Bind("MemberCount") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            GroupID:
            <asp:Label ID="GroupIDLabel" runat="server" 
                Text='<%# Eval("GroupID") %>' />
            <br />
            GroupName:
            <asp:Label ID="GroupNameLabel" runat="server" Text='<%# Bind("GroupName") %>' />
            <br />
            MemberCount:
            <asp:Label ID="MemberCountLabel" runat="server" 
                Text='<%# Bind("MemberCount") %>' />
            <br />
            <asp:Button ID="Button1" runat="server" Height="30px" onclick="Button1_Click" 
                Text="Join" Width="100px" />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:AccessDataSource ID="Join_Group" runat="server" 
        DataFile="~/StudentDatabase (Populated Version).accdb" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Groups] WHERE ([GroupID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GroupNameList" Name="GroupID" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="StudentInfo" runat="server" 
        DataFile="~/StudentDatabase (Populated Version).accdb" 
        SelectCommand="SELECT * FROM [Groups]"></asp:AccessDataSource>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
</asp:Content>
