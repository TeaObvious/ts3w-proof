# Original skeleton, blend, outfit and Sim-export data

Reference: original PC1.67 TS3W.exe, identified centrally. Analyst role names are
not recovered symbols. Every pair below is the complete actual Ghidra-owned
Listing and actual annotated decompiler output; uncertain aliases and decompiler
warnings remain visible. Original/modified FileBytes and all selected memory
envelopes were checked unchanged.

## Canonical complete functions

| Entry | Analyst role | Original code |
| --- | --- | --- |
| 00576D20 | Skeleton_ReadBoneTable | [ASM](../../evidence/native/functions/00576D20_Skeleton_ReadBoneTable.asm) ([annotated C](../../evidence/native/functions/00576D20_Skeleton_ReadBoneTable.c)) |
| 0057C4B0 | Skeleton_ReadStructuredResource | [ASM](../../evidence/native/functions/0057C4B0_Skeleton_ReadStructuredResource.asm) ([annotated C](../../evidence/native/functions/0057C4B0_Skeleton_ReadStructuredResource.c)) |
| 005A3630 | BlendGeometry_ReadResource | [ASM](../../evidence/native/functions/005A3630_BlendGeometry_ReadResource.asm) ([annotated C](../../evidence/native/functions/005A3630_BlendGeometry_ReadResource.c)) |
| 005A30E0 | BlendGeometry_WriteResource | [ASM](../../evidence/native/functions/005A30E0_BlendGeometry_WriteResource.asm) ([annotated C](../../evidence/native/functions/005A30E0_BlendGeometry_WriteResource.c)) |
| 005A2F50 | BlendGeometry_QuantizeVector | [ASM](../../evidence/native/functions/005A2F50_BlendGeometry_QuantizeVector.asm) ([annotated C](../../evidence/native/functions/005A2F50_BlendGeometry_QuantizeVector.c)) |
| 005A2FB0 | BlendGeometry_ReadUInt16Bank | [ASM](../../evidence/native/functions/005A2FB0_BlendGeometry_ReadUInt16Bank.asm) ([annotated C](../../evidence/native/functions/005A2FB0_BlendGeometry_ReadUInt16Bank.c)) |
| 005A3010 | BlendGeometry_ReadUInt32Bank | [ASM](../../evidence/native/functions/005A3010_BlendGeometry_ReadUInt32Bank.asm) ([annotated C](../../evidence/native/functions/005A3010_BlendGeometry_ReadUInt32Bank.c)) |
| 00953890 | Steering_InitializeKindFromObjectParameters | [ASM](../../evidence/native/functions/00953890_Steering_InitializeKindFromObjectParameters.asm) ([annotated C](../../evidence/native/functions/00953890_Steering_InitializeKindFromObjectParameters.c)) |
| 00952260 | Steering_SelectBodyClassId | [ASM](../../evidence/native/functions/00952260_Steering_SelectBodyClassId.asm) ([annotated C](../../evidence/native/functions/00952260_Steering_SelectBodyClassId.c)) |
| 009A8430 | SimExport_ReadContainer | [ASM](../../evidence/native/functions/009A8430_SimExport_ReadContainer.asm) ([annotated C](../../evidence/native/functions/009A8430_SimExport_ReadContainer.c)) |
| 009A67A0 | SimExport_WriteContainer | [ASM](../../evidence/native/functions/009A67A0_SimExport_WriteContainer.asm) ([annotated C](../../evidence/native/functions/009A67A0_SimExport_WriteContainer.c)) |
| 005EFBA0 | SimService_ReadOutfitCaches | [ASM](../../evidence/native/functions/005EFBA0_SimService_ReadOutfitCaches.asm) ([annotated C](../../evidence/native/functions/005EFBA0_SimService_ReadOutfitCaches.c)) |
| 005EFF00 | SimService_WriteOutfitCacheChunks | [ASM](../../evidence/native/functions/005EFF00_SimService_WriteOutfitCacheChunks.asm) ([annotated C](../../evidence/native/functions/005EFF00_SimService_WriteOutfitCacheChunks.c)) |
| 005EFA30 | SimService_ReadLegacyOutfitCache | [ASM](../../evidence/native/functions/005EFA30_SimService_ReadLegacyOutfitCache.asm) ([annotated C](../../evidence/native/functions/005EFA30_SimService_ReadLegacyOutfitCache.c)) |
| 005EB850 | SimOutfit_ReadCachedRecord | [ASM](../../evidence/native/functions/005EB850_SimOutfit_ReadCachedRecord.asm) ([annotated C](../../evidence/native/functions/005EB850_SimOutfit_ReadCachedRecord.c)) |
| 005E8920 | SimOutfit_WriteCachedRecord | [ASM](../../evidence/native/functions/005E8920_SimOutfit_WriteCachedRecord.asm) ([annotated C](../../evidence/native/functions/005E8920_SimOutfit_WriteCachedRecord.c)) |
| 005EF140 | SimService_ReadCachedOutfitRecords | [ASM](../../evidence/native/functions/005EF140_SimService_ReadCachedOutfitRecords.asm) ([annotated C](../../evidence/native/functions/005EF140_SimService_ReadCachedOutfitRecords.c)) |
| 005DFC10 | ResourceLookup_FindDefaultPart | [ASM](../../evidence/native/functions/005DFC10_ResourceLookup_FindDefaultPart.asm) ([annotated C](../../evidence/native/functions/005DFC10_ResourceLookup_FindDefaultPart.c)) |
| 005BFAC0 | DesignPreset_InitializeEmpty | [ASM](../../evidence/native/functions/005BFAC0_DesignPreset_InitializeEmpty.asm) ([annotated C](../../evidence/native/functions/005BFAC0_DesignPreset_InitializeEmpty.c)) |
| 005E9DA0 | SimOutfit_ReadWire | [ASM](../../evidence/native/functions/005E9DA0_SimOutfit_ReadWire.asm) ([annotated C](../../evidence/native/functions/005E9DA0_SimOutfit_ReadWire.c)) |
| 005E7D20 | SimOutfit_WriteWire | [ASM](../../evidence/native/functions/005E7D20_SimOutfit_WriteWire.asm) ([annotated C](../../evidence/native/functions/005E7D20_SimOutfit_WriteWire.c)) |
| 005B2DC0 | CASPart_ReadResource | [ASM](../../evidence/native/functions/005B2DC0_CASPart_ReadResource.asm) ([annotated C](../../evidence/native/functions/005B2DC0_CASPart_ReadResource.c)) |

