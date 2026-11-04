/* Original ScriptCore PC1.67; identity: ../../reference-inputs.json.
   Fresh ILSpy decompilation; full selected methods or full selected type.
   Analyst: Sequential value type: native x86 consumer reads records as UInt32 type code plus signed32 offset, stride8. A field handle before LookupFieldOffsets is not already an object offset. */

using System;

internal struct PersistFastField
{
	public uint mPersistedTypeCode;

	public IntPtr mRuntimeFieldHandleOrOffset;
}
