# Ceiling material input and native owner fallback

Original shipped PC1.67 TS3W.exe, statically reviewed in the explicit original
Ghidra program. Analyst names/signatures are annotations. All original bytes
remain pristine and the annotated database was saved clean; no gameplay or
wide/narrow runtime roundtrip is claimed.

A489C0 opens type048A166D using its supplied instance/group. It readsUInt32version,
uses UNSIGNED<2 for inline16byte TGI (versions0/1),otherwise supplied context
7D7470. ANY>=2 uses context; there is no whitelist of2 and no exact20/6byteEOF
check. Stream_ReadResourceKeyTGI wire is type,group,instance low/high while
native memory offsets are8,C,0,4. Child reads accumulate sticky failure even
when a preceding read failed.

Context7D7470 independently checks owner flag82: UInt32handle through7D6B50
when nonzero,elseUInt16 through7D7190. Ceiling version does not choose width.
Handle0 is a real lookup and a resolved zero key is raw key data. A host int
lookup can preserveUInt32 raw bits without implying signed ordering.

After reading key atceiling owner20,A489C0 performs default-enabled catalogbank3
lookup. If absent and bank3 default exists,the default product's full key replaces
owner20. If resource open failed,the method resets streamstatus1 and leaves its
preexisting key unchanged. A detached raw key reader alone is therefore not
complete native owner/default/failure semantics.

Matching A48920 writesUInt32version2, registers ownerkey20 through7D7460, a5byte
tailJMP to7D7070, withmarkLocal0, then MOVZXAX andwritesUInt16handle. It closes
the stream context and returns statusAL; upperEAX is not normalized. This actual
writer alwaysnarrows here; reader wide support is not proof this producer roundtrips
an externally configured wide context. Existing [context registration contract](../persistence/construction-references-and-modular-stairs.md)
establishes count-based registration and unique local-handle ownership; no new
standalone keytable is created by the ceiling serializer.

Reader andwriter both have physical thiscall ECX plus5DWORDs: streamcontext,
keycontext,instance low/high,group;RET14hex. Genuine C reuses version/group
stackword and retains indirect/native-local aliases. It must not be read as an
extra independent parameter. Native stream status and partial mutation differ
from a host BinaryReader that throws before publishing a detached result.
Full catalogbank default construction and old-version context configuration are
separate from this bounded binary/owner contract.

## Canonical complete evidence

- 00A489C0: [ASM](../../evidence/native/functions/00A489C0_CeilingManager_ReadMaterialKey.asm) ([annotated Ghidra C](../../evidence/native/functions/00A489C0_CeilingManager_ReadMaterialKey.c)).
- 00A48920: [ASM](../../evidence/native/functions/00A48920_CeilingManager_WriteMaterialKey.asm) ([annotated Ghidra C](../../evidence/native/functions/00A48920_CeilingManager_WriteMaterialKey.c)).
- 007D7470: [ASM](../../evidence/native/functions/007D7470_ResourceReferences_ReadContextKey.asm) ([annotated Ghidra C](../../evidence/native/functions/007D7470_ResourceReferences_ReadContextKey.c)).
- 007D7760: [ASM](../../evidence/native/functions/007D7760_Stream_ReadResourceKeyTGI.asm) ([annotated Ghidra C](../../evidence/native/functions/007D7760_Stream_ReadResourceKeyTGI.c)).
- Existing registration target007D7070: [ASM](../../evidence/native/functions/007D7070_ResourceReferences_RegisterKey.asm) ([annotated Ghidra C](../../evidence/native/functions/007D7070_ResourceReferences_RegisterKey.c)).
