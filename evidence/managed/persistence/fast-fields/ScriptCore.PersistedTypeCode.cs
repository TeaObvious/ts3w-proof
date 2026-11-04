/* Original ScriptCore PC1.67; identity: ../../reference-inputs.json.
   Fresh ILSpy decompilation; full selected methods or full selected type.
   Analyst: Original enum is byte-backed; PersistFastField stores its code in a UInt32. Native supported fast widths exclude Char/DateTime/Decimal despite their codes lying in2..15. */

internal enum PersistedTypeCode : byte
{
	Null,
	ObjectRef,
	Boolean,
	Byte,
	Char,
	DateTime,
	Decimal,
	Double,
	Int16,
	Int32,
	Int64,
	SByte,
	Single,
	UInt16,
	UInt32,
	UInt64,
	ObjectInst,
	ArrayInst,
	TypeInstZeroBased,
	BrokenProtectedObjectInst,
	ExternalObject,
	BrokenEnumInst,
	ProtectedObjectInst,
	EnumInst,
	MethodInst,
	ResourceKeyInst,
	TypeInstOneBased
}
