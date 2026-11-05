# Tree template texture preparation and request slots

## Scope

These are static original PC 1.67 contracts. Analyst names describe reviewed
roles; they are not recovered original symbols. Full selected bodies, exact
instruction ranges, calling conventions, field widths and immediate consumers
were reviewed. No game, GPU, malformed-input or timing test is implied. Original
map-channel ordinals do not by themselves establish shader sampler meanings.

## Stream load and authored map view

`TreeTemplate_LoadSptStream` receives ECX resource and a held stream on the stack,
returns AL and RET4. It prepares the stream, accounts its size, replaces an owned
E4-byte SPT wrapper, calls the section dispatcher and only on true invokes
texture preparation. It releases the held stream on selected normal success and
failure exits. Constructor/header/allocation failure containment is not fully
established by this boundary.
[ASM](../../evidence/native/functions/00715B70_TreeTemplate_LoadSptStream.asm) ([annotated pseudocode](../../evidence/native/functions/00715B70_TreeTemplate_LoadSptStream.c))

`SptMaps_ExportBorrowedStringViews` receives ECX wrapper and a32-byte output view,
RET4. Each seven-channel view is an allocated pointer array with count prefix;
strings themselves remain borrowed from the map bank at wrapper+DC. Output
words0/5/6 expose bank0/90/100 channels; word7 exposes the scalar at170. Words1/2
and3/4 expose counts/nested views for the vectors at70/80. The view destructor
frees the arrays and clears pointer fields, without destroying the strings.
[ASM](../../evidence/native/functions/007B9BE0_SptMaps_ExportBorrowedStringViews.asm) ([annotated pseudocode](../../evidence/native/functions/007B9BE0_SptMaps_ExportBorrowedStringViews.c)),
[ASM](../../evidence/native/functions/007B9690_SptMaps_DestroyStringViews.asm) ([annotated pseudocode](../../evidence/native/functions/007B9690_SptMaps_DestroyStringViews.c)).

The [SPT section contract](spt-section-readers.md) supplies the reviewed authored
map-bank producers. The original byte-to-wide and folded UTF16 FNV callees are
reused from their canonical pairs:
[ASM](../../evidence/native/functions/004F3B50_EaString_FromUtf8Bytes.asm) ([annotated pseudocode](../../evidence/native/functions/004F3B50_EaString_FromUtf8Bytes.c)),
[ASM](../../evidence/native/functions/007CFF80_NameHash64_Fnv1FoldedUtf16Units.asm) ([annotated pseudocode](../../evidence/native/functions/007CFF80_NameHash64_Fnv1FoldedUtf16Units.c)).

## Preparation order and shared-slot candidate fallback

`TreeTemplate_PrepareTextureProxies` has ECX receiver, no explicit stack inputs
and AL result. It first applies authored user data and the selected global
four-lane override test. It then submits four base requests in this order:

| Authored bank/string | Template proxy |
| --- | --- |
| Bank90 channel0 | +68 |
| Bank100 channel0 | +80 |
| Scalar170 | +B0 |
| Bank0 channel0 | +38 |

All selected proxy calls receive key,0,0,0 and their AL is ignored. Seasonal
feature bytes gate additional winter/winter_threshold requests with mask128
bits1/2/8/4 and distinct proxiesC8/E0/110/F8, admitted by a nonempty four-word key.

Bank0/channel1 requires a nonempty C string AND a nonzero resource-manager+44
result before request to proxy50. Bank100/channel2 has the same gates for proxy98.
If that proxy's slot is zero or tagged, bank90/channel2 can request the SAME
proxy98. The second request clears/detaches any first pending request; the gate
is not simply authored resource absence. Byte172 records dispatch, not successful
texture residency. Final local false is a missing installed variant pointer180;
normal completion prepares it as needed, destroys temporary views and returns
true. That result does not mean every submitted texture is available or rendered.
[ASM](../../evidence/native/functions/007154F0_TreeTemplate_PrepareTextureProxies.asm) ([annotated pseudocode](../../evidence/native/functions/007154F0_TreeTemplate_PrepareTextureProxies.c)).

## Filename/key construction and source namespace