## Skeleton stream

0057C4B0 admits unsigned outer2..4 and invokes00576D20 for separate bone-table0..2.
Bone fields are translation3/quaternion4/scale3, counted byte name, opposing/parent/
hash/flags; flags occupy live+60 and live stride70. Bone-table2 adds the skeleton
byte name. Every admitted outer version reads IK count/indices, eleven info
DWORDs and four additional indices (live stride4C); outer2 has seven more DWORDs.
The reader does not gate all IK data on outer4. Legacy signatures select exact
0C244B35 group/instance siblings; missing-primary extension is not established.
Native derived-name, matrix and evaluator children retain separate contracts.

## BGEO stream

005A3630 admits endian magic4F454742/4247454F, versions100..3FF and four LODs.
Header offsets/strides are reader inputs.005A30E0 writes300, LOD offset8/stride12.
Before300 map entries are DWORDs; otherwise words. Only100 uses float3 vectors;
other versions use word3. Low-two flag0 leaves the accumulator unchanged. Flagged
entries add raw-minus-flags; packed storage truncates to16bits. Accumulation spans
LOD/region boundaries;100 divides byte offsets by12 before packed conversion.
005A2F50 uses separate MULSS2000/ADDSS32768.5/CVTTSS2SI, storing low16.
The shared bank helper name mentioning UTF16 does not make vector data text.
Native allocation/overflow/failure and full LOD deformation consumption are
not inferred from the current detached managed decoder.

## Outfit and cache stream

005E9DA0 unsigned version gate admits2..21; actual instructions retain blend and
binary-preset branches that current decompilation can label unreachable. Existing
wire annotations describe byte/UInt16 key lanes, TGI versus IGT order and five
texture pairs. Full loading also resolves resources and submits work, beyond
pure value parsing.005E7D20 is the corresponding current-format writer.
005EB850/005E8920 establish marker0D160D16, UInt32 body size, body, then external
key count (markedUInt16, unmarkedbyte) and reference handles.005EF140 owns record
registration; versions below7 invoke unframed outfit loading.
005EFBA0 tries split20001 before legacy1. An opened invalid split cache does not
fall back. Step/compositor restoration precedes consecutive30001+ chunks.
005EFF00 writes version8, at most125 records/chunk, selected by references or
its retain-all flag.005EFA30 handles legacy1..7 with pool/compositor version order.
Native full-manager side effects are not equivalent to extracting outfit values.
Missing-part default lookup005DFC10 uses its packed selector then a separate
fallback child;005BFAC0 creates an empty preset rather than parsing a saved one.

## Sim export and CASP dependency admission

