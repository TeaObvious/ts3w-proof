# Weather settings, pending publication and selected renderer consumers

## Evidence and boundaries

Original PC 1.67 instructions and stored bytes establish this static subset.
Names and the `PCWeatherSettings` Ghidra structure are analyst assignments. The
original [ScriptCore WeatherControl](../evidence/managed/types/ScriptCore.WeatherControl.cs)
and its complete [managed caller IL](../evidence/managed/callers.il.txt)
(MethodDefs 060004B4/060004B5) supply the 23-slot producer/consumer names.
Original managed settings and season policy remain separate from native array
conversion, synchronized storage and rendering mechanisms.

No array host, game, renderer, fixture or platform was executed. Complete
exceptional-input behavior, native host ownership, constructor allocation,
weather transitions, GPU submission and effect output are not established.

## Managed array and native record

The [setter](../evidence/native/functions/00784A70_ScriptCore_WeatherControl_WeatherControl_SetSettings.asm) ([annotated pseudocode](../evidence/native/functions/00784A70_ScriptCore_WeatherControl_WeatherControl_SetSettings.c)) is cdecl with one managed-array
handle. A missing world/manager returns without publication. Host slot 0x78
receives ECX plus three stack arguments: handle, data-pointer output and count
output. The count must be **exactly 23**. It copies the previous pending record,
converts the supplied fields and then publishes a complete record.

The [getter](../evidence/native/functions/007847C0_WeatherControl_GetSettings.asm) ([annotated pseudocode](../evidence/native/functions/007847C0_WeatherControl_GetSettings.c)) is cdecl with no arguments and returns a
managed handle in EAX, zero when the manager is absent. Its instruction-complete
body ends at 0x00784A2A; 0x00784A30 is another function. Host slot 0x8C receives
ECX plus handle-output/count arguments to allocate 23 floats. Slot 0xA8 receives
ECX plus handle-output/data/zero-start/count to copy those values. Explicit
per-call ABI annotations remove the previous decompiler's false zero return
and fabricated register inputs. They do not establish host pinning or exception
semantics.

The native record is **0x5C bytes**, distinct from the array's field order:

| Array slot | Native offset | Native representation | Meaning |
| --- | --- | --- | --- |
| 0 | 00 | UInt32 | Precipitation type |
| 1 | 04 | Float32 | Precipitation strength |
| 2 | 0C | UInt32 | Season |
| 3 / 4 | 10 / 14 | Float32 | Sunrise / sunset offsets |
| 5 / 6 | 38 / 3C | UInt32 | Precipitation / wind audio indices |
| 7 | 40 | UInt16 | Weather terrain |
| 8 | 08 | Float32 | Frost |
| 9 | 18 | Float32 | Snow thickness |
| 10 | 1C | Float32 | Snow road-track depth |
| 11 | 20 | Float32 | Wetness |
| 12 | 28 | Float32 | Tree leaf loss |
| 13 | 2C | Byte | Fall-set flag |
| 14 | 30 | Float32 | Tree fall color |
| 15 | 44 | Float32 | Precipitation fog |
| 16 | 48 | Float32 | Pond freeze |
| 17 | 34 | Float32 | Heat-shimmer distance |
| 18 | 4C | Float32 | World leaves |
| 19 | 24 | Byte | Snow-melting flag |
| 20 | 50 | Float32 | Cloudiness target |
| 21 | 54 | Float32 | Wind strength |
| 22 | 58 | Float32 | Normal fog |

Setter slot 0 calls the imported MSVCR80 `floor` on a binary64 argument, then
uses FISTP signed QWORD under temporarily selected truncation rounding and keeps
its low 32 bits. Slots 2/5/6 similarly truncate to signed QWORD and retain low32;
slot 7 uses CVTTSS2SI and retains low16. The actual C's ROUND and ordinary casts
do not describe the temporary x87 control-word sequence or define masked versus
unmasked invalid conversions for every ambient environment.

Boolean slots 13/19 test `max(-x,x) <= 2^-23` with MULPS/MAXPS/CMPLEPS and set
the byte when that comparison fails. NaN therefore sets the flag. Other scalar
inputs are copied without a universal finite check or clamp. Selected view
codes 1/2 override leaf loss to 1/0 respectively and fall color to 1 before
publication; the complete view enum and transition policy are outside this subset.

