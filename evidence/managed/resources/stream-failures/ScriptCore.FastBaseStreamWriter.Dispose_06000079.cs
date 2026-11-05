// Original ScriptCore MethodDef 0x06000079; see reference-inputs.json.
// ILSpy projection retained below; Original IL/metadata govern. PInvoke declarations do not establish native ABI, module resolution or runtime lifetime.

public void Dispose()
{
	if (mHandle != 0)
	{
		StreamHost.StreamHost_Close(mHandle);
		mHandle = 0u;
	}
}
