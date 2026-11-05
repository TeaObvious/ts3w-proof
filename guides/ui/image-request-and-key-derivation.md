# PC 1.67 UI thumbnail requests, keys and image publication

These three complete original functions retain meaningful analyst-assigned names;
the names are not recovered original symbols. Physical instruction widths, stack
arguments, signedness and low-byte results take precedence over inferred Ghidra
prototypes. The executable/version basis is [central](../../evidence/native/README.md).
[Necessary original data](../../evidence/native/ui-image-request-data.tsv) retain
the three labels, unsigned-conversion scalar and command-cleanup pointer chain.

| Entry | Complete body and paired evidence |
| --- | --- |
| 00779200, UIThumbnail_InitializeRequestDescriptor |296 bytes/79 instructions; [ASM](../../evidence/native/functions/00779200_UIThumbnail_InitializeRequestDescriptor.asm) ([C](../../evidence/native/functions/00779200_UIThumbnail_InitializeRequestDescriptor.c)) |
| 00D4AA70, UIThumbnail_DeriveResourceKey |1009 bytes/255 instructions; [ASM](../../evidence/native/functions/00D4AA70_UIThumbnail_DeriveResourceKey.asm) ([C](../../evidence/native/functions/00D4AA70_UIThumbnail_DeriveResourceKey.c)) |
| 00D5C970, UIThumbnail_AllocateImageAndPublishCommand |540 bytes/196 instructions; [ASM](../../evidence/native/functions/00D5C970_UIThumbnail_AllocateImageAndPublishCommand.asm) ([C](../../evidence/native/functions/00D5C970_UIThumbnail_AllocateImageAndPublishCommand.c)) |

The raw pairs contain all530 original Listing instructions/1845 bytes. Each body
is contiguous; no alignment bytes or neighboring instructions are promoted into
its ownership. Inferred source types and indirect child effects remain bounded.

## Descriptor input and forwarding

The initializer takes its receiver in ECX and consumes fifteen stack words by
RET0x3C. The registered general-thumbnail entry's physical stack maps the stored
fields below; this mapping does not rely on the narrower inferred frontend C
prototype.

| Descriptor offset | Stored request input |
| --- | --- |
| +78/+7C/+80/+84 | key instance-low/high/type/group |
| +88/+8C | template object-ID low/high |
| +FC /+100 /+108 | camera /index /ageGender |
| +10C /+110 | geometry /material state |
| +114 /+115 | low byte of technique /liveUpdate |

It initializes two fixed-vector regions, zeroes four16-byte entries and
+104/+118/+11C/+120, then forwards size and low-byte doNotCache to005E6CB0
with the other payload zeroed. The child implementation's cache policy is not
established here. Return is the same descriptor pointer.

The original general-thumbnail entry loops four additional-size bits, resolves
nonzero template IDs through00D4C440, resolves a supplied placeholder through host
virtual+CC, invokes the image allocation helper and registers a nonzero output
through virtual+C8 with type30. Its [ASM](../../evidence/native/functions/00783090_ScriptCore_UIManager_UIManager_GetThumbnailImageImpl.asm)
([C](../../evidence/native/functions/00783090_ScriptCore_UIManager_UIManager_GetThumbnailImageImpl.c)) pair contains a497-byte complete
stored body inside its512-byte historical window. The CAS frontend uses its own
descriptor initializer and no placeholder; [ASM](../../evidence/native/functions/00783290_ScriptCore_UIManager_UIManager_GetCASThumbnailImageImpl.asm)
([C](../../evidence/native/functions/00783290_ScriptCore_UIManager_UIManager_GetCASThumbnailImageImpl.c)). The complete save-metadata
frontend prepares separate household/lot requests; [ASM](../../evidence/native/functions/007833C0_ScriptCore_UIManager_UIManager_GetSaveGameMetadataImpl.asm)
([C](../../evidence/native/functions/007833C0_ScriptCore_UIManager_UIManager_GetSaveGameMetadataImpl.c)).

The retained complete00D4C440 caller iterates24-byte entries and forwards source
key, size from entry+10, camera+FC, index+100, output entry, technique+114,
geometry/material+10C/+110 and template-ID words+88/+8C to00D4BBA0.
AgeGender+108 is not an argument in that call. The retained complete00D4BBA0
path preserves selected keys or selects an available catalog common icon before
falling back to the key derivation below. That caller evidence does not establish
an entire native cache or renderer.

