<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1dv406_1_3_konvertera_temperaturer.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konvertera temperaturer</title>
	<link href="~/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="Myform" runat="server">
		<div id="maincontainer">
			<h1>
				<asp:Label ID="TitleLabel" runat="server" Text="Konvertera temperaturer"></asp:Label>
			</h1>
			<div id="content">
				<p>
					<%-- Starttemperaturinput--%>
					<asp:Label ID="StartTempLabel" runat="server" Text="Starttemperatur:"></asp:Label><br />
					<asp:TextBox ID="StartTempBox" runat="server"></asp:TextBox><br />
					<%-- Validering--%>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
						ErrorMessage="Starttemperatursfältet får inte vara tomt" ControlToValidate="StartTempBox"
						Display="None"></asp:RequiredFieldValidator>
					<asp:CompareValidator ID="CompareValidator1" runat="server"
						ErrorMessage="Starttemperatur måste vara ett heltal" ControlToValidate="StartTempBox"
						Type="Integer" Operator="DataTypeCheck" Display="None"></asp:CompareValidator>
				</p>
				<p>
					<%-- Sluttemperaturinput--%>
					<asp:Label ID="EndTempLabel" runat="server" Text="Sluttemperatur:"></asp:Label><br />
					<asp:TextBox ID="EndTempBox" runat="server"></asp:TextBox><br />
					<%-- Validering--%>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
						ErrorMessage="Sluttemperatursfältet får inte vara tomt" ControlToValidate="EndTempBox"
						Display="None"></asp:RequiredFieldValidator>
					<asp:CompareValidator ID="CompareValidator2" runat="server"
						ErrorMessage="Sluttemperatur måste vara ett heltal högre än starttemperaturen" 
						ControlToValidate="EndTempBox" Type="Integer" Operator="GreaterThan" 
						ControlToCompare="StartTempBox" Display="None">
					</asp:CompareValidator>
				</p>
				<p>
					<%-- Stegtemperaturinput--%>
					<asp:Label ID="TempIntervalLabel" runat="server" Text="Temperatursteg:"></asp:Label><br />
					<asp:TextBox ID="TempIntervalBox" runat="server"></asp:TextBox><br />
					<%-- Validering--%>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
						ErrorMessage="Temperaturstegsfältet får inte vara tomt" ControlToValidate="TempIntervalBox"
						Display="None"></asp:RequiredFieldValidator>
					<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TempIntervalBox"
						Type="Integer" ErrorMessage="Temperatursteget måste ligga mellan 1 och 100"
						MaximumValue="100" MinimumValue="1"  Display="None"></asp:RangeValidator>
				</p>
				<p>
					<%-- Konverteringsval --%>
					<asp:Label ID="ConvertTitleLabel" runat="server" Text="Typ av konvertering"></asp:Label>
				</p>
				<p>
					<asp:RadioButton ID="CToFButton" runat="server" GroupName="Radiogroup" Text="Celsius till Fahrenheit" Checked="True" />
				</p>
				<p>
					<asp:RadioButton ID="FToCButton" runat="server" GroupName="Radiogroup" Text="Fahrenheit till Celsius"/>
				</p>
					<p>
						<asp:Button ID="SendButton" runat="server" Text="Konvertera" OnClick="SendButton_Click"/><br />
					</p>	
					<p>
						<%-- Valideringsfelmeddelanden--%>
						<asp:ValidationSummary ID="ValidationSummary1" runat="server"
							HeaderText="Fel inträffade! Åtgärda felen och försök igen." />
					</p>
				<div id="tablecontainer">
					<asp:Table ID="ConvTempTable" runat="server" Visible="false">
						<asp:TableHeaderRow ID="tableHeader">
							<asp:TableHeaderCell ID="HeaderCell1" Text="&degC"></asp:TableHeaderCell>
							<asp:TableHeaderCell ID="HeaderCell2" Text="&degF"></asp:TableHeaderCell>
						</asp:TableHeaderRow>
					</asp:Table>
				</div>
			</div>
		</div>
    </form>
</body>
</html>

