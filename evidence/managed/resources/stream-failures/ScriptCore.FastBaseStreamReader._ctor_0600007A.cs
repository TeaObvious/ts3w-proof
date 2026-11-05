// Original ScriptCore MethodDef 0x0600007A; see reference-inputs.json.
// ILSpy projection retained below; Original IL/metadata govern. PInvoke declarations do not establish native ABI, module resolution or runtime lifetime.

internal FastBaseStreamReader(uint handle, byte[] data)
{
	if (data != null)
	{
		mHandle = StreamHost.StreamHost_CreateFromBuffer(data);
	}
	else if (handle != 0)
	{
		mHandle = handle;
	}
	else
	{
		mHandle = StreamHost.StreamHost_Create();
	}
}
