// Original ScriptCore MethodDef 0x0600007E; see reference-inputs.json.
// ILSpy projection retained below; Original IL/metadata govern. PInvoke declarations do not establish native ABI, module resolution or runtime lifetime.

public int Read(byte[] buffer, int index, int count)
{
	int num = StreamHost.StreamHost_ReadByteArray(mHandle, buffer, index, count);
	if (num < 0)
	{
		StreamHost.RaiseException(num);
	}
	return num;
}