Getter UInt32 values are converted by signed FILD, conditional addition of
binary32 constant 2^32 for negative signed bits, and one final float store.
Terrain/boolean values are zero-extended and converted with CVTSI2SS. This is not
a promise that arbitrary signed managed audio indices round-trip unchanged.

## Pending storage and later consumption

The [pending publisher](../evidence/native/functions/00D69A00_WeatherSettings_PublishPending.asm) ([annotated pseudocode](../evidence/native/functions/00D69A00_WeatherSettings_PublishPending.c)) enters the critical section at
manager+0x980, copies 23 DWORDs to **pending+0x924**, atomically XCHGs dirty+0x9A0
to 1, then leaves. The [pending reader](../evidence/native/functions/00D699D0_WeatherSettings_CopyPending.asm) ([annotated pseudocode](../evidence/native/functions/00D699D0_WeatherSettings_CopyPending.c)) uses the same lock and copies those
23 DWORDs to its caller. It does not clear dirty or return a completed renderer
state. Padding bytes are copied too.

This is coherent latest-value storage. The setter does not retain a queue of
every intermediate packet. Its earlier read/conversion and final publication
are separate lock acquisitions, not one atomic read-modify-write transaction.
A portable replacement needs coherent ownership and publication, without an
obligation to reproduce the Windows locking API itself.

Within the complete [manager update](../evidence/native/functions/00D6E450_WeatherManager_Update.asm) ([annotated pseudocode](../evidence/native/functions/00D6E450_WeatherManager_Update.c)), the reviewed gated path later locks
0x980. If dirty, it copies pending+0x924 to prepared+0x9EC and clears dirty with
XCHG. A selected override can separately copy +0xA48 to the record at +0x8C8.
The update chooses prepared+0x9EC or override+0xA48, compares it with previous
+0xAA4 and handles selected view changes before shader-constant publication.
It copies selected state to that previous record at the reviewed end path.
These separate records and later consumers rule out treating setter completion
as synchronous visible application. Complete interpolation, every override,
early-return gate, audio/world work and teardown remain unexpanded.

The [constructor](../evidence/native/functions/00D6CD30_WeatherManager_Construct.asm) ([annotated pseudocode](../evidence/native/functions/00D6CD30_WeatherManager_Construct.c)) sets both +0x8C8/+0x924 blocks to
strength 1, fall-set true, heat distance -1, type/season/melting zero and the
reviewed remaining float fields zero; it initializes the lock and clears dirty.
The two reviewed default blocks do **not** initialize audio fields +0x38/+0x3C,
terrain +0x40 or all padding. An all-zero-record guarantee needs additional
allocation/base-construction evidence and is not inferred here.

## Semantic equality and shader projections

The [semantic comparator](../evidence/native/functions/00D6A3F0_WeatherSettings_AreSimilar.asm) ([annotated pseudocode](../evidence/native/functions/00D6A3F0_WeatherSettings_AreSimilar.c)) is cdecl with two record pointers
and EAX 1/0. It compares the four UInt32 fields, two bytes and one UInt16
exactly, and ignores padding. Each of 16 float fields uses SUBSS followed by
MAXPS(-difference,difference), CMPLEPS against exact binary32 **2^-16**, and
MOVMSKPS==15. NaN differences and infinity-minus-itself fail. Signed zeros
compare equal. Byte identity and exact float equality are different contracts.

The [shader projection publisher](../evidence/native/functions/00D69B30_WeatherShader_PublishSettingsConstants.asm) ([annotated pseudocode](../evidence/native/functions/00D69B30_WeatherShader_PublishSettingsConstants.c)) consumes two stack words with
RET8; incoming ECX is not semantic and only the second word's low byte is tested.
Raw bit-sign selection after SSE `-0-x` and `1-x` projects finite ordinary
values toward [0,1]. It must not be replaced from decompiler numeric casts or
assumed to be a universal Math.Clamp/NaN contract. A nonzero suppression byte
zeros wet/frost/snow/road channels at 0x011EF140..14C. Leaf loss and color at
0x011EF150/154 are still projected independently. Other lanes, the final shader
binding helper, complete define consumers and suppression-flag identity require
separate evidence.