## Resource-key derivation

Key word order is instance-low, instance-high, type, group. The helper copies
instance, initializes output group tozero and derives the output type and selected
group from request fields. Computed groupzero inherits the entire source group;
nonzero computed group is ORed with source F8000000 bits. This helper has no
uniform size0..3 admission check.

| Source type | Output type/group rule before final group merge |
| --- | --- |
| 025ED6F4 | 0580A2CC+size. Both template-ID wordszero and unsigned(index-256)<=512 select pose256; otherwise unsigned index<256 selects that index and larger index leaves posezero. OR `((camera<<4) | lowByte(technique))<<16`. |
| DEA2951C | 0580A2CC+size; `(camera<<20)|index`. |
| 03555BA8 /0358B08A /72683C15 | 626F60CC+size; computed group startszero. |
| 034AEECB /051DF2DD /93D84841 | 626F60CC+size; positive signed index becomes computed group. |
| 0B3A415E /436FEE4C /319E4F1D /515CA4CD | 6B6D837C /D84E7FC4 /0580A2B4 /0589DC44 +size respectively. |
| 0418FE2A /04ED4BB2 /049CA4CD /04C58103 /04F3CC01 /2E75C764 | 2653E3C8 /05B1B524 /5DE9DBA0 /2D4284F0 /05B17698 /2E75C764 +size respectively. |
| 04F88964 | 54372470+size, mapping size3 to2; computed camera<<20. |
| 00B2D882 | Group subtype02722299 /024B9FCA /0276A838 /0E9928A8 /02BD69A0 /0233C64C selects4638D6D0 /85AA4520 /56FE4680 /0E9921F0 /56FE4680 /7461ADB0 +size respectively; other groups use2F7D0004. |
| 01661233 | Group02C3BDF7 selects7AED2FC0+size; otherwise AD366F94+size and instance-high is replaced through the four-byte material/hash child. Its hash algorithm is not expanded. |
| 9A6BFF0C /C4A140C0 /F6A0B710 | 9A6BFF0C /F708262C /F6A0B710 +size respectively. |
| Other covered/default types | Default2F7D0004 and the same instance/group merge. |

The template-ID condition belongs to the pose-range branch. Camera and technique
packing are independent of that condition. A caller's inferred assignment of this
void helper's apparent return is not a defined return contract. Resource-key
selection does not establish image availability, completed pixels or decoder policy.

## Allocation, padding and command submission

The allocation helper has an ECX service receiver and request/output-slot/
placeholder stack inputs, consumed by RET12. An empty request span returns AL0;
upper EAX is not normalized to a complete Boolean. For a nonempty span it allocates
a12-byte texture wrapper with the thumbnail texture label, invokes007DBF60 and
calls slot0 when the result is nonnull. It obtains requested dimensions through
00D4ED30 and calls00619EB0 before minus-one/bit-smear/increment padding arithmetic.
Zero and overflow arithmetic are retained; no added clamp or minimum is inferred.

It allocates a44-byte image, invokes0050AA10 with original/padded unsigned
conversion ratios, zero origins and flag21, stores the output image and invokes
that image's slot0 unconditionally. The unsigned x87 conversion path adds the
stored binary32 value2^32 for negative signed projections. The image allocation
failure path does not supply an extra null-safety guarantee before that slot call.

The helper constructs a stack command, passes request/texture/placeholder through
00D59B60, calls00693380, invokes the command cleanup and temporary texture slot4,
then returns AL1. The queue helper ([ASM](../../evidence/native/functions/00693380_RenderCommand_EnqueueIfDispatcherExists.asm)
([C](../../evidence/native/functions/00693380_RenderCommand_EnqueueIfDispatcherExists.c))) is conditional on dispatcher availability;
this sequence is allocation and command submission, not proof that the command
executed or that pixels are ready. Child constructors, concrete virtual reference
semantics, cache admission/invalidation, placeholder effects, format decode and
GPU/resource retirement remain outside these selected bodies.

