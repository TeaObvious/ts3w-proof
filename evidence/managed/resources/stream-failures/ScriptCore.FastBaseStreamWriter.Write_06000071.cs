// Original ScriptCore MethodDef 0x06000071; see reference-inputs.json.
// ILSpy projection retained below; Original IL/metadata govern. PInvoke declarations do not establish native ABI, module resolution or runtime lifetime.

public void Write(byte[] data)
{
	int num = StreamHost.StreamHost_WriteByteArray(mHandle, data, 0, data.Length);
	if (num < 0)
	{
		StreamHost.RaiseException(num);
	}
}
