﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1dv406_1_3_konvertera_temperaturer
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			// Sätter fokus vid GET av sidan
			StartTempBox.Focus();
		}

		protected void SendButton_Click(object sender, EventArgs e)
		{
			if (IsValid)
			{
				ConvTempTable.Visible = true;
				var startTemp = int.Parse(StartTempBox.Text);
				var endTemp = int.Parse(EndTempBox.Text);
				var tempInterval = int.Parse(TempIntervalBox.Text);

				// Skiftar °C & °F i tabellrubriken om konvertering från Fahrenheit väljs
				if (FToCButton.Checked)
				{
					HeaderCell1.Text = "&degF";
					HeaderCell2.Text = "&degC";
				}

				// Loopar igenom värdena från textfälten för att bestämma 
				// antalet rader och kolumner i tabellen
				for (int i = startTemp; i <= endTemp; i += tempInterval)
				{
					TableRow tRow = new TableRow();
					TableCell[] arr = new TableCell[] 
					{
						new TableCell(),
						new TableCell()
					};
					ConvTempTable.Rows.Add(tRow);
					tRow.Cells.AddRange(arr);

					arr[0].Text = String.Format("{0}", i);
					arr[1].Text = FToCButton.Checked ?
						String.Format("{0}", Model.TemperatureConverter.FahrenheitToCelsius(i)) :
						String.Format("{0}", Model.TemperatureConverter.CelsiusToFahrenheit(i));
				}
			}
		}
	}
}