The former one-byte-body qualification is superseded by existing complete owned
evidence: setter77BEF0 is324 bytes, shared typed release7796E0 is56 bytes/20
instructions and world metadata7801B0 is511 bytes/145 instructions. Save metadata
7833C0 has471 current Listing instructions/1615 body bytes inside its retained
1616-byte bounded export; trailing padding is not owned. No repeat export or
database/body/prototype mutation was needed. These frontend bodies still do not
establish full native image pool/cache/queue/render lifetime. No original runtime
or GPU execution is asserted.


## Menu metadata, allocated images and issued-source limits

Fresh serial readonly MCP requests explicitly selected /TS3W.exe. Existing world,
save and shared-release canonical exports were reused and compared to pristine
original PE bytes plus independent instruction decoding:145/471/20 instructions,
511/1615/56 body bytes. Setter's existing324 owned bytes also match. Named scoped
query resolution failed before numeric address lookup succeeded; a name-resolution
error is not evidence of a missing function. No new export, annotation, mutator,
program open/close, database save, original-byte change or parallel native job.

Registered11630C8→7801B0, ScriptCore import06000E54, consumes six physical
stack words: world filename, lot-count out, thumbnail out, name-hash64 out,
type out, name out. It converts filename through host+58 and opens AAB460,
constructs5A27E0 metadata then reads AABD30. Successful metadata supplies fields;
optional image pointer goes through7E85B0. A null conversion explicitly writes
zero thumbnail, while an absent metadata image can bypass that write. A nonnull
converted image has transferred metadata reference cleared, slot0 retain and
host+C8(image,30) registration. Global/path/read failure does not universally
clear output slots.5A2B90/5A2A00 supply effective type/name; package5A3B0 and
metadata5A28A0 cleanup remain distinct from any host process cache.

Registered11630B8→7833C0, ScriptCore import06000E52, takes filename and two
thumbnail output pointers. Instructions7833D6/7833DD clear both outputs before
global/path work. Separate household/lot descriptor paths use779200, size2,
geometryE1C27CD7, D4E5D0 and D5C970; nonzero acquired images register through
C8(kind30) and write their own output slot. Native descriptor/resource/provider,
format conversion and command completion cannot be replaced by a claim that
the host's installed PNG read implements the whole original pipeline.

UIImage and UIManager's original managed wrappers are the policy layer, with
pristine identities and selected raw CIL retained by the existing image analysis.
UI.UIManager.GetSaveGameMetadata060012BA initializes native locals zero, but on
zero it clears caller household image reference and leaves caller lot image
reference unchanged; world metadata likewise preserves caller image reference
on zero. This is not a symmetric ref-clear rule. ScriptCore wrappers06000EC3/
06000EC5 forward to the registered imports; native output storage is separate.

Shared7796E0 masks top byteFF000000, requires30000000, resolves host+D8(handle)
and tail-dispatches nonnull primary+4. It does not recover a source from numeric
hash bits. The concrete+C8/+D8 pool, last-release removal/reuse, image subclasses,
source normalization/file generation, provider failure and thread/queue/GPU
lifetime remain open. Generic typed registration is not proof of a permanent
source↔handle registry or automatic image re-materialization after destroy.

Current OpenTS3 uses an allocated UiImageHandle and full IsWorld/ASCII-folded
source/NUL/kind identity with locked forward/inverse maps, not old masked FNV
metadata IDs. Those maps contain no PNG and are not payload holds. Raw payload
lookup precedes issued-only world/save recovery. Inverse Add before forward Add,
process Lazy worlds, fresh save enumeration, allocator wrap, private OOM/logging,
cross-map publication/retirement, case-sensitive paths and source replacement
are separate host observations/unverified parity questions, not original rules.
No new correctness issue or runtime acceptance follows merely from this review.

[Four freshly selected managed metadata bodies](../../evidence/managed/selected/ui-menu-metadata/README.md) retain128 pristine CIL bytes, method headers, signatures, package keys/version/MVID/SHA256 and ref-output branches; this is selected closure, not disjoint additional coverage.


## Availability descriptor loop and native Library comparison

Two needed existing-function pairs extend the registered KeyExistsInDB779330
(row1162A60/import0600016A) and save-metadata7833C0 callers:

| Entry | Complete current body | Paired evidence |
| --- | --- | --- |
| D4E5D0 |158 owned bytes/61 instructions | [ASM](../../evidence/native/functions/00D4E5D0_FUN_00d4e5d0.asm) ([qualified actual C](../../evidence/native/functions/00D4E5D0_FUN_00d4e5d0.c)) |
| D4CFB0 |444 owned bytes/159 instructions | [ASM](../../evidence/native/functions/00D4CFB0_FUN_00d4cfb0.asm) ([qualified actual C](../../evidence/native/functions/00D4CFB0_FUN_00d4cfb0.c)) |