009A8430 reads UInt16 version<=4, UInt16 IGT-key count/rows, UInt16 object-ID
count/UInt64 rows, pre2 legacy UTF16, UInt32 script length<=02000000/payload,
v3+ Boolean and v4+ UTF16 source.009A67A0 writes4 and optionally remaps keys.
The key loop9A84CB..9595 physically exists despite its decompiler warning.
Undefined5 strides and stack aliases are not authoritative serialized types.
CASP005B2DC0 admits3..18. Its version>10 table normalizes EVERY key before
testing source group01000000 and resolved type00B2D882/736884F1/033A1435/0355E0A6.
OR of both instance DWORDs controls zero skipping; a nonzero key needs actual
ResourceMan virtual44 presence. Null jumps5B43C1, even for unused table keys.
The decompiler incorrectly groups the OR/AND condition;5B2F5C..2FC5 is authority.

## Steering and retained boundaries

00953890 exact byte strings map Sim/GameSim/AnimatedBoat1, Car2, Bicycle3,
Paddleboat4, Rail5; absent/unknown leaves existing+94 unchanged. It writes AL1,
not a defined full-EAX Boolean, and selected branches update additional state.
00952260 is caller-cleaned three words/plainRET; kind1 needs the animated flag
for F4CFD7DA, kinds2..5 select their vehicle IDs, other/default E4CFBAEC.
Full body construction and native engine object lifetimes remain separate.

These are static original contracts. No native execution, full-game parity,
managed fixture, malformed-stream exhaustiveness or platform acceptance follows
from export and DB annotation. Full child algorithms remain explicitly bounded.


## Saved steering writer/reader and captured-route ownership limits

Four necessary existing-function pairs now close the selected saved-kind reader,
writer/version setter and the actual bicycle rig-distance consumer:

| Entry | Complete owned bytes / Listing | Canonical evidence |
| --- | --- | --- |
| 952790 |723 /213 | [ASM](../../evidence/native/functions/00952790_FUN_00952790.asm) ([C](../../evidence/native/functions/00952790_FUN_00952790.c)) |
| 952A80 |489 /153 | [ASM](../../evidence/native/functions/00952A80_FUN_00952a80.asm) ([C](../../evidence/native/functions/00952A80_FUN_00952a80.c)) |
| 932950 |12 /3 | [ASM](../../evidence/native/functions/00932950_FUN_00932950.asm) ([C](../../evidence/native/functions/00932950_FUN_00932950.c)) |
| 854EE0 |1020 /286 | [ASM](../../evidence/native/functions/00854EE0_FUN_00854ee0.asm) ([C](../../evidence/native/functions/00854EE0_FUN_00854ee0.c)) |

All2244 owned bytes/655 instructions match pristinePE/independentdecode and
fresh readonly explicit /TS3W.exe function metadata ranges. No gaps/padding or
jump-table data are promoted to code. Seven existing canonical entries retain
3385 envelope bytes checked without re-export:953890/952260/955A30/93EB00/
576D20/57C4B0/6D7DA0. Serial native requests all terminal; noDBmutator,
annotation/prototype/body repair/reanalysis/save/original-byte change or runtime.

952790 has ECX component, stream context and descriptor stackwords,RET8; only
AL is Boolean. Version is descriptor UInt16+4. Version0 returnsAL1 without this
reader writing+94. Otherwise a32bit local is read and unsigned0..5 dispatch
through the [actual24byte table](../../evidence/native/data/steering-binding-selected-data.tsv)
to stores0..5. Unsigned>5 leaves existing+94 unchanged; kind2 also invokes
owner-dependent B03460 and writes+DC. Stream accumulated status is checked
after that switch, so failed read is not a rollback promise. Native955A30 starts
+94 at0,953890 can set it from parameters, and loader/init call order remains a
separate lifecycle question for unknown/legacy inputs. A host's nullable saved
state or raw prototype classifier is not automatically the whole original policy.

Reader>=5 reads+100;>=4 reads+E8, else legacy93D700/5ECCD0 derivation;>=2
may read optional pose and invoke component+8 virtual30;>=3 reads+E0 and clears
+E4;>=6 reads bytes104/105,word106 and+108. Actual stream status/AL branches
and plain stored widths govern, not C pointer locals or in_EAX artifacts. Full
primitive endian/codec, optional body pose, resource lookup and later consumers
remain precise lower paths4DD980/7D79F0/7D7B60/7D7C20/55DD90/952520/
component virtual30, not proof of all body/rig restoration from kind alone.

