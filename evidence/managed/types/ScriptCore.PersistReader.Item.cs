/* Original PC1.67 ScriptCore.dll, MethodDef0x06000D21, RVA0xFA44, complete19CIL bytes.
   Actual ILSpy11.1 selected-getter rendering, retained as emitted without a handwritten class.
   Analyst: signed SHR partitions the supplied Int32 index; this body does not check Count,
   allocate tables, reconstruct an object, or handle null/range errors locally. Central managed
   README identifies the original assembly. Complete typed CIL is paired in
   ../selected/resident-loaded-proxy-binding/PersistReader.il.txt. */
{
	return mObjectTables[index >> 8][index & 0xFF];
}
