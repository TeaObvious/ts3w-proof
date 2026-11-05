// Original ScriptCore MethodDef 0x06001035; see reference-inputs.json.
// ILSpy projection retained below; Original IL/metadata govern. PInvoke declarations do not establish native ABI, module resolution or runtime lifetime.

using System.Runtime.InteropServices;

[DllImport("Sims3Common")]
internal static extern int StreamHost_ReadByteArray(uint handle, [In][Out][MarshalAs(UnmanagedType.SafeArray)] byte[] buffer, int offset, int count);
