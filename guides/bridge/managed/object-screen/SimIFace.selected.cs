// Actual retained decompiler excerpt; selected methods only, not a compilable unit.
// The retained C# view's original decompiler invocation provenance is unverified.
// It is a secondary readability view: the paired authenticated PC1.67 IL is primary.
// No C# body has been synthesized. Existing expressions are retained verbatim.
// Null/evaluation order and native/managed ownership follow the paired IL and guide.
	public static bool IsObjectOnScreen(ObjectGuid scriptHandle)
	{
		if (gWorld != null)
		{
			return gWorld.IsObjectOnScreen(scriptHandle);
		}
		return false;
	}

	public static bool IsObjectOnScreen(IHasScriptProxy scriptObject)
	{
		if (scriptObject != null && scriptObject.Proxy != null)
		{
			return IsObjectOnScreen(scriptObject.Proxy.ObjectId);
		}
		return false;
	}
