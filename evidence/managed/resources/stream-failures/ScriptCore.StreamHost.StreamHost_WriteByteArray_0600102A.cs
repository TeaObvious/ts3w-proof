// Original ScriptCore MethodDef 0x0600102A; see reference-inputs.json.
// ILSpy projection retained below; Original IL/metadata govern. PInvoke declarations do not establish native ABI, module resolution or runtime lifetime.

using System.Runtime.InteropServices;

[DllImport("Sims3Common")]
internal static extern int StreamHost_WriteByteArray(uint handle, [MarshalAs(UnmanagedType.SafeArray)] byte[] data, int offset, int length);
