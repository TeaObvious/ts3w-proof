/* Actual ILSpy 11.1.0 rendering of pristine PC1.67 Sims3Metadata.
 * Assembly identity: ../README.md. Analyst comments mark the selected complete
 * original CIL bodies in ../complate.il.txt. Unannotated members are retained
 * type context; their full contracts and native consumers are not implied.
 * Decompiler local names and C# syntax are not original source symbols.
 */
using System;
using System.Collections;
using System.Text;

namespace Sims3.Metadata;

public class MathParse
{
	private static readonly char[] sOpsChars = new char[4] { '+', '-', '/', '*' };

	// Analyst original MethodDef 0600037f: Ambient double.Parse; op0 plus,1 minus,2 division,3 multiplication. No explicit invariant provider or finite guard.
	private static double ProcessPair(string lval, string rval, int op)
	{
		double num = double.Parse(lval);
		double num2 = double.Parse(rval);
		return op switch
		{
			0 => num + num2, 
			1 => num - num2, 
			2 => num / num2, 
			3 => num * num2, 
			_ => throw new Exception("Unknown op!"), 
		};
	}

	// Analyst original MethodDef 06000380: Consumes multiply/divide first then add/subtract left-to-right, converting intermediate doubles to strings and back with ambient culture.
	private static double ProcessOps(ArrayList ops, ArrayList vals)
	{
		int num = 0;
		while (num < ops.Count)
		{
			int num2 = (int)ops[num];
			if (num2 == 0 || num2 == 1)
			{
				num++;
				continue;
			}
			string lval = (string)vals[num];
			string rval = (string)vals[num + 1];
			double num3 = ProcessPair(lval, rval, num2);
			ops.RemoveAt(num);
			vals.RemoveAt(num);
			vals.RemoveAt(num);
			vals.Insert(num, num3.ToString());
		}
		num = 0;
		while (num < ops.Count)
		{
			int op = (int)ops[num];
			string lval2 = (string)vals[num];
			string rval2 = (string)vals[num + 1];
			double num4 = ProcessPair(lval2, rval2, op);
			ops.RemoveAt(num);
			vals.RemoveAt(num);
			vals.RemoveAt(num);
			vals.Insert(num, num4.ToString());
		}
		return double.Parse((string)vals[0]);
	}

	// Analyst original MethodDef 06000381: Nonrecursive vectorSel comma/end search; selector starts -1. The guard is selector!=-1 and selector<count, not a complete nonnegative range guard.
	public static string ProcessVectors(string input)
	{
		int num = -1;
		string text = input;
		int num2 = text.IndexOf("vectorSel(");
		int num3 = text.IndexOf(")");
		while (num2 != -1 && num3 != -1)
		{
			ArrayList arrayList = new ArrayList();
			int num4 = num2 + "vectorSel(".Length;
			do
			{
				int num5 = text.IndexOf(',', num4);
				bool flag = false;
				if (num5 == -1 || num5 > num3)
				{
					num5 = num3;
					flag = true;
				}
				string text2 = text.Substring(num4, num5 - num4);
				if (flag)
				{
					num = int.Parse(text2);
				}
				else
				{
					arrayList.Add(text2);
				}
				num4 = num5 + 1;
			}
			while (num4 < num3);
			if (num != -1 && num < arrayList.Count)
			{
				text = text.Remove(num2, num3 - num2 + 1);
				text = text.Insert(num2, (string)arrayList[num]);
				num2 = text.IndexOf("vectorSel(");
				num3 = text.IndexOf(")");
				continue;
			}
			throw new Exception("vectorSel has an invalid selector");
		}
		return text;
	}

	// Analyst original MethodDef 06000382: Exact tokenizer uses one Boolean parenthesis flag, removes ASCII spaces and folds plus/minus characters in each operand. It is not a general recursive parenthesized arithmetic parser.
	public static double Parse(string expression)
	{
		ArrayList arrayList = new ArrayList();
		ArrayList arrayList2 = new ArrayList();
		StringBuilder stringBuilder = new StringBuilder();
		StringBuilder stringBuilder2 = new StringBuilder();
		StringBuilder stringBuilder3 = new StringBuilder();
		expression = ProcessVectors(expression);
		while (expression.Length > 0)
		{
			int num = -1;
			stringBuilder3.Length = 0;
			stringBuilder3.Append(expression);
			stringBuilder3.Replace(" ", "");
			stringBuilder.Length = 0;
			stringBuilder2.Length = 0;
			bool flag = false;
			while (stringBuilder3.Length > 0)
			{
				if (num != -1)
				{
					stringBuilder2.Append(stringBuilder3.ToString());
					break;
				}
				char c = stringBuilder3[0];
				stringBuilder3.Remove(0, 1);
				switch (c)
				{
				case '(':
					flag = true;
					continue;
				case ')':
					flag = false;
					continue;
				}
				num = Array.IndexOf(sOpsChars, c);
				if (num == -1)
				{
					stringBuilder.Append(c);
				}
				else if (flag)
				{
					num = -1;
					stringBuilder.Append(c);
				}
			}
			int num2 = 0;
			for (int num3 = stringBuilder.Length - 1; num3 >= 0; num3--)
			{
				switch (Array.IndexOf(sOpsChars, stringBuilder[num3]))
				{
				case 1:
					num2++;
					stringBuilder.Remove(num3, 1);
					break;
				case 0:
					stringBuilder.Remove(num3, 1);
					break;
				}
			}
			if (num2 % 2 != 0)
			{
				stringBuilder.Insert(0, '-');
			}
			string text = stringBuilder.ToString();
			if (text == string.Empty)
			{
				text = "0";
			}
			arrayList.Add(text);
			if (num != -1)
			{
				arrayList2.Add(num);
			}
			expression = stringBuilder2.ToString();
		}
		if (arrayList.Count == 0)
		{
			return 0.0;
		}
		if (arrayList.Count == 1)
		{
			if (arrayList2.Count != 0)
			{
				throw new Exception("Must have a rval to parse!");
			}
			return double.Parse((string)arrayList[0]);
		}
		if (arrayList2.Count == 1)
		{
			return ProcessPair((string)arrayList[0], (string)arrayList[1], (int)arrayList2[0]);
		}
		return ProcessOps(arrayList2, arrayList);
	}
}
