// Actual selected ILSpy renderings; not a compilable original source reconstruction.
public bool CanPause(uint driverHandle, uint actorHash)
{
	return SACS_CanPauseImpl(driverHandle, actorHash);
}

public bool Pause(uint driverHandle, uint actorHash)
{
	return SACS_PauseImpl(driverHandle, actorHash);
}

public void Continue(uint driverHandle, uint actorHash)
{
	SACS_ContinueImpl(driverHandle, actorHash);
}

