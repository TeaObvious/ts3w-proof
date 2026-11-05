# Object sound admission, deferred rows and replay

Static original PC1.67 instruction evidence from explicit `/TS3W.exe` in GhidrAssist.
Names are analyst descriptions. No original bytes were changed; no gameplay,
audio device, decoder or backend acceptance was executed for these claims.

## Canonical complete bodies

Each ASM covers the complete inclusive Ghidra body envelope; the code index gives
an exclusive end. Where Ghidra splits ranges, intervening original bytes are retained.
Actual annotated C is exported from Ghidra, not a reconstructed implementation.

| Entry | Analyst name | Full original pair |
| --- | --- | --- |
| `0x00942d20` | `ObjectSound_StartWithAdmissionChecks` | [ASM](../../evidence/native/functions/00942D20_ObjectSound_StartWithAdmissionChecks.asm) ([annotated C](../../evidence/native/functions/00942D20_ObjectSound_StartWithAdmissionChecks.c)) |
| `0x009433a0` | `ObjectSound_StartWideName` | [ASM](../../evidence/native/functions/009433A0_ObjectSound_StartWideName.asm) ([annotated C](../../evidence/native/functions/009433A0_ObjectSound_StartWideName.c)) |
| `0x00942670` | `ObjectSound_ConstructComponent` | [ASM](../../evidence/native/functions/00942670_ObjectSound_ConstructComponent.asm) ([annotated C](../../evidence/native/functions/00942670_ObjectSound_ConstructComponent.c)) |
| `0x00942730` | `ObjectSound_ConstructIfStorage` | [ASM](../../evidence/native/functions/00942730_ObjectSound_ConstructIfStorage.asm) ([annotated C](../../evidence/native/functions/00942730_ObjectSound_ConstructIfStorage.c)) |
| `0x00942640` | `ObjectSoundRow_Construct` | [ASM](../../evidence/native/functions/00942640_ObjectSoundRow_Construct.asm) ([annotated C](../../evidence/native/functions/00942640_ObjectSoundRow_Construct.c)) |
| `0x00942450` | `ObjectSoundRow_DestroyName` | [ASM](../../evidence/native/functions/00942450_ObjectSoundRow_DestroyName.asm) ([annotated C](../../evidence/native/functions/00942450_ObjectSoundRow_DestroyName.c)) |
| `0x00942470` | `ObjectSoundRows_DestroyNames` | [ASM](../../evidence/native/functions/00942470_ObjectSoundRows_DestroyNames.asm) ([annotated C](../../evidence/native/functions/00942470_ObjectSoundRows_DestroyNames.c)) |
| `0x009424b0` | `ObjectSoundRows_AssignForward` | [ASM](../../evidence/native/functions/009424B0_ObjectSoundRows_AssignForward.asm) ([annotated C](../../evidence/native/functions/009424B0_ObjectSoundRows_AssignForward.c)) |
| `0x00942750` | `ObjectSoundRows_Erase` | [ASM](../../evidence/native/functions/00942750_ObjectSoundRows_Erase.asm) ([annotated C](../../evidence/native/functions/00942750_ObjectSoundRows_Erase.c)) |
| `0x00942a00` | `ObjectSound_FinishAndRetire` | [ASM](../../evidence/native/functions/00942A00_ObjectSound_FinishAndRetire.asm) ([annotated C](../../evidence/native/functions/00942A00_ObjectSound_FinishAndRetire.c)) |
| `0x00942ab0` | `ObjectSoundRows_AppendCopy` | [ASM](../../evidence/native/functions/00942AB0_ObjectSoundRows_AppendCopy.asm) ([annotated C](../../evidence/native/functions/00942AB0_ObjectSoundRows_AppendCopy.c)) |
| `0x00942af0` | `ObjectSound_DestroyComponent` | [ASM](../../evidence/native/functions/00942AF0_ObjectSound_DestroyComponent.asm) ([annotated C](../../evidence/native/functions/00942AF0_ObjectSound_DestroyComponent.c)) |
| `0x00942b50` | `ObjectSound_HandleFinishedEvent` | [ASM](../../evidence/native/functions/00942B50_ObjectSound_HandleFinishedEvent.asm) ([annotated C](../../evidence/native/functions/00942B50_ObjectSound_HandleFinishedEvent.c)) |
| `0x00942bb0` | `ObjectSound_StopOne` | [ASM](../../evidence/native/functions/00942BB0_ObjectSound_StopOne.asm) ([annotated C](../../evidence/native/functions/00942BB0_ObjectSound_StopOne.c)) |
| `0x00942c40` | `ObjectSound_StopMatchingRows` | [ASM](../../evidence/native/functions/00942C40_ObjectSound_StopMatchingRows.asm) ([annotated C](../../evidence/native/functions/00942C40_ObjectSound_StopMatchingRows.c)) |
| `0x00942ca0` | `ObjectSound_OnOwnerRemoval` | [ASM](../../evidence/native/functions/00942CA0_ObjectSound_OnOwnerRemoval.asm) ([annotated C](../../evidence/native/functions/00942CA0_ObjectSound_OnOwnerRemoval.c)) |
| `0x009422f0` | `ObjectSound_Deactivate` | [ASM](../../evidence/native/functions/009422F0_ObjectSound_Deactivate.asm) ([annotated C](../../evidence/native/functions/009422F0_ObjectSound_Deactivate.c)) |
| `0x00942420` | `ObjectSound_OnDeactivate` | [ASM](../../evidence/native/functions/00942420_ObjectSound_OnDeactivate.asm) ([annotated C](../../evidence/native/functions/00942420_ObjectSound_OnDeactivate.c)) |
| `0x009433e0` | `ObjectSoundRows_CopyVector` | [ASM](../../evidence/native/functions/009433E0_ObjectSoundRows_CopyVector.asm) ([annotated C](../../evidence/native/functions/009433E0_ObjectSoundRows_CopyVector.c)) |
| `0x00943430` | `ObjectSound_ActivateAndReplay` | [ASM](../../evidence/native/functions/00943430_ObjectSound_ActivateAndReplay.asm) ([annotated C](../../evidence/native/functions/00943430_ObjectSound_ActivateAndReplay.c)) |
| `0x00943530` | `ObjectSound_OnActivate` | [ASM](../../evidence/native/functions/00943530_ObjectSound_OnActivate.asm) ([annotated C](../../evidence/native/functions/00943530_ObjectSound_OnActivate.c)) |
| `0x00943560` | `ObjectSound_OnActivationState` | [ASM](../../evidence/native/functions/00943560_ObjectSound_OnActivationState.asm) ([annotated C](../../evidence/native/functions/00943560_ObjectSound_OnActivationState.c)) |
| `0x009435a0` | `ObjectSound_RegisterOwnerEventHandlers` | [ASM](../../evidence/native/functions/009435A0_ObjectSound_RegisterOwnerEventHandlers.asm) ([annotated C](../../evidence/native/functions/009435A0_ObjectSound_RegisterOwnerEventHandlers.c)) |
| `0x004fe760` | `BytePrefix_CompareCaseSensitive` | [ASM](../../evidence/native/functions/004FE760_BytePrefix_CompareCaseSensitive.asm) ([annotated C](../../evidence/native/functions/004FE760_BytePrefix_CompareCaseSensitive.c)) |
| `0x004fdfa0` | `CodeUnits16_EncodeBoundedBytes` | [ASM](../../evidence/native/functions/004FDFA0_CodeUnits16_EncodeBoundedBytes.asm) ([annotated C](../../evidence/native/functions/004FDFA0_CodeUnits16_EncodeBoundedBytes.c)) |

