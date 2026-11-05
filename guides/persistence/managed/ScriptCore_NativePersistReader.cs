namespace ScriptCore;

public class NativePersistReader
{
	private uint mHandle;

	internal uint Handle => mHandle;

	public bool Valid => mHandle != 0;

	public NativePersistReader()
	{
	}

	public NativePersistReader(uint handle)
	{
		mHandle = handle;
	}

	public uint Read(int saveIndex)
	{
		return LoadSaveManager.LoadSaveManager_LoadNativeObject(mHandle, saveIndex);
	}
}
