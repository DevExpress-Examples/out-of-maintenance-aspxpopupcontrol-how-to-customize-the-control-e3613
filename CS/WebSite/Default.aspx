<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxPopupControl - How to customize the control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxButton ID="btn" runat="server" Text="Show PopUp" AutoPostBack="false">
            <ClientSideEvents Click="function (s,e) {popup.Show();}" />
        </dx:ASPxButton>
    </div>
    <div>
        <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ClientInstanceName="popup" PopupElementID="btn"
            DragElement="Window" HeaderText="Directed by: Ridley Scott" MaxHeight="600px"
            MaxWidth="600px" MinHeight="100px" MinWidth="210px" CloseAction="MouseOut" PopupAction="MouseOver" 
            AppearAfter="4000" DisappearAfter="4000" Top="20" Left="80" AllowResize="true" AllowDragging="true"
            ResizingMode="Postponed" SaveStateToCookies="true">
            <CloseButtonImage Url="Images/close.png" AlternateText="No image" />
            <ContentStyle ForeColor="#666677" Font-Names="Tahoma" Font-Size="10px" />
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    <div>
                        When a Roman general is betrayed and his family murdered by a corrupt prince, he
                        comes to Rome as a gladiator to seek revenge.</div>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
    </div>
    </form>
</body>
</html>