The [precipitation scalar](../evidence/native/functions/00D6A2E0_WeatherShader_UpdatePrecipitationScalar.asm) ([annotated pseudocode](../evidence/native/functions/00D6A2E0_WeatherShader_UpdatePrecipitationScalar.c)) consumes one stack pointer with RET4,
ignoring incoming ECX. Type zero or ordinary strength below stored 0.001 uses
file-initial default 51. Otherwise it computes separate binary32 multiply/add/
divide `1/(strength*stored0.98+stored0.02)` and raises an ordered result below
1 to 1. It modifies only X of 0x011EF1A0. COMISS followed by JBE also takes the
formula branch for unordered input; the actual decompiled ordered comparison
is annotated as incomplete for that edge. Raw NaN/sign-bit projection and final
cell/shader interpretation are not generalized. The manager calls this helper
when its precipitation-cell owner exists, before the retained cell update.

## Falling-leaf admission and timer constants

The refreshed [falling-leaf tick](../evidence/native/functions/00D68DA0_Seasons_UpdateFallingLeafEffects.asm) ([annotated pseudocode](../evidence/native/functions/00D68DA0_Seasons_UpdateFallingLeafEffects.c)) uses ECX owner with no stack
arguments. It copies **pending** settings and requires the fall-set byte. Its
inclusive epsilon tests reject near-zero loss (2^-23) and near-one loss
(2^-16). They are not a `0 < loss < 1` predicate: negative, above-one, infinite
and unordered NaN values can pass those two tests.

The stored file-initial timer is binary32 **0x41055555**, approximately
8.333333015441895 seconds, not an exact rational 25/3. The tick compares owner
last-time plus that value with renderer time, then advances last-time before
camera/range lookup. The file-initial radius is 100 and chance bound is binary32
0x3EAAAAAB. Runtime tuning of these data globals is not ruled out. Crown-bearing
tree records, distance and field-owned RNG supply the remaining selected
admission; child effect placement and visible output remain separate.

The [necessary constant bytes](weather-settings-constants.tsv) distinguish
exact epsilon values, stored decimal approximations and file-initial tunables.
The [broader Seasons guide](seasons-state.md) and
[variation-word contract](vegetation/variation-words-and-leaf-metadata.md)
cover related tree metadata and selected spatial/effect producers.

## Selected resource bindings and tagged request lifetime

These complete PC1.67 bodies establish the selected resource-side boundary. The names are analyst assignments, not recovered EA symbols. Existing stored metadata is unmodified and can omit return values or stack words; original instructions govern. [The ordered request table](weather-resource-requests.tsv) records all31 calls/30slots, exact names/product/group words and selected publisher rows.

[Initialization](../evidence/native/functions/00D6BE80_WeatherResources_InitializeBindingsAndRequests.asm) ([annotated C](../evidence/native/functions/00D6BE80_WeatherResources_InitializeBindingsAndRequests.c)) returns when its byte latch is set. It tests cached literal8000 first and100000 only if the first fails, then sets the latch before registry/resource work. A nonnull registry receives named rows and has an inner8000 gate; a null registry bypasses that inner gate. There is no aggregate readiness, managed catch or automatic retry guarantee. The later31calls are not31independent successes. Slot1B0 first requests EP08_snowUnderTrees_n/product16, then conditionally snowNormal2/product1: [submission](../evidence/native/functions/00D6A850_WeatherResources_SubmitNamedDdsSlot.asm) ([C](../evidence/native/functions/00D6A850_WeatherResources_SubmitNamedDdsSlot.c)) re-reads that same tagged word. This is not an unconditional fallback or evidence of later retry.

Submission admits `(word==0 || (word&3)!=0) && (word&1)==0`; aligned nonzero residents and bit0pending are suppressed, zero and tag2 admitted. It builds instance64/typeB2D882/group key words before testing the service pointer and ignores virtual34's return. The concrete existing [service](../evidence/native/functions/00729D80_ResourceRequests_SubmitKeyToSlot.asm) ([C](../evidence/native/functions/00729D80_ResourceRequests_SubmitKeyToSlot.c)) can write pending-node|1, an immediate pointer or preparation failure2. Node-allocation failure need not publish2; true can mean pending. Its constructor installs the vtable whose+34/+3C words name729D80/728D20; [locked clearing](../evidence/native/functions/00728D20_ResourceRequests_ClearSlotLocked.asm) ([C](../evidence/native/functions/00728D20_ResourceRequests_ClearSlotLocked.c)) wraps the existing clear operation. Aligned resource callbacks run outside the internal lock and are followed by relocking. The callback tail-dispatches virtual4; that alone does not identify AddRef versus Release.

