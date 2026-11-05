// Actual selected ILSpy renderings; not a compilable original source reconstruction.
public bool CanPause(string actorName)
{
	uint actorHash = ((actorName != null) ? Hash32(actorName) : 0u);
	return SacsProxy.Instance.CanPause(mDriver.mHandle, actorHash);
}

public bool Pause(string actorName)
{
	uint actorHash = ((actorName != null) ? Hash32(actorName) : 0u);
	return SacsProxy.Instance.Pause(mDriver.mHandle, actorHash);
}

public void Continue(string actorName)
{
	uint actorHash = ((actorName != null) ? Hash32(actorName) : 0u);
	SacsProxy.Instance.Continue(mDriver.mHandle, actorHash);
}

