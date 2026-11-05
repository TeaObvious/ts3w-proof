// Original PC 1.67 SimIFace.dll; actual ILSpy type decompilation.
// Analyst: paired original IL establishes field order and constructor stores; modern C# syntax is a decompiler rendering.
using System;
using System.Globalization;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;

namespace Sims3.SimIFace;

[ComVisible(true)]
public struct ResourceKey(ulong inst, uint type, uint group)
{
	public uint TypeId = type;

	public uint GroupId = group;

	public ulong InstanceId = inst;

	public static readonly ResourceKey kInvalidResourceKey = new ResourceKey(0uL, 0u, 0u);

	public static readonly string kPunctuationRegexStr = "[\\p{Pc}\\p{Pd}\\p{Ps}\\p{Pe}\\p{Po}\\p{Pi}\\p{Pf}]";

	public static readonly Regex kResourceKeyRegex = new Regex("^(0x)?([0-9a-fA-F]{1,8})" + kPunctuationRegexStr + "+(0x)?([0-9a-fA-F]{1,8})" + kPunctuationRegexStr + "+(0x)?(([0-9a-fA-F]{1,16})|([0-9a-fA-F]{1,8})" + kPunctuationRegexStr + "+(0x)?([0-9a-fA-F]{1,8}))$");

	public override string ToString()
	{
		return $"{TypeId:x8}:{GroupId:x8}:{InstanceId:x16}";
	}

	public static ResourceKey Parse(string str)
	{
		ResourceKey result = kInvalidResourceKey;
		if (Parse(str, ref result))
		{
			return result;
		}
		throw new FormatException();
	}

	public static bool Parse(string str, ref ResourceKey result)
	{
		Match match = kResourceKeyRegex.Match(str);
		if (!match.Success)
		{
			return false;
		}
		GroupCollection groups = match.Groups;
		string value = groups[2].Value;
		string value2 = groups[4].Value;
		string value3 = groups[7].Value;
		string value4 = groups[8].Value;
		string value5 = groups[10].Value;
		result = default;
		result.TypeId = uint.Parse(value, NumberStyles.HexNumber);
		result.GroupId = uint.Parse(value2, NumberStyles.HexNumber);
		if (value3.Length > 0)
		{
			result.InstanceId = ulong.Parse(value3, NumberStyles.HexNumber);
		}
		else
		{
			ulong num = uint.Parse(value4, NumberStyles.HexNumber);
			uint num2 = uint.Parse(value5, NumberStyles.HexNumber);
			result.InstanceId = (num << 32) + num2;
		}
		return true;
	}

	public static ResourceKey FromString(string keyString)
	{
		return Parse(keyString);
	}

	public override bool Equals(object obj)
	{
		if (obj == null || obj.GetType() != GetType())
		{
			return false;
		}
		ResourceKey resourceKey = (ResourceKey)obj;
		if (TypeId == resourceKey.TypeId && GroupId == resourceKey.GroupId)
		{
			return InstanceId == resourceKey.InstanceId;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return (int)(TypeId ^ (GroupId << 16)) ^ InstanceId.GetHashCode();
	}

	public static bool operator !=(ResourceKey lhs, ResourceKey rhs)
	{
		if (lhs.TypeId == rhs.TypeId && lhs.GroupId == rhs.GroupId)
		{
			return lhs.InstanceId != rhs.InstanceId;
		}
		return true;
	}

	public static bool operator ==(ResourceKey lhs, ResourceKey rhs)
	{
		if (lhs.TypeId == rhs.TypeId && lhs.GroupId == rhs.GroupId)
		{
			return lhs.InstanceId == rhs.InstanceId;
		}
		return false;
	}

	public static ResourceKey CreateOutfitKeyFromProductVersion(string name, ProductVersion productVersion)
	{
		uint num = 0u;
		if (productVersion != ProductVersion.BaseGame && productVersion != ProductVersion.EP1)
		{
			num = ResourceUtils.ProductVersionToGroupId(productVersion);
		}
		return CreateOutfitKey(name, num);
	}

	public static ResourceKey CreateOutfitKey(string name, uint group)
	{
		ulong inst = ResourceUtils.HashString64(name);
		return new ResourceKey(inst, 39769844u, group);
	}

	public static ResourceKey CreatePNGKey(string name, uint group)
	{
		ulong inst = ResourceUtils.HashString64(name);
		return new ResourceKey(inst, 796721156u, group);
	}

	public static ResourceKey CreateTGAKey(string name, uint group)
	{
		ulong inst = ResourceUtils.HashString64(name);
		return new ResourceKey(inst, 796721158u, group);
	}

	public static ResourceKey CreateCustomThumbnailKey(string name, uint group)
	{
		ulong inst = ResourceUtils.HashString64(name);
		return new ResourceKey(inst, 779470692u, group);
	}

	public static ResourceKey CreateRigKey(string name, uint group)
	{
		ulong inst = ResourceUtils.HashString64(name);
		return new ResourceKey(inst, 2393838558u, group);
	}

	public static ResourceKey CreateTextureKey(string name, uint group)
	{
		ulong inst = ResourceUtils.HashString64(name);
		return new ResourceKey(inst, 11720834u, group);
	}

	public static ResourceKey CreateUILayoutKey(string name, uint group)
	{
		ulong inst = ResourceUtils.HashString64(name);
		return new ResourceKey(inst, 39622070u, group);
	}

	public static ResourceKey CreateXMLKey(string name, uint group)
	{
		ulong inst = ResourceUtils.HashString64(name);
		return new ResourceKey(inst, 53690476u, group);
	}
}
