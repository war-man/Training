using System.Collections.Generic;
using System.Xml;
using System.Xml.Schema;

namespace XmlSamples.Sample01
{
	internal static class CustomerReader
	{
		private const string CUSTOMERS_NAMESPACE = "http://tc.belhard.com/2012/Customers";

		/// <summary>
		/// ���������� ������ �������� ����������� �� ���������� XML ����� � ������� ������ XmlDocument
		/// </summary>
		/// <param name="customersXmlPath">���� � ����� customers.xml</param>
		/// <param name="customersXsdPath">���� � ����� customers.xsd</param>
		/// <returns>C����� ��������</returns>
		/// <remarks>�������� ��������, ��� �� ������ ���������� ��������� ���� ���� ������ �� ��������� �� �����</remarks>
		/// <exception cref="InvalidCustomerFileException">������� ���� �� ������������� XML �����</exception>
		public static List<Customer> GetCustomersUsingXmlDocument(string customersXmlPath, string customersXsdPath = null)
		{
			var customers = new List<Customer>();

			var xmlDoc = new XmlDocument();
			xmlDoc.Load(customersXmlPath);
			if (customersXsdPath != null)
			{
				xmlDoc.Schemas.Add(CUSTOMERS_NAMESPACE, customersXsdPath);

				try
				{
					xmlDoc.Validate(null);
				}
				catch (XmlSchemaValidationException ex)
				{
					throw new InvalidCustomerFileException("Customer.xml has some errors", ex);
				}
			}

			var nsmgr = new XmlNamespaceManager(xmlDoc.NameTable);
			nsmgr.AddNamespace("c", CUSTOMERS_NAMESPACE);

			XmlNodeList customerNodes = xmlDoc.DocumentElement.SelectNodes("c:Customer", nsmgr);
			foreach (XmlElement customerElement in customerNodes)
			{
				customers.Add(CreateCustomerFromXmlElement(customerElement, nsmgr));
			}

			return customers;
		}

		/// <summary>
		/// ���������� ������ �������� ����������� �� ���������� XML ����� � ������� ������ XmlTextReader
		/// </summary>
		/// <param name="customersXmlPath">���� � ����� customers.xml</param>
		/// <param name="customersXsdPath">���� � ����� customers.xsd</param>
		/// <returns>C����� ��������</returns>
		/// <remarks>�������� ��������, ��� �� ������ ���������� ��������� ���� ���� ������ �� ��������� �� �����</remarks>
		/// <exception cref="InvalidCustomerFileException">������� ���� �� ������������� XML �����</exception>
		public static List<Customer> GetCustomersUsingXmlReader(string customersXmlPath, string customersXsdPath = null)
		{
			var customers = new List<Customer>();
			
			XmlReaderSettings readerSettings = null;
			if (customersXsdPath != null)
			{
				readerSettings = new XmlReaderSettings();
				readerSettings.Schemas.Add(CUSTOMERS_NAMESPACE, customersXsdPath);
				readerSettings.ValidationType = ValidationType.Schema;
			}

			try
			{
				using (var reader = XmlReader.Create(customersXmlPath, readerSettings))
				{
					while (reader.Read())
					{
						if (reader.NodeType == XmlNodeType.Element)
						{
							if (reader.Name == "Customer")
							{
								using (XmlReader innerReader = reader.ReadSubtree())
								{
									if (innerReader.Read())
									{
										var customer = new Customer();
										customer.CustomerId = innerReader.GetAttribute("CustomerId");

										innerReader.ReadToFollowing("CompanyName");
										customer.CompanyName = innerReader.ReadElementContentAsString();

										innerReader.ReadToFollowing("Country");
										customer.Country = innerReader.ReadElementContentAsString();

										customers.Add(customer);
									}
								}
							} // if (reader.Name == "Customer")
						} // if (reader.NodeType == XmlNodeType.Element)
					}
				}
			}
			catch(XmlSchemaValidationException ex)
			{
				throw new InvalidCustomerFileException("Customer.xml has some errors", ex);
			}

			return customers;
		}

		/// <summary>
		/// ���������� ������ �������� ����������� �� ���������� XML ����� � ������� ������� XmlTextReader � XmlDocument
		/// </summary>
		/// <param name="customersXmlPath">���� � ����� customers.xml</param>
		/// <returns>C����� ��������</returns>
		/// <remarks>�������� ��������, ��� �� ������ ���������� ��������� ���� ���� ������ �� ��������� �� �����</remarks>
		public static List<Customer> GetCustomersUsingXmlReaderAndXmlDocument(string customersXmlPath)
		{
			var customers = new List<Customer>();

			using (var reader = XmlReader.Create(customersXmlPath))
			{
				while (reader.Read())
				{
					if (reader.NodeType == XmlNodeType.Element)
					{
						if (reader.Name == "Customer")
						{
							XmlDocument xmlDoc = new XmlDocument();
							xmlDoc.LoadXml(reader.ReadOuterXml());

							var nsmgr = new XmlNamespaceManager(xmlDoc.NameTable);
							nsmgr.AddNamespace("c", CUSTOMERS_NAMESPACE);

							customers.Add(CreateCustomerFromXmlElement(xmlDoc.DocumentElement, nsmgr));
						} // if (reader.Name == "Customer")
					} // if (reader.NodeType == XmlNodeType.Element)
				}
			}

			return customers;
		}

		/// <summary>
		/// ������� ��������� Customer �� ������ XmlElement'a
		/// </summary>
		/// <param name="customerElement"></param>
		/// <param name="nsmgr"></param>
		/// <returns></returns>
		private static Customer CreateCustomerFromXmlElement(XmlElement customerElement, XmlNamespaceManager nsmgr)
		{
			var customer = new Customer { CustomerId = customerElement.GetAttribute("CustomerId") };

			XmlNode companyNameNode = customerElement.SelectSingleNode("c:CompanyName", nsmgr);
			if (companyNameNode != null)
			{
				customer.CompanyName = companyNameNode.InnerText;
			}

			XmlNode countryNode = customerElement.SelectSingleNode("c:FullAddress/c:Country", nsmgr);
			if (countryNode != null)
			{
				customer.Country = countryNode.InnerText;
			}

			return customer;
		}
	}
}