[Publishing](../evidence/native/functions/00D69110_WeatherResources_PublishGlobalBindings.asm) ([C](../evidence/native/functions/00D69110_WeatherResources_PublishGlobalBindings.c)) handles each valid row independently, increments its revision, copies registryUInt16+12hex into row+4 and stores payload+C. Aligned slots publish the address resource+28; pending/missing values publish0. The selected [texture row setter](../evidence/native/functions/0079A080_ShaderParameterRegistry_SetTexturePayload.asm) ([C](../evidence/native/functions/0079A080_ShaderParameterRegistry_SetTexturePayload.c)) also stores row+8=1 and UInt16row+6=5. [Registration](../evidence/native/functions/0079A530_ShaderParameterRegistry_RegisterNamedRow.asm) ([C](../evidence/native/functions/0079A530_ShaderParameterRegistry_RegisterNamedRow.c)) returns the row index in EAX despite incomplete stored projection, with [find/create](../evidence/native/functions/0079A3C0_ShaderParameterRegistry_FindOrCreateHashRowIndex.asm) ([C](../evidence/native/functions/0079A3C0_ShaderParameterRegistry_FindOrCreateHashRowIndex.c)) initializing a16-byte row. No sampler preset/filter/wrap/sRGB equivalence follows.

[Reset](../evidence/native/functions/00D6B2A0_WeatherResources_ResetBindingsAndSlots.asm) ([C](../evidence/native/functions/00D6B2A0_WeatherResources_ResetBindingsAndSlots.c)) gates registry unbinding but still clears resources, retains the repeated150visit, zeros generated volume before its release and clears the latch last on normal completion. [Cleanup](../evidence/native/functions/00D6C4F0_WeatherResources_ReleaseOwnedTextures.asm) ([C](../evidence/native/functions/00D6C4F0_WeatherResources_ReleaseOwnedTextures.c)) releases volume first, then slots descending1BC..144; its selected body does not zero the volume pointer or latch. These are distinct lifetimes, without exception/finally guarantees.

[Volume creation](../evidence/native/functions/00D69790_WeatherResources_CreateNoiseVolume.asm) ([C](../evidence/native/functions/00D69790_WeatherResources_CreateNoiseVolume.c)) preserves its three discontiguous owned ranges. Replacement is newvirtual4/store/oldvirtual8. It requests8cube data, uses one-time512-byte RNG fill with seed11B7A/boundFF, then row8/slice40 upload. Creation literalF is not proof of SMPS preset15. RNG child equivalence, format/pixels and installed shader sampling remain open; no current atlas equivalence is established.

[Literal-mask testing](../evidence/native/functions/00523DA0_FlagWord_TestAnyMask.asm) ([C](../evidence/native/functions/00523DA0_FlagWord_TestAnyMask.c)), cached [8000](../evidence/native/functions/00C88CD0_CachedGlobalMask8000_Query.asm) ([C](../evidence/native/functions/00C88CD0_CachedGlobalMask8000_Query.c)) and [100000](../evidence/native/functions/00C88D30_CachedGlobalMask100000_Query.asm) ([C](../evidence/native/functions/00C88D30_CachedGlobalMask100000_Query.c)) do not establish expansion/season enums or initial runtime global values. [Product grouping](../evidence/native/functions/007D78B0_ResourceKey_GroupFromProductWord.asm) ([C](../evidence/native/functions/007D78B0_ResourceKey_GroupFromProductWord.c)) is `(product<<27)-08000000` modulo32. The existing UTF16Z hash uses multiply-before-XOR over low16CRTtowlower units; ASCII similarity is not general locale/nonASCII parity.

The distinct water producers [B5EAA0](../evidence/native/functions/00B5EAA0_FUN_00b5eaa0.asm) ([C](../evidence/native/functions/00B5EAA0_FUN_00b5eaa0.c)) and [C09A70](../evidence/native/functions/00C09A70_FUN_00c09a70.asm) ([C](../evidence/native/functions/00C09A70_FUN_00c09a70.c)) bind SkyReflectionBlurry to the blurry placeholder through [the temporary-handle wrapper](../evidence/native/functions/00C88F00_ShaderTextureBinding_RequestWithTemporaryHandle.asm) ([C](../evidence/native/functions/00C88F00_ShaderTextureBinding_RequestWithTemporaryHandle.c)). [Request/publication](../evidence/native/functions/00C88B40_ShaderTextureBinding_RequestAndPublish.asm) ([C](../evidence/native/functions/00C88B40_ShaderTextureBinding_RequestAndPublish.c)) can return ALfalse on parse failure without writing the output handle. The two parent layouts and their whole class/phase identities remain distinct and unnamed. [D6D970](../evidence/native/functions/00D6D970_FUN_00d6d970.asm) ([C](../evidence/native/functions/00D6D970_FUN_00d6d970.c)) invokes resource initialization on its global before its own literal8000 branch; this does not prove complete startup/session topology. Descriptor producers, registry capacity, water child completion, sampler/pixel behavior and full reset/reinitialization topology remain explicit gaps.