## Layout, ownership and constructor identity

The [original Audio descriptor](../../evidence/objects/component-descriptors.tsv)
identifies mask `0x4000`, size80, alignment16, registration callback `009435A0`
and constructor callback `00942730`. These callbacks have different jobs.
The constructor delegates only when storage is nonnull. No allocation occurs
in that wrapper. It initializes owner+4, a zero vector+10..1F, word+48 and
bytes+4C/+4D. Row vector begin+20=end+24=inline+34, capacity+28=inline+34+20:
ONE inline row, independent of admission's eight-row cap. Other fields are not
thereby proved zero. Activation+4C starts zero.

Rows are20 bytes: packed UInt32 ID, then16-byte string (begin,end,capacity,label).
Copy assigns independent name storage; erase shifts later rows by20 and destroys
the old tail. Free uses signed(capacity-begin)>1 and nonnull pointer. Allocation,
string exception containment and the full generic grow/copy helpers remain open.
Readers mask IDs by `0x3FFFFFFF`. Bit31 identifies a `vo_` prefix; bit30 controls
selected replay/retirement. This does not prove the allocator's full ID domain.

## Ordered admission and submission

1. Missing global interface rejects0. With both request bits0/1 clear, and owner
   Transform plus camera present, SSE squared distance is `(dz²+dy²)+dx²` at
   original rounding boundaries. `COMISS`/`JA` rejects strictly greater than
   FLOAT32 `40000.0`; equality and unordered comparison do not take this branch.
   The exact word is retained in [necessary data](../../evidence/audio/object-sound-admission-data.tsv).
2. Case-sensitive byte PREFIX comparisons use `vo_` length3 and `base_tv` length7.
   [Original string bytes](object-sound-strings.json) are reused. Suffixes are not
   checked. Speed3 + voice + ANY nonempty row vector rejects, including deferred
   or retained entries. Unsigned row count>=8 rejects before handle allocation.
3. Inactive+non-TV: neither request bit set rejects. Otherwise reuse existing
   nonzero handle or allocate one;0 rejects. Append NAMED row, bit31 for voice,
   then return BEFORE backend configuration/submission. Request bit1 does NOT
   set row bit30 in this deferred branch. Row presence is not playback success.
4. Ordinary path configures/submits the backend command, ignoring completion.
   For speed1/2 voice, mask-stop preexisting bit31 rows before appending itself.
   Name retained only for request bit0; otherwise empty. Row bit31 for voice,
   bit30 for TV prefix OR request bit1. Return the saved handle unchanged.