The resolver consumes BYTE C strings through the original byte-to-wide helper;
earlier wchar input projections were incorrect. Base texture key type isB2D882,
group initially0. The pointer splitter recognizes backslash/slash/colon and UNC
roots, returning filename and last-extension pointers without modifying the
string. The generic key constructor subsequently uses the FIRST dot. It also
supports group!instance and numeric-name forms, rather than always hashing a
last-extension-stripped filename. The numeric detector can select the suffix
after the last underscore, allows optional0x, checks every digit through the CRT,
and accepts8 hex digits or16 when enabled. Without0x the first unit must pass
iswdigit. Ordinary names call the folded UTF16 FNV-1 helper; CRT locale and
malformed/non-ASCII conversion behavior remain bounded external questions.
[ASM](../../evidence/native/functions/00715150_Seasons_ResolveTreeTextureVariant.asm) ([annotated pseudocode](../../evidence/native/functions/00715150_Seasons_ResolveTreeTextureVariant.c)),
[ASM](../../evidence/native/functions/004ECEF0_Path_SplitWidePointers.asm) ([annotated pseudocode](../../evidence/native/functions/004ECEF0_Path_SplitWidePointers.c)),
[ASM](../../evidence/native/functions/004AEE40_ResourceKey_ParseWideName.asm) ([annotated pseudocode](../../evidence/native/functions/004AEE40_ResourceKey_ParseWideName.c)),
[ASM](../../evidence/native/functions/004AED70_ResourceKey_FindNumericSuffix.asm) ([annotated pseudocode](../../evidence/native/functions/004AED70_ResourceKey_FindNumericSuffix.c)).

The source number is unsigned(sourceGroup>>27)+1. A candidate group is rewritten
as((number-1)<<27)|(oldGroup&0x0FFFFFFF), preserving the actual overlapping mask.
For number!=1 the resolver checks that candidate before the base key; optional
base checking can return an empty key. Request-time normalization additionally
copies a key immediately when group&F0000000 is nonzero, otherwise can select a
separately transformed mounted candidate after base absence. That transform and
mount precedence are not equated with arbitrary package/group fallback.
[ASM](../../evidence/native/functions/007D78E0_ResourceKey_ExtractSourceNumber.asm) ([annotated pseudocode](../../evidence/native/functions/007D78E0_ResourceKey_ExtractSourceNumber.c)),
[ASM](../../evidence/native/functions/007D7890_ResourceKey_ApplySourceNumber.asm) ([annotated pseudocode](../../evidence/native/functions/007D7890_ResourceKey_ApplySourceNumber.c)),
[ASM](../../evidence/native/functions/007D8310_ResourceKey_CopyWithMountedCandidate.asm) ([annotated pseudocode](../../evidence/native/functions/007D8310_ResourceKey_CopyWithMountedCandidate.c)).

## Proxy and actual service ownership

`TextureProxy_SubmitKey` has FOUR stack inputs, RET10hex, AL result. It calls
global11D4C84 virtual34 with the key, separate literalB3D7A7, output proxy+10,
third input,0, callbackD4B3A0,fourth input,1. The second input is unused. Missing
service or rejected submit returns false. Only a nonzero low byte of the third
input invokes virtual40 before the nonzero/low2bits0 predicate. The selected tree
caller passes zero; this alone is not a global asynchronous/nonblocking claim.
The predicate itself does not call, wait or dereference the represented resource.
[ASM](../../evidence/native/functions/00722EF0_TextureProxy_SubmitKey.asm) ([annotated pseudocode](../../evidence/native/functions/00722EF0_TextureProxy_SubmitKey.c)),
[ASM](../../evidence/native/functions/00722EA0_TextureProxy_HasUntaggedResource.asm) ([annotated pseudocode](../../evidence/native/functions/00722EA0_TextureProxy_HasUntaggedResource.c)).

The service allocation is3A8 bytes and constructor installs vtableFFE3F0, whose
34/40 entries are729D80/728FD0. The [original vtable words](tree-texture-request-vtable.tsv) join those targets.
The complete initialization body creates it,
checks virtual4 AL and publishes through the global exchange at738FE9. The
exchange/getter are ordinary MOV operations; they add no independent refcount,
atomicity or readiness guarantee. The separate resource manager is published
through4AFE90 earlier, at7389E2.
[ASM](../../evidence/native/functions/007287F0_ResourceRequests_Allocate.asm) ([annotated pseudocode](../../evidence/native/functions/007287F0_ResourceRequests_Allocate.c)),
[ASM](../../evidence/native/functions/00728600_ResourceRequests_Construct.asm) ([annotated pseudocode](../../evidence/native/functions/00728600_ResourceRequests_Construct.c)),
[ASM](../../evidence/native/functions/007386A0_ResourceSystem_InitializeServices.asm) ([annotated pseudocode](../../evidence/native/functions/007386A0_ResourceSystem_InitializeServices.c)),
[ASM](../../evidence/native/functions/00727160_ResourceRequests_ExchangeGlobal.asm) ([annotated pseudocode](../../evidence/native/functions/00727160_ResourceRequests_ExchangeGlobal.c)),
[ASM](../../evidence/native/functions/00727150_ResourceRequests_GetGlobal.asm) ([annotated pseudocode](../../evidence/native/functions/00727150_ResourceRequests_GetGlobal.c)).

