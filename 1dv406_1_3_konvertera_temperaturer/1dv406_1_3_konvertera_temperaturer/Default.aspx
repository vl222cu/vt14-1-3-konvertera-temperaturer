<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1dv406_1_3_konvertera_temperaturer.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konvertera temperaturer</title>
</head>
<body>
    <form id="form1" runat="server">
		<div id="maincontainer">
			<h1>
				<asp:Label ID="TitleLabel" runat="server" Text="Konvertera temperaturer"></asp:Label>
			</h1>
			<div id="content">
				<%-- Input fields --%>
				<asp:Label ID="StartTempLabel" runat="server" Text="Starttemperatur:"></asp:Label><br />
				<asp:TextBox ID="StartTempBox" runat="server"></asp:TextBox><br />
				<asp:Label ID="EndTempLabel" runat="server" Text="Sluttemperatur"></asp:Label><br />
				<asp:TextBox ID="EndTempBox" runat="server"></asp:TextBox><br />
				<asp:Label ID="LevelTempLabel" runat="server" Text="Temperatursteg:"></asp:Label><br />
				<asp:TextBox ID="LevelTempBox" runat="server"></asp:TextBox><br />
				<asp:Label ID="ConvertTitleLabel" runat="server" Text="Typ av konvertering"></asp:Label><br />
				<asp:RadioButtonList ID="MyRadioButtonList" runat="server">
					<asp:ListItem Value="Celsius till Fahrenheit" />
					<asp:ListItem Value="Fahrenheit till Celsius" />
				</asp:RadioButtonList>
				<asp:Button ID="SendButton" runat="server" Text="Konvertera" />
			</div>
		</div>
    </form>
</body>
</html>