Writer952A80 calls932950(descriptor,6). The actual three instructions move
low16 input into descriptor+4; this is assignment, not a guessed max-version or
validation helper. It then writes+94,+100,+E8, queries optional body interface
06FAFAF6 and9524C0 pose outputs, writes presence/pose, +E0,104/105/106/+108,
checking accumulated stream status after each stage. E0/108 go through FLD/FSTP
to5662B0; do not claim raw UInt32/NaN-bit equivalence solely from host wire fields.
Generic writer primitive4DE060/4DDF70/4DDE00/5662B0 and pose helpers7D7B90/
7D7C50 remain separate. This selected writer always requests version6; it does
not prove current host legacy-version write admission, auxiliary-field retention
or whole world/save semantics.

854EE0 calls858870 base and only enters rig work when+A4/virtual20 supplies a
rig. Verified [bone bytes](../../evidence/native/data/steering-binding-selected-data.tsv)
are front_wheel_position and rear_wheel_position, stored indices+E8/+F0.
With rig, +B4 starts1.0. If both indices differ from-1, temporary pose/matrix
translation distance replaces it. MULSS0.5 then stores+B8. Missing either bone
therefore yields0.5, not1.0, as front offset; the current host0.5 is not a bug.
Existing [scalar data](../../evidence/native/map-view-lot-detail-data.tsv) retain
F998F8=1.0/F9B5B4=0.5 and were PE-checked again without duplicate export.
No-rig base858870, exact576040 lookup,575050/5744A0/574A90/574AB0 matrix
producer, actuator/animation/refcount and SSE-versus-host Vector3 arithmetic
remain open. The full CarBody front-offset init855CC0 is separate, not inferred.

Current VehicleRouteBinding captures ObjectId/generation/steering and exact
created-or-resident references under registry ObjectIdentityGate. Current checks
reject replaced references/worlds/destroyed or withdrawn route sources rather
than resolving a new owner by GUID. Created pose uses its Snapshot; resident
pose combines live overrides and authored rotation. Its GetRig created path reads
prototype rig; resident path reaches the separate ResidentSkeletonState cache.
These are host observations, not native pointer/route-body/slot/queue lifetime
guarantees. Original routebegin758BF0/758C30 through757510 and body construction
955280 need their own caller/lifetime join before full native vehicle admission,
unsupported PaddleBoat/Rail behavior, seating, pose/curve/sound/event acceptance.

ResidentSkeletonState admits exact resolved8EAF13DE nonzero rig keys without a
render mesh, caches by object/world/key and holds zero-vertex pose scratch.
93EB00's old-reference release before resource acquisition and IID8EAF13DE
retain/assign/temporary release is a different concrete native lifetime. Host
same-generation GUID/key reuse, resident-reference/withdrawal differences,
repository positive source-context bypass on cache hit, actor803C60/followup
93DF40, bone queries and native object retirement remain precise open comparisons.
Source reference checks are not an immutable resource or safe parallelism proof.
No new original managed policy is reconstructed in this host binding.


## TONE version admission and physical key branches

Complete PC1.67 reader005F3560 is retained as [original ASM](../../evidence/native/functions/005F3560_FUN_005f3560.asm)
([actual Ghidra C with separate analyst preamble](../../evidence/native/functions/005F3560_FUN_005f3560.c)).
The Listing establishes the physical ABI and version branches independently of
the stored inferred C signature. Reference identity is centralized above; these
are static original-code findings.

The entry receives owner ECX and stream stack4, RET4. It reads version and admits
unsigned(version-2)<=4, therefore2..6. It constructs the stream reader/key-list
wrapper; version2 skips ReferenceTable_ReadResourceKeys, whereas3+ checks its AL
and frees/releases wrappers on failure. Version2 reads the two owner keys at+28
and+38 directly using UInt64 then two UInt32 reads per key;3+ uses ordinal-key
reads with AL refusal. Do not reinterpret v2 as an indexed v3 header.

The outer shader count is consumed through signed comparisons. Each row reads
flags, finds/appends a16-byte entry in a flags-selected collection, reads DWORDs
into row+4 then+0 then+8 and a Boolean into+12. This establishes physical order,
not the entire shader selection/interpolation, duplicate-key or malformed-stream
contract. Texture rows read two flags then a flags-selected texture set; four
base keys occupy+0/+10/+20/+30. Version4 adds+50,5 adds+40,6 adds+60, in that
serialized order. Version2 instead reads four full keys directly. Final Boolean
goes to owner+48 before accounting and wrapper release. Success writes AL1;
refusals clear AL only. The stored full-word inferred return type must not be
treated as a normalized Boolean/fullEAX result.

