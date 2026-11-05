// Actual ILSpy11.1 excerpts from pristine PC1.67 ScriptCore; complete selected adapter and InternalCall.
// Copies the incoming key to scalar refs, calls native, restores key fields and converts null text to Empty.
// Exact signature/token/header/CIL: ScriptCore.cil.txt.

private static extern string UserToolUtils_ProductGenericImpl(uint productHandle, uint funcID, ref uint retUint32, ref ulong instance, ref uint group, ref uint type, ref float retFloat);

public string ProductGeneric(uint productHandle, uint funcID, ref uint retUint32, ref ResourceKey retResKey, ref float retFloat)
	{
		ulong instance = retResKey.InstanceId;
		uint group = retResKey.GroupId;
		uint type = retResKey.TypeId;
		string text = UserToolUtils_ProductGenericImpl(productHandle, funcID, ref retUint32, ref instance, ref group, ref type, ref retFloat);
		retResKey.InstanceId = instance;
		retResKey.GroupId = group;
		retResKey.TypeId = type;
		if (text == null)
		{
			return string.Empty;
		}
		return text;
	}