The [original 17-word service vtable](tree-texture-request-vtable.tsv) starts at
`00FFE3F0` and joins construction to these two selected virtual consumers.

## Slot state transitions, replacement and completion

Submit has ECX service and EIGHT stack inputs, RET20hex. Under lock40, it clears
an old slot and attempts existing-resource lookup/interface selection. That can
publish an untagged pointer immediately. Otherwise a load record and36-byte
request node are attached; the published slot is node|1. Failed load preparation
writes2 and returns false. Failed request-node allocation returns false without
guaranteeing a2 store. A true submit can therefore mean represented pending work.

| Slot representation | Selected meaning |
| --- | --- |
| 0 | No represented result; not a complete failure taxonomy |
| Request-node pointer OR1 | Pending request attached to a load |
| 2 | Selected load/interface failure |
| Nonzero pointer with low2bits0 | Requested resource interface in selected publisher paths |

The load producer can reuse work/reprioritize or construct a load/stream and
I/O plus dependent completion jobs. It has SIX stack inputs, RET18hex; earlier
five-input C was incorrect. Nested iterator/indirect-call C aliases remain
explicitly annotated; original raw pushes/stores control those claims. The
explicit settle method promotes/retains work and may wait after releasing its
loader lock, then checks the slot again.
[ASM](../../evidence/native/functions/00729D80_ResourceRequests_SubmitKeyToSlot.asm) ([annotated pseudocode](../../evidence/native/functions/00729D80_ResourceRequests_SubmitKeyToSlot.c)),
[ASM](../../evidence/native/functions/00729750_ResourceRequests_PrepareLoad.asm) ([annotated pseudocode](../../evidence/native/functions/00729750_ResourceRequests_PrepareLoad.c)),
[ASM](../../evidence/native/functions/00728FD0_ResourceRequests_SettleSlot.asm) ([annotated pseudocode](../../evidence/native/functions/00728FD0_ResourceRequests_SettleSlot.c)).

Clearing a pending slot unlinks/recycles its request node and releases its job;
last-consumer handling is delegated to the load policy. Clearing an untagged
resource invokes the supplied callback outside the lock and then zeroes the
slot. CallbackD4B3A0 forwards to resource virtual4, not the generic notification
client. Concrete resource vtables still own the precise refcount method meaning.
[ASM](../../evidence/native/functions/007286D0_ResourceRequests_ClearSlot.asm) ([annotated pseudocode](../../evidence/native/functions/007286D0_ResourceRequests_ClearSlot.c)),
[ASM](../../evidence/native/functions/00D4B3A0_ResourceCallback_InvokeVirtual04.asm) ([annotated pseudocode](../../evidence/native/functions/00D4B3A0_ResourceCallback_InvokeVirtual04.c)).

The three-word job callback forwards job/status to ECX owner. Completion requires
status4, can reuse or create/decode a resource, and obtains each requested
interface. On success it retains the resource through virtual0 before publishing
the interface; missing interface writes2. Generic client notification precedes
request unlink, job release and node recycling. Selected texture calls supply no
generic client. Retirement before successful-publication flagA1 drains pending
slots to2; after flagA1 it skips that failure drain.
[ASM](../../evidence/native/functions/00729730_ResourceRequests_LoadJobCallback.asm) ([annotated pseudocode](../../evidence/native/functions/00729730_ResourceRequests_LoadJobCallback.c)),
[ASM](../../evidence/native/functions/00729460_ResourceRequests_CompleteLoadJob.asm) ([annotated pseudocode](../../evidence/native/functions/00729460_ResourceRequests_CompleteLoadJob.c)),
[ASM](../../evidence/native/functions/00729150_ResourceRequests_RetireLoad.asm) ([annotated pseudocode](../../evidence/native/functions/00729150_ResourceRequests_RetireLoad.c)).

## Remaining questions

Static follow-up remains for concrete manager+44 mount/search precedence,
candidate transform54E0A0, last-consumer load/I/O cancellation, exact concrete
resource virtual0/+4 meanings and final variant/draw texture consumers. Runtime
latency, interleavings and rendered fallback output require execution separately.
Current sorted material receipts, path stamps and payload SHA do not establish
these original contracts or a complete resource/material-state identity.
