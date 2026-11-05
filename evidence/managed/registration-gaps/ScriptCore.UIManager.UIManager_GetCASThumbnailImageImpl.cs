// Original PC1.67 S3SA ScriptCore; MethodDef0x06000DFD. PInvoke declaration.
// Identity and binding: evidence.json; central assembly provenance: ../reference-inputs.json.
// ILSpy method fragment; retained resolver warnings do not establish invalid original CIL.
using System.Runtime.InteropServices;
using Sims3.SimIFace;

[DllImport("Sims3Common.dll")]
private static extern uint UIManager_GetCASThumbnailImageImpl(ResourceKey key, int index, uint bodyType, uint ageGender, ThumbnailSize size, bool liveUpdate);
