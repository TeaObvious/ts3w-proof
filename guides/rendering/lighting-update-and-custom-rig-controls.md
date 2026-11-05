# Lighting update byte and custom-rig change notification

Static original PC1.67 evidence. The selected GhidrAssist program was explicitly
`/TS3W.exe`; no game, original executable, lighting or GPU test was run. Complete
selected functions retain original bytes/boundaries/prototypes. Analyst names and
comments are saved in the Ghidra database and actual exported C.

## Frame-service update policy byte

`World_GetUpdateLightRigsImpl`00787020 loads the bridge's global ECX then tail-jumps
to00C5F430. The latter obtains the frame service via006E8170. With no service it
returns byte1 in AL. With a service it passes that pointer in ECX to006E8220 and
reads the returned owner's byte+100 into AL. Upper EAX bits are unspecified;
there is no full-register zero extension or resource-completion operation.
[Getter ASM](../../evidence/native/functions/00C5F430_LightingUpdates_ReadEnabledByteOrOne.asm)
([actual annotated C](../../evidence/native/functions/00C5F430_LightingUpdates_ReadEnabledByteOrOne.c)).

`World_SetUpdateLightRigsImpl`00787030 forwards one stack word to00C5F410 and
returns with caller cleanup. The callee obtains the same service/owner path and
stores only the low input byte at+100. No service means no write. It performs no
Boolean normalization, immediate rig refresh or wait. The helper uses RET4;
incoming bridge ECX is not the owner consumed by its store.
[Setter ASM](../../evidence/native/functions/00C5F410_LightingUpdates_StoreEnabledByte.asm)
([actual annotated C](../../evidence/native/functions/00C5F410_LightingUpdates_StoreEnabledByte.c)).

The preserved bridge byte windows include padding and are not asserted full
function envelopes: [getter bridge ASM](../../evidence/native/functions/00787020_ScriptCore_World_World_GetUpdateLightRigsImpl.asm)
([C](../../evidence/native/functions/00787020_ScriptCore_World_World_GetUpdateLightRigsImpl.c)),
[setter bridge ASM](../../evidence/native/functions/00787030_ScriptCore_World_World_SetUpdateLightRigsImpl.asm)
([C](../../evidence/native/functions/00787030_ScriptCore_World_World_SetUpdateLightRigsImpl.c)). The retained getter bridge's
void decompiler view does not override the physical AL-returning tail target.
No meaning of other owner fields or all update-byte consumers is inferred here.

## Object custom-rig key

`World_ObjectSetCustomLightRig`0078CF80 looks up the UInt64 object, then the
component selected by the original mask at011EA2A8. Missing lookup returns.
A null managed string supplies key0 directly. Nonnull input uses the original
string interface virtual+58, then007D0020; null/zero resolution preserves the
previous key. Both successful paths invoke0095E070 with the component in ECX.
[Bridge ASM](../../evidence/native/functions/0078CF80_ScriptCore_World_World_ObjectSetCustomLightRig.asm)
([C](../../evidence/native/functions/0078CF80_ScriptCore_World_World_ObjectSetCustomLightRig.c)).

`ObjectLightRig_StoreCustomKeyAndNotify`0095E070 takes one stack DWORD, RET4.
It compares the complete key bit pattern against component+10. Equality performs
no store or event. Otherwise it stores the key first, then calls
`ObjectEvents_Dispatch`009356C0 with event1F, object pointer from component+4 and
a pointer to the live stack key. The helper removes the dispatcher's three stack
arguments. It does not clone meshes or upload geometry. Whether the dispatcher
copies payload or completes downstream render updates is a separate contract.
[Setter/notification ASM](../../evidence/native/functions/0095E070_ObjectLightRig_StoreCustomKeyAndNotify.asm)
([actual annotated C](../../evidence/native/functions/0095E070_ObjectLightRig_StoreCustomKeyAndNotify.c)).

There is also a direct caller at005A9BE6; its producer conditions are outside this
selected expansion. Original event1F consumer joins and the update-policy byte's
render-finalization consumer remain open. These boundaries must not be equated
to a project-specific same-geometry suffix metadata-copy optimization.

## Independent cases and verification

- Missing frame service: getter AL=1; setter no-op.
- Present owner byte02: getter returns AL=02; setting02 preserves exact bits.
- Equal custom key: no dispatch. Changed key: component+10 already contains it
  when event1F is invoked.
- Null managed string clears to key0; unresolved nonnull input preserves the key.

These are specified cases, not executed tests. Complete8/9/12-instruction bodies
were independently checked against89 pristine executable bytes. Both RET-only
getter paths, RET4 cleanup, low-byte accesses, DWORD comparison/store and event
argument order are included. No original bytes or function prototypes changed.
