// Original ScriptCore MethodDef 0x0600008C; see reference-inputs.json.
// ILSpy projection retained below; Original IL/metadata govern. PInvoke declarations do not establish native ABI, module resolution or runtime lifetime.

public string ReadString()
{
	int num = StreamHost.StreamHost_ReadStringUTF8(mHandle, out var value);
	if (num < 0)
	{
		StreamHost.RaiseException(num);
	}
	return value;
}
