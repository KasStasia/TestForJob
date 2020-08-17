USE [dbExchangeRates]
Declare @XmlStr XML;
SET @XmlStr= '<ValCurs Date="13.08.2020" name="Foreign Currency Market">
<Valute ID="R01010">
<NumCode>036</NumCode>
<CharCode>AUD</CharCode>
<Nominal>1</Nominal>
<Name>������������� ������</Name>
<Value>52,2386</Value>
</Valute>
<Valute ID="R01020A">
<NumCode>944</NumCode>
<CharCode>AZN</CharCode>
<Nominal>1</Nominal>
<Name>��������������� �����</Name>
<Value>43,1048</Value>
</Valute>
<Valute ID="R01035">
<NumCode>826</NumCode>
<CharCode>GBP</CharCode>
<Nominal>1</Nominal>
<Name>���� ���������� ������������ �����������</Name>
<Value>95,6743</Value>
</Valute>
<Valute ID="R01060">
<NumCode>051</NumCode>
<CharCode>AMD</CharCode>
<Nominal>100</Nominal>
<Name>��������� ������</Name>
<Value>15,0938</Value>
</Valute>
<Valute ID="R01090B">
<NumCode>933</NumCode>
<CharCode>BYN</CharCode>
<Nominal>1</Nominal>
<Name>����������� �����</Name>
<Value>29,7885</Value>
</Valute>
<Valute ID="R01100">
<NumCode>975</NumCode>
<CharCode>BGN</CharCode>
<Nominal>1</Nominal>
<Name>���������� ���</Name>
<Value>44,0247</Value>
</Valute>
<Valute ID="R01115">
<NumCode>986</NumCode>
<CharCode>BRL</CharCode>
<Nominal>1</Nominal>
<Name>����������� ����</Name>
<Value>13,6074</Value>
</Valute>
<Valute ID="R01135">
<NumCode>348</NumCode>
<CharCode>HUF</CharCode>
<Nominal>100</Nominal>
<Name>���������� ��������</Name>
<Value>24,9179</Value>
</Valute>
<Valute ID="R01200">
<NumCode>344</NumCode>
<CharCode>HKD</CharCode>
<Nominal>10</Nominal>
<Name>����������� ��������</Name>
<Value>94,4908</Value>
</Valute>
<Valute ID="R01215">
<NumCode>208</NumCode>
<CharCode>DKK</CharCode>
<Nominal>1</Nominal>
<Name>������� �����</Name>
<Value>11,5624</Value>
</Valute>
<Valute ID="R01235">
<NumCode>840</NumCode>
<CharCode>USD</CharCode>
<Nominal>1</Nominal>
<Name>������ ���</Name>
<Value>73,2351</Value>
</Valute>
<Valute ID="R01239">
<NumCode>978</NumCode>
<CharCode>EUR</CharCode>
<Nominal>1</Nominal>
<Name>����</Name>
<Value>85,9560</Value>
</Valute>
<Valute ID="R01270">
<NumCode>356</NumCode>
<CharCode>INR</CharCode>
<Nominal>100</Nominal>
<Name>��������� �����</Name>
<Value>97,8686</Value>
</Valute>
<Valute ID="R01335">
<NumCode>398</NumCode>
<CharCode>KZT</CharCode>
<Nominal>100</Nominal>
<Name>������������� �����</Name>
<Value>17,4461</Value>
</Valute>
<Valute ID="R01350">
<NumCode>124</NumCode>
<CharCode>CAD</CharCode>
<Nominal>1</Nominal>
<Name>��������� ������</Name>
<Value>55,0392</Value>
</Valute>
<Valute ID="R01370">
<NumCode>417</NumCode>
<CharCode>KGS</CharCode>
<Nominal>100</Nominal>
<Name>���������� �����</Name>
<Value>94,3360</Value>
</Valute>
<Valute ID="R01375">
<NumCode>156</NumCode>
<CharCode>CNY</CharCode>
<Nominal>1</Nominal>
<Name>��������� ����</Name>
<Value>10,5439</Value>
</Valute>
<Valute ID="R01500">
<NumCode>498</NumCode>
<CharCode>MDL</CharCode>
<Nominal>10</Nominal>
<Name>���������� ����</Name>
<Value>43,9983</Value>
</Valute>
<Valute ID="R01535">
<NumCode>578</NumCode>
<CharCode>NOK</CharCode>
<Nominal>10</Nominal>
<Name>���������� ����</Name>
<Value>81,5536</Value>
</Valute>
<Valute ID="R01565">
<NumCode>985</NumCode>
<CharCode>PLN</CharCode>
<Nominal>1</Nominal>
<Name>�������� ������</Name>
<Value>19,5221</Value>
</Valute>
<Valute ID="R01585F">
<NumCode>946</NumCode>
<CharCode>RON</CharCode>
<Nominal>1</Nominal>
<Name>��������� ���</Name>
<Value>17,8066</Value>
</Valute>
<Valute ID="R01589">
<NumCode>960</NumCode>
<CharCode>XDR</CharCode>
<Nominal>1</Nominal>
<Name>��� (����������� ����� �������������)</Name>
<Value>103,2351</Value>
</Valute>
<Valute ID="R01625">
<NumCode>702</NumCode>
<CharCode>SGD</CharCode>
<Nominal>1</Nominal>
<Name>������������ ������</Name>
<Value>53,3123</Value>
</Valute>
<Valute ID="R01670">
<NumCode>972</NumCode>
<CharCode>TJS</CharCode>
<Nominal>10</Nominal>
<Name>���������� ������</Name>
<Value>71,0331</Value>
</Valute>
<Valute ID="R01700J">
<NumCode>949</NumCode>
<CharCode>TRY</CharCode>
<Nominal>1</Nominal>
<Name>�������� ����</Name>
<Value>10,0288</Value>
</Valute>
<Valute ID="R01710A">
<NumCode>934</NumCode>
<CharCode>TMT</CharCode>
<Nominal>1</Nominal>
<Name>����� ����������� �����</Name>
<Value>20,9542</Value>
</Valute>
<Valute ID="R01717">
<NumCode>860</NumCode>
<CharCode>UZS</CharCode>
<Nominal>10000</Nominal>
<Name>��������� �����</Name>
<Value>71,5767</Value>
</Valute>
<Valute ID="R01720">
<NumCode>980</NumCode>
<CharCode>UAH</CharCode>
<Nominal>10</Nominal>
<Name>���������� ������</Name>
<Value>26,6053</Value>
</Valute>
<Valute ID="R01760">
<NumCode>203</NumCode>
<CharCode>CZK</CharCode>
<Nominal>10</Nominal>
<Name>������� ����</Name>
<Value>32,8733</Value>
</Valute>
<Valute ID="R01770">
<NumCode>752</NumCode>
<CharCode>SEK</CharCode>
<Nominal>10</Nominal>
<Name>�������� ����</Name>
<Value>83,8640</Value>
</Valute>
<Valute ID="R01775">
<NumCode>756</NumCode>
<CharCode>CHF</CharCode>
<Nominal>1</Nominal>
<Name>����������� �����</Name>
<Value>80,0296</Value>
</Valute>
<Valute ID="R01810">
<NumCode>710</NumCode>
<CharCode>ZAR</CharCode>
<Nominal>10</Nominal>
<Name>��������������� ������</Name>
<Value>41,8948</Value>
</Valute>
<Valute ID="R01815">
<NumCode>410</NumCode>
<CharCode>KRW</CharCode>
<Nominal>1000</Nominal>
<Name>��� ���������� �����</Name>
<Value>61,8498</Value>
</Valute>
<Valute ID="R01820">
<NumCode>392</NumCode>
<CharCode>JPY</CharCode>
<Nominal>100</Nominal>
<Name>�������� ���</Name>
<Value>68,5947</Value>
</Valute>
</ValCurs>'

INSERT INTO dbo.Valute (ValuteID, CharCode, Name, Nominal, ValueMoney, Date)
SELECT	XList.XCol.value('(@ID)[1]', 'varchar(10)') as ValuteID,
        XList.XCol.value('(CharCode)[1]', 'varchar(3)') as CharCode,
		XList.XCol.value('(Name)[1]', 'varchar(50)') as Name,
		XList.XCol.value('(Nominal)[1]', 'int') as Nominal,
		XList.XCol.value('(Value)[1]', 'varchar(10)') as ValueMoney,
		XList.XCol.value('(../@Date)[1]', 'date') as Date
 FROM @XmlStr.nodes('/ValCurs/Valute') AS XList(XCol)

