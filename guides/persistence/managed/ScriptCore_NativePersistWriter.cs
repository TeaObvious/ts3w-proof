namespace ScriptCore;

public class NativePersistWriter
{
	private uint mHandle;

	internal uint Handle => mHandle;

	public bool Valid => mHandle != 0;

	public NativePersistWriter()
	{
	}

	public NativePersistWriter(uint handle)
	{
		mHandle = handle;
	}

	public int Write(uint handle)
	{
		return LoadSaveManager.LoadSaveManager_SaveNativeObject(mHandle, handle);
	}
}