### Concrete resource-service dispatch data

The constructor selects vtable `00FFE3F0`. These file-backed little-endian words
identify its submission and locked-clear consumers; they are static dispatch
entries, not observed runtime resource pointers.

| Slot VA | Original bytes | Destination |
| --- | --- | --- |
| `00FFE424` (`vtable+0x34`) | `80 9D 72 00` | `00729D80` |
| `00FFE42C` (`vtable+0x3C`) | `20 8D 72 00` | `00728D20` |


## Sky time override and probe callback receiver

The original pending weather store above is independent of sky clock posing and probe render completion. The following selected existing bodies were inspected in explicit /TS3W.exe. The complete new canonical pairs retain their inferred C/prototypes and qualify them with physical instructions. No database analysis/definition/prototype/byte change or save occurred.

[6AE760 ASM](../evidence/native/functions/006AE760_FUN_006ae760.asm) ([C](../evidence/native/functions/006AE760_FUN_006ae760.c)) is physical ECX manager, no stack inputs/plainRET. Queue-front/end40/50 equality returns. A front object receives virtual+4 before the step. The selected callback argument begins at manager+B4; only a positive ordered manager hour replaces it with queued time. Optional manager+D0 provider virtual0 receives that F32 before6B5860, then provider virtual4 is called afterward, even when the step did not finish. Completion is lowAL from6B5860; a positive ordered queuedtime computes wrapped span24 from managerB4, stores spanC0/targetB8 and chooses phase4 plus6B3030 when span<=12 (also unordered comparison path), otherwise phase1/countdown10/span1. It stores completed pointerFC and pops the queue. Final6AE88B is a physical tail JMP through front-object virtual+8, not an algorithmic jumptable despite the C warning. Exact virtual object/refcount/queue/GPU readiness remains separate.

[Qualified callback data/CFG](../evidence/native/data/sky-probe-override.txt) retains interface table01075290: first two words are C147E0/C14820. Neither has a current defined Ghidra function/owned Listing/C; no fake function or decompilation was created. Each bounded52byte CFG ends before twelveCC bytes. C147E0 stores supplied F32 at interface+674 and calls C13240, C10590, C11A90 with adjusted receiver(interface-210), passing F32zero to the last. C14820 performs the same sequence after writing stored -1.0. The existing constructor-site instruction C1117B stores table01075290 at base+210. Thus this selected writer's interface+674 is **base+884**, not base+674. Only this pointer/field relationship is established; full class layout and actual manager provider installation/retirement remain open.

[C13240 ASM](../evidence/native/functions/00C13240_FUN_00c13240.asm) ([C](../evidence/native/functions/00C13240_FUN_00c13240.c)) entryC1325C reads base+884 and passes it to [C10350 ASM](../evidence/native/functions/00C10350_FUN_00c10350.asm) ([C](../evidence/native/functions/00C10350_FUN_00c10350.c)) atC1326A. C10350 COMISS thenJA accepts only a positive ordered override. Zero, negative and unordered input take6FAA90→6E8740 clock fallback, or0 if absent, before daylight remapping and C159B0. Consequently, passing0 does not establish an explicit midnight pose; a host no-override representation must be compared through this reader, not just the setter. C13240 full original body is retained, but additional semantic review here is limited to this reader join. Its SIMD bitcasts, palette/time/weather/light/shader child arithmetic, FP state and complete output/lifetime remain unclosed.

These3existing owned bodies total3651bytes/903instructions. The2undefined entry CFGs are separate original data, not2more canonical function pairs. Exact data words0/24/12/1/-1 and table/constructor windows are retained together. CLR world generations, revisions, per-sample immutable values, shared live probe feeds, pending weather equality, host seven-frame baking and GPU resource/fence retirement are distinct reconstruction mechanisms; this static original sequence alone does not authenticate them. No original or host game/render/test run is claimed.
