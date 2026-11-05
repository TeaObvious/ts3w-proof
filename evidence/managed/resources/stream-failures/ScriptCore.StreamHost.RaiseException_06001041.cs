// Original ScriptCore MethodDef 0x06001041; see reference-inputs.json.
// ILSpy projection retained below; Original IL/metadata govern. PInvoke declarations do not establish native ABI, module resolution or runtime lifetime.

using System;
using System.IO;

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
