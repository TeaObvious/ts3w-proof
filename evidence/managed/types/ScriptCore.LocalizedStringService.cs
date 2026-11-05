using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class LocalizedStringService : IStringTable
{
	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string LocalizedStringService_GetLocalizedStringByUInt64(ulong key);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string LocalizedStringService_GetLocalizedStringByString([MarshalAs(UnmanagedType.LPWStr)] string key);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string LocalizedStringService_GetLocale();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string LocalizedStringService_GetLocalizedLogoSuffix();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string LocalizedStringService_GetLocalizedLogoSuffixEP();

	public LocalizedStringService()
	{
		AppDomain.CurrentDomain.SetData("LocalizedStringService", this);
	}

	public string GetLocalizedString(ulong key)
	{
		return LocalizedStringService_GetLocalizedStringByUInt64(key);
	}

	public string GetLocalizedString(string key)
	{
		return LocalizedStringService_GetLocalizedStringByString(key);
	}

	public string GetLocale()
	{
		return LocalizedStringService_GetLocale();
	}

	public string GetLocalizedLogoSuffix()
	{
		return LocalizedStringService_GetLocalizedLogoSuffix();
	}

	public string GetLocalizedLogoSuffixEP()
	{
		return LocalizedStringService_GetLocalizedLogoSuffixEP();
	}
}