Serial explicit /TS3W.exe readonly MCP and pristinePE/independent instruction
decoding agree on all602 bytes/220 instructions. Existing functions/names/ranges
were used; no annotation, type/prototype/body repair, reanalysis or save. No
parallel native request, original target execution or package/GPU test.

D4E5D0 takes ECX receiver and descriptor stackword/RET4. Empty vector returns
AL1; otherwise each24byte row supplies size at+10. Key selection D4BBA0 gets
descriptor+78 source, camera+FC/index+100/technique+114/geometry+10C/material+110
and two zero template-ID words. D4CFB0 receives derived key and null changed-byte
pointer. AND BL,AL stops the first failure, success continues; upper EAX is not
a defined full Boolean. This loop alone neither decodes images nor implements
host cached-null, file stamps, retry frequency or asynchronous worker policy.

D4CFB0 physically takes key and optional changed-byte pointer/RET8. Global service
4AFE80 absent returnsAL0. Its virtual44(key) produces a DWORD retained in EBP;
D4B1E0 tag selects paths. Tag9AE56B71 invokes C8DF10 thenAL1;16C05B51 alsoAL1.
Tags8A5B4BEC/AE0BBEEE/8C8AACA8 enter the selected Library path via11EA6A4,
9A16B0 output and9A1F80. A selected unequal DWORD plus true9A1F80 can set the
optional changed byte and returnAL1. Do not call that DWORD a timestamp, pointer,
hash or content generation until its writer/reader is joined. Generic mode+59
compares service DWORD with D4BDC0(tag) and can returnfalse. Alternate CDA0
receives original saved receiver/key/out, may clear EBP on unequal successful
output and releases nonnull output's +4 subobject through its slot4. Exact
branch/global+84/+B0/+70 comparisons are retained in the instructions; meanings
and actual data ownership are open at those writers/readers, not guessed.

The genuine decompiler omits the second stack argument, writes changed status
through its key-looking param_1 and prints unaff_EDI for the restored receiver.
Instructions D4D0AA..B2 load original second word at savedESP+34 then optional
byte write; D4D126 restores receiver at savedESP+10 for CDA0. Those actual
instructions govern. No cosmetic prototype rewrite hides these remaining defects.

Current host Library cache captures catalog-owner/full-key/ordered matching
paths/nullable coarse length-time stamps before every hit, reads an exact resource
with independent returned stamp and requires PNG signature before publication.
This is not proven identical to original B1E0/virtual44/9A16B0/9A1F80/BDC0/CDA0
selection/comparison/retirement. Likewise synchronous retry of null CPU images and
conditional removal of zero issued-image cache values are host policies, not a
native negative-cache guarantee. The original generic GetThumbnailImage783090
submits actual image commands; it is not interchangeable with KeyExistsInDB's
availability query. Full native cache insertion/invalidation, provider lifetime,
last-release/source changes and queue/format/GPU behavior remain open.

The existing registered [KeyExistsInDB779330 ASM](../../evidence/native/functions/00779330_ScriptCore_ThumbnailManager_ThumbnailManager_KeyExistsInDB.asm) ([C](../../evidence/native/functions/00779330_ScriptCore_ThumbnailManager_ThumbnailManager_KeyExistsInDB.c)) retains a bounded192-byte window, freshly PE-checked; actual CALL7793AD targetsD4E5D0. Its historical window is not promoted to a new owned function extent.


## Current UI request/source owner

UiThumbnailRequests preserves current dispatch through runtime image, household,
lot, outfit, CAS, catalog and renderer job paths. World image cache invalidates by
source reference and payload existence; Library uses captured source.Matches and
replaces tuple without removing prior handle in that method. IO/source callbacks
run under distinct locks. Ignored ageGender/placeholder/doNotCache/additional-size
controls must be distinguished from779200/783090 stored/forwarded original fields;
these are no whole-request or pixel/cache/retirement equivalence claims.
Native provider/pool/reference/source-generation lifetime, full thread/queue/GPU
completion and actual productive effects remain the precise open contracts above.
