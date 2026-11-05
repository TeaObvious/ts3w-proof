using System;
using System.IO;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public class StreamHost
{
	private enum ErrorCodes
	{
		Success = 0,
		EndOfStream = -1,
		StreamClosed = -2,
		IOError = -3,
		InvalidData = -4,
		OutOfMemory = -5,
		NullReference = -6,
		ArgumentOutOfRange = -7
	}

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_WriteInt(uint handle, int val, int bytes);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_WriteInt64(uint handle, long val);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_WriteFloat(uint handle, float val);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_WriteDouble(uint handle, double val);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_WriteDecimal(uint handle, decimal val);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_WriteByteArray(uint handle, [MarshalAs(UnmanagedType.SafeArray)] byte[] data, int offset, int length);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_WriteCharUTF8(uint handle, char val);

	[DllImport("Sims3Common", CharSet = CharSet.Unicode)]
	internal static extern int StreamHost_WriteCharArrayUTF8(uint handle, [MarshalAs(UnmanagedType.SafeArray)] char[] data, int offset, int length);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_WriteStringUTF8(uint handle, [MarshalAs(UnmanagedType.BStr)] string s);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_ReadInt(uint handle, int bytes, out int value);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_ReadInt64(uint handle, out long value);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_ReadFloat(uint handle, out float value);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_ReadDouble(uint handle, out double value);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_ReadDecimal(uint handle, out decimal value);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_ReadCharUTF8(uint handle, out char value);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_ReadStringUTF8(uint handle, [MarshalAs(UnmanagedType.BStr)] out string value);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_ReadByteArray(uint handle, [In][Out][MarshalAs(UnmanagedType.SafeArray)] byte[] buffer, int offset, int count);

	[DllImport("Sims3Common", CharSet = CharSet.Unicode)]
	internal static extern int StreamHost_ReadCharArrayUTF8(uint handle, [In][Out][MarshalAs(UnmanagedType.SafeArray)] char[] buffer, int offset, int count);

	[DllImport("Sims3Common")]
	internal static extern uint StreamHost_Create();

	[DllImport("Sims3Common")]
	internal static extern uint StreamHost_CreateFromBuffer([MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common")]
	internal static extern void StreamHost_Close(uint handle);

	[DllImport("Sims3Common")]
	internal static extern void StreamHost_Flush(uint handle);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_GetSize(uint handle);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_GetPosition(uint handle);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_SetPosition(uint handle, int offset, int anchor);

	[DllImport("Sims3Common")]
	internal static extern int StreamHost_CopyStream(uint handle, uint srcHandle);

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.SafeArray)]
	internal static extern byte[] StreamHost_ToArray(uint handle);

	// Original complete IL06001040: installs retained instance delegates in writer then reader factory fields; no AppDomain service slot.
	public StreamHost()
	{
		FastStreamWriter.sFastBaseStreamWriterCreator = CreateFastBaseStreamWriter;
		FastStreamReader.sFastBaseStreamReaderCreator = CreateFastBaseStreamReader;
	}

	public static void RaiseException(int errorCode)
	{
		switch (errorCode)
		{
		case -1:
			throw new EndOfStreamException("Attempted to read beyond the end of the stream.");
		case -2:
			throw new ObjectDisposedException("The stream has already been closed.");
		case -3:
			throw new IOException("An unknown I/O error occurred.");
		case -4:
			throw new Exception("Invalid data was detected in the stream.");
		case -5:
			throw new OutOfMemoryException();
		case -6:
			throw new NullReferenceException();
		case -7:
			throw new ArgumentOutOfRangeException();
		}
	}

	private IFastBaseStreamWriter CreateFastBaseStreamWriter(uint handle)
	{
		return new FastBaseStreamWriter(handle);
	}

	private IFastBaseStreamReader CreateFastBaseStreamReader(uint handle, byte[] data)
	{
		return new FastBaseStreamReader(handle, data);
	}
}