Selected command arguments are physically verified: kind03475365;
name0347537E; zero UInt64 property03475381; handle03475385;
normalized request-bit0 property0347538C; owner GUID64 property13F18A1F;
optional related GUID64 property6BF16A1E. GUID low word is object+8,
high word object+C. Spatial commands consume retained Transform and native
lot/room queries. Room signed16 and identifier use NUMERIC signed `CVTSI2SS`.
The identifier's exact sentinel7FFFFFFF maps0; all other raw words are retained
before signed conversion. Other float/vector copies are lane bits, not numeric
integer conversions. Full spatial producers/backend semantics remain separate.

**Decompiler limits:** aligned ESP and indirect calls still produce unaffiliated
GUID registers, merged flag/Transform locals, wrong receiver/handle aliases and
float/int casts in actual C. Their instruction comments state the actual physical
arguments. Scoped stack-only stdcall models make callee-popped stack words visible;
actual receivers are ECX, not recovered stdcall source declarations. Do not treat
these remaining expressions as original undefined-value behavior. Original bytes
and the in-file annotations govern those cases.

## Activation/deactivation and retained rows

Activation returns ALtrue on every path. Already active is a no-op. Otherwise
set+4C=1 BEFORE processing, copy vector, destroy original names and reset its end.
Visit old records in order: nonempty name and bit30 clear re-enters admission
with flags1, relatedNULL and SAME masked handle. Ignore rejection/result;
a rejected replay is not automatically retained. Independently copy every bit30
row back without replay, even empty. Unnamed bit30-clear rows disappear. Destroy
copied names/storage afterwards. This is replay/admission, not blanket preloading
or confirmation of a successful backend start.

Deactivation first sets+4C=0. For bit30-clear rows with nonzero masked ID and a
manager, submit kind0347536B, handle03475385 and034753A0=0. Retain rows/names.
Do not equate command submission with completed playback stop.
Registered events0B/0C activate/deactivate;14 reads payload DWORD+8 and chooses
nonzero/zero. Missing owner/component is an ALtrue no-op; present-component state
callback does not locally guard null payload. Registration0/7/1 also names942390
at priority50, and5/0E/0F other handlers at priority0; those bodies/full event
producer/dispatch timing are not expanded by this selected contract.

## Completion, stop and removal

Only03A129EE is consumed by the selected finish-event handler. First matching
masked row with NONEMPTY name and bit30 clear uses retirefalse; all other cases,
including absent row, use retiretrue. The common finisher dispatches the original
finished callback with full owner GUID and stop reason0, then removes association;
optional manager retirement and first matching row erase happen AFTER dispatch.
Retaining a row does not immediately replay or establish later callback registration.
The [finished-callback contract](finished-callbacks.md) separately establishes
first-registration retention and erase-before-invoke delegate dispatch.

Single stop first clears a found row name. Active AND INPUT identifier bit30 clear
requests backend stop with inputID/supplied byte mode, leaving retirement for
completion. Otherwise immediate finish/retire, followed by backend stop only if
the found ROW had bit30. Input-vs-row bit tests differ deliberately here; full
stop-mode meanings are open.

Mask stop selects FFFFFFFF or nonzero packed-ID intersection. Active bit30-clear
rows request stop; others finish/retire. It captures begin/end ONCE and continues
incrementing by20 even after erase/shift. Do not replace this with a safe live sweep
and claim native equivalence, or claim an executed multirow failure from static
code. Destruction instead repeatedly retires CURRENT first row until empty.
Owner removal unregisters its GUID, clears word48 and stops all with mode0;
that selected callback does not clear active+4C.

## Wide-name codec boundary

The entry uses64 output bytes and input-unit limitFFFFFFFF. The converter reads
zero-extended WORD units, independently emitting1/2/3-byte sequences; no surrogate
pair assembly. Four-byte/replacement branches are present but unreachable for
that WORD source. Count required bytes despite blocked output. Write an entire
encoding only when cumulative required bytes+its length is STRICTLY below
capacity, reserving terminator. Stop at NUL/unit limit. Final NUL requires
nonnull output and nonzero capacity, including required count0. No null input
guard for positive input limit. This is not a general Unicode scalar codec.

## Remaining boundaries

All other animation/nonvoice producers, every other row mutation, generic
allocator/string/vector exceptional behavior, full spatial queries, backend stop
mode meanings, callback thread/reentrancy/shutdown, original source/video clock
coupling and gameplay output remain open. The selected static lifecycle does not
prove original world-load staging, overall voice capacity, a managed replacement
workflow or executed decoder/platform acceptance.

## Registered entry and physical argument boundary

The [four original script-entry bodies](object-sound-script-entry-boundaries.md) retain full UInt64 object lookup, held-reference release, distinct managed-name and loop/flags words, the ordinary low-byte normalization and both stop-mode-zero callsites. Missing owner/component, local start IDs and backend completion are distinct results.
