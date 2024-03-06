<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmContactUs.aspx.cs" Inherits="frmContactUs"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="f1" runat="server">
    <table width="800" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td valign="top">
                 <img src="images/contact-us-banner.jpg" height="200" style="width: 1000px" />
            </td>
        </tr>
        <tr>
            <td height="200" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="50%" valign="top" align="center">
                        <br />
                        <img src="images/contact%20us.gif" 
                                style="border: thin dotted blue; width: 462px; margin-right: 0px; margin-top: 0px;" />
                        </td>
                        <td width="50%" valign="top">
                            <table border="0" cellpadding="2" cellspacing="0" width="100%" 
                                style="color: #FFFFFF">
                                <tr>
                                    <td width="25%">
                                        <b>Name</b></td>
                                    <td width="2%">
                                        <b>:</b></td>
                                    <td>
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Email ID</b>
                                    </td>
                                    <td>
                                        <b>:</b>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmailId"
                                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Contact No</b></td>
                                    <td>
                                        <b>:</b></td>
                                    <td>
                                        <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContactNo"
                                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Subject</b></td>
                                    <td>
                                        <b>:</b></td>
                                    <td>
                                        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSubject"
                                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Message</b></td>
                                    <td>
                                        <b>:</b></td>
                                    <td>
                                        <asp:TextBox ID="txtMessage" runat="server" Height="72px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMessage"
                                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" CssClass="btnstyle" Text="Submit" 
                                            onclick="Button1_Click" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblName" runat="server" ForeColor="#C00000"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .btnstyle
        {
            height: 26px;
        }
    </style>

</asp:Content>


