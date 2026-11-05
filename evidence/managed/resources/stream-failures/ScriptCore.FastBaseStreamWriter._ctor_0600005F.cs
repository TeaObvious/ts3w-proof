// Original ScriptCore MethodDef 0x0600005F; see reference-inputs.json.
// ILSpy projection retained below; Original IL/metadata govern. PInvoke declarations do not establish native ABI, module resolution or runtime lifetime.

internal FastBaseStreamWriter(uint handle)
{
	if (handle != 0)
	{
		mHandle = handle;
	}
	else
	{
		mHandle = StreamHost.StreamHost_Create();
	}
}
