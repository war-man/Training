using System;
using System.Collections.Generic;
using System.Globalization;

namespace CultureExplorer.WinForms
{
	class CultureNameComparer : IComparer<CultureInfo>
	{
		public int Compare(CultureInfo x, CultureInfo y)
		{
			return string.Compare(x.Name, y.Name, StringComparison.InvariantCultureIgnoreCase);
		}
	}
}
