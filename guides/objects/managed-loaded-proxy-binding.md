# Original saved target and proxy binding

## Scope and identity

This is static PC1.67 `ScriptCore.dll` evidence. The
[central original assembly identity](../../evidence/managed/README.md#matching-original-assembly-identities)
is authoritative. The [member index](../../evidence/managed/selected/resident-loaded-proxy-binding/method-index.tsv)
selects two complete methods,51CIL bytes, whose original instruction offsets and
opcodes match independent metadata-backed decoding and actual typed ILSpy11.1
output. There are no branches or EH regions in these selected bodies. No
original DLL method, game interaction or malformed-input test was executed.

Existing full LoadSaveManager C# is reused and annotated in place. The missing
reader getter is actual complete selected ILSpy output; its body-fragment form
is retained without a handwritten class or signature wrapper.

## Bind the existing original table result

[Original BindLoadedObject CIL](../../evidence/managed/selected/resident-loaded-proxy-binding/LoadSaveManager.il.txt)
([annotated actual C#](../../evidence/managed/types/ScriptCore.LoadSaveManager.cs))
retains MethodDef`0600020A`,RVA`4370`,32CIL bytes. It reads the current original
mObjectGroupReader and calls its Int32 Item getter using the UInt32 supplied
index's same32bit stack value. There is no checked conversion or local index
guard. It casts the result to original IScriptLogic, invokes the supplied
proxy's original Load EVEN when the cast result is null, then returns whether
the result is nonnull. A null proxy/reader, invalid cast or table failure is not
caught locally. This method contains no reciprocal-link ownership precheck and
does not create a replacement target or invoke Init itself.

The [two immediate call edges](../../evidence/managed/selected/resident-loaded-proxy-binding/call-edges.tsv)
retain exact same-module MethodDef tokens: Item at IL0006 and ScriptProxy.Load
at IL0013. They are static call sites, not observed runtime invocation counts.

## Read one existing table reference

[Original PersistReader.Item CIL](../../evidence/managed/selected/resident-loaded-proxy-binding/PersistReader.il.txt)
([annotated actual C#](../../evidence/managed/types/ScriptCore.PersistReader.Item.cs))
retains MethodDef`06000D21`,RVA`FA44`,19CIL bytes. It reads
`mObjectTables[index >> 8][index & 255]`. The outer shift is the signed `shr`
instruction. Both accesses load existing references. The getter does not check
Count, allocate a page, copy an object, deserialize fields or reconstruct a
missing target. A missing table or invalid array index is not caught locally.

The [selected field-access index](../../evidence/managed/selected/resident-loaded-proxy-binding/field-access.tsv)
identifies the manager's current reader field and reader's object[][] field.
This two-member selection is not a complete field-writer census.

## Limits

The bit partition alone does not prove every allocated page length, valid input
domain, table population order, Count producer or constructor policy. Those are
separate producer bodies. The native BindLoadedObject caller/admission schedule,
world-load rollback and original saved-index validity must be traced separately.
These methods establish existing target delegation and precise local failure
behavior; they do not establish successful world restoration or a universal
safe-input range.