The sole recorded incoming reference005F3A29 lies in an undefined stored function
region: it is a concrete callsite, not a recovered full factory/caller body.
Original stream readers, reference-table helpers, flags-selected allocation,
constructor defaults, save writer, duplicate/hash order, downstream005F2B90/
005F2C40/005F2880 and resource/texture lifetime remain to be joined completely.
No strict seekability/4MiB/exact-table-end, count65536/16384 or finite/power/genetic
validation policy is established from this body. The presence and frequency of
version2 resources in a selected installed corpus require separate inspection.


## In-world morph and outfit request readiness

The selected original request/component functions extend the data boundary to
actual current/pending model owners; they are not a CLR worker or renderer ABI.

| Entry | Complete canonical evidence | Physical boundary |
| --- | --- | --- |
| 0094F610 | [ASM](../../evidence/native/functions/0094F610_FUN_0094f610.asm) ([actual C](../../evidence/native/functions/0094F610_FUN_0094f610.c)), 128instructions/354bytes | Sim model morph update, ECX+four raw Single words RET16. Refuses null/tagged current model+30; directly stores words at model+68/+6C/+70/+74 before Animation lookup. Rig key+ A8 and selected animation resource retained in message7334B554, then693380 dispatcher and cleanup. No finite guards, cancellation/task or supplied user callback in this child; full render consumer/deformation remains separate. |
| 005AA330 | [ASM](../../evidence/native/functions/005AA330_FUN_005aa330.asm) ([actual C](../../evidence/native/functions/005AA330_FUN_005aa330.c)), 45instructions/132bytes | ECX request constructor plus six stack words RET24. Stores owner GUID, resource state+18 and callback+28, retains callback virtual0, stores5AE5B0 function pointer, resource manager virtual34 requests type025ED708 into state+18 with callbackD4B3A0 and flag1. Native tagged-resource/request lifetime is distinct from CLR Task scheduling. |
| 005AE5B0 | [ASM](../../evidence/native/functions/005AE5B0_FUN_005ae5b0.asm) ([actual C](../../evidence/native/functions/005AE5B0_FUN_005ae5b0.c)), 319instructions/896bytes | cdecl request pointer, plain RET and only AL1 defined. Resource state+18 bit1 queues retry030290F0; absent/tagged nonpending state invokes optional callback+28 virtual10 without publishing model. Live owner is acquired/retained; absent animation rig requeues. No callback selects message2BE20162/current model+30; callback selects6A4479F1/retained callback/pending+34. Message enqueue, component writes, event13/bone resource and cleanup are ordered but child dispatch/retirement remain open. |
| 005AE390 | [ASM](../../evidence/native/functions/005AE390_FUN_005ae390.asm) ([actual C](../../evidence/native/functions/005AE390_FUN_005ae390.c)), 45instructions/149bytes | cdecl record pointer/plain RET, AL1. Requires global interface and record+18 callback; forms UInt64 variant from+8 then physical virtual134 call pushes count1, parameter variant, callback and output variant. Pseudocode omits those argument words and misrepresents EDI cleanup; instructions govern. Full dispatcher/usercallback lifetime is not proved by this helper. |

94F610 stores four unvalidated raw Single arguments in current model+68..74,
then looks up Animation, assigns rig and sends7334B554 retaining model and rig.
It does not rebuild a CLR model or call a body-shape user callback. Complete
693380 queue and render reader/deformation/FP/resource lifetime remain separate.

5AA330 requests025ED708 through the existing manager and keeps a tagged resource
slot plus optional callback.5AE5B0's pending bit queues030290F0; missing/failed
resource can invoke ready virtual10 with no swap. An existing Animation with no
rig also requeues. Ordinary/no-callback branch enqueues2BE20162 and writes current
Sim model+30; callback branch enqueues6A4479F1, retains callback and writes pending
model+34. Native owner references are held through those selected writes. This
is not a success guarantee for every callback or an atomic CPU/render commit.

5AE390 builds a UInt64 variant and invokes global interface virtual134 with four
physical stack words (output variant, callback, parameter vector, count1). The
actual EDI and cleanup differ from inferred C aliases. Only AL1 is defined;
upper EAX is not a Boolean. This body has a data reference from5AE961, not a
proved executed CALL.5AE930 remains undefined in current FunctionAt inventory;
its bridge/vtable/event delivery, original managed ready consumer, full abort/
complete callbacks and all resource/error/retirement branches need independent
joins before universal scheduler/lifetime parity.

Current GameObjectBodyShapeJobs and GameObjectOutfitJobs introduce host Task,
CTS, preview-generation and registry-generation fences. Cancellation, physical
worker completion, model Unregister/Dispose and GPU retirement are separate.
The current no-independent-model fallback signals readiness despite no swap;
that host limitation is not inferred original behavior or a repaired case.
