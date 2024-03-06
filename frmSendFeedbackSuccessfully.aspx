<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="frmSendFeedbackSuccessfully.aspx.cs" Inherits="frmSendFeedbackSuccessfully"
    %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" width="800" height="380">
    <tr>
    <td>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #FFFFFF;">
                Your Message has been sent to the following receipient</td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: Black;">
                <asp:Label ID="lblName" runat="server" ForeColor="White" Width="321px"></asp:Label>
                
            </td>
        </tr>
    </table>
    </td>
    </tr>
    </table>
</asp:Content>
