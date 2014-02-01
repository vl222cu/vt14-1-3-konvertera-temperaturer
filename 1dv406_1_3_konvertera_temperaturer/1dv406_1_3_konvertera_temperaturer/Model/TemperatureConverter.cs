using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1dv406_1_3_konvertera_temperaturer.Model
{
	public static class TemperatureConverter
	{
		// Formel för konvertering från Celsius till Fahrenheit 
		public static int CelsiusToFahrenheit(int degreesC)
		{
			return Convert.ToInt32(degreesC * 1.8 + 32);
		}

		// Formel för konvertering från Fahrenheit till Celsius 
		public static int FahrenheitToCelsius(int degreesF)
		{
			return Convert.ToInt32((degreesF - 32) * 5 / 9);
		}


	}
}