# Ceiling room-data refresh

This is the selected original PC 1.67 native notification, clock and room-data
request path. The [central reference](../../references/retained-proof-overview.md) identifies the executable.
Names are analyst labels. Static instructions establish local operations;
message delivery, successful rendering and gameplay timing were not observed.
Addresses, offsets and RET immediates are hexadecimal; instruction counts and
elapsed seconds are decimal.

## Complete bodies and required original data

The 18 bodies contain 1,514 instructions and 4,348 instruction bytes in 4,352
envelope bytes. `00C06BA0` has two body ranges, `00C06BA0..00C06C0B` and
`00C06C10..00C06DB4`. Its excluded four bytes are alignment `LEA ESP,[ESP+0]`,
not semantic data. Its one complete envelope listing includes those bytes but
they are not counted among its 175 body instructions / 529 instruction bytes.
The [original data](../../evidence/native/data/ceiling-room-refresh.txt)
retains only six required ranges / 108 bytes: binary32 3.0, callback and message
registration slots, and three four-way switch tables.

| Address | Analyst label | Evidence |
| --- | --- | --- |
| `0x00a4dda0` | CeilingRenderManager_PollDeferredRoomRequest | [ASM](../../evidence/native/functions/00A4DDA0_CeilingRenderManager_PollDeferredRoomRequest.asm) ([C](../../evidence/native/functions/00A4DDA0_CeilingRenderManager_PollDeferredRoomRequest.c)) |
| `0x00a4f000` | CeilingRenderManager_OnMessage | [ASM](../../evidence/native/functions/00A4F000_CeilingRenderManager_OnMessage.asm) ([C](../../evidence/native/functions/00A4F000_CeilingRenderManager_OnMessage.c)) |
| `0x00a4e0c0` | CeilingRenderManager_Construct | [ASM](../../evidence/native/functions/00A4E0C0_CeilingRenderManager_Construct.asm) ([C](../../evidence/native/functions/00A4E0C0_CeilingRenderManager_Construct.c)) |
| `0x00a4e410` | CeilingRenderManager_BindOwnerAndRegisterMessages | [ASM](../../evidence/native/functions/00A4E410_CeilingRenderManager_BindOwnerAndRegisterMessages.asm) ([C](../../evidence/native/functions/00A4E410_CeilingRenderManager_BindOwnerAndRegisterMessages.c)) |
| `0x00a4db40` | CeilingRenderManager_SubmitRoomRequest | [ASM](../../evidence/native/functions/00A4DB40_CeilingRenderManager_SubmitRoomRequest.asm) ([C](../../evidence/native/functions/00A4DB40_CeilingRenderManager_SubmitRoomRequest.c)) |
| `0x00a4dde0` | CeilingRenderManager_ResolveMaterialAndRequest | [ASM](../../evidence/native/functions/00A4DDE0_CeilingRenderManager_ResolveMaterialAndRequest.asm) ([C](../../evidence/native/functions/00A4DDE0_CeilingRenderManager_ResolveMaterialAndRequest.c)) |
| `0x00a4e4b0` | CeilingRenderManager_SetUndersideLevels | [ASM](../../evidence/native/functions/00A4E4B0_CeilingRenderManager_SetUndersideLevels.asm) ([C](../../evidence/native/functions/00A4E4B0_CeilingRenderManager_SetUndersideLevels.c)) |
| `0x00a4ef30` | CeilingRenderManager_ApplyRoomData | [ASM](../../evidence/native/functions/00A4EF30_CeilingRenderManager_ApplyRoomData.asm) ([C](../../evidence/native/functions/00A4EF30_CeilingRenderManager_ApplyRoomData.c)) |
| `0x00a497f0` | CeilingManager_ProduceRoomDataMessage | [ASM](../../evidence/native/functions/00A497F0_CeilingManager_ProduceRoomDataMessage.asm) ([C](../../evidence/native/functions/00A497F0_CeilingManager_ProduceRoomDataMessage.c)) |
| `0x00a48830` | CeilingManager_BindOwnerAndRegisterRequest | [ASM](../../evidence/native/functions/00A48830_CeilingManager_BindOwnerAndRegisterRequest.asm) ([C](../../evidence/native/functions/00A48830_CeilingManager_BindOwnerAndRegisterRequest.c)) |
| `0x00ae3b10` | LotRenderer_UpdatePartManagers | [ASM](../../evidence/native/functions/00AE3B10_LotRenderer_UpdatePartManagers.asm) ([C](../../evidence/native/functions/00AE3B10_LotRenderer_UpdatePartManagers.c)) |
| `0x00b53330` | LotPartition_FlushChangesAndRebuild | [ASM](../../evidence/native/functions/00B53330_LotPartition_FlushChangesAndRebuild.asm) ([C](../../evidence/native/functions/00B53330_LotPartition_FlushChangesAndRebuild.c)) |
| `0x00c06ba0` | LotRoomSeeds_FlushChangedRooms | [ASM](../../evidence/native/functions/00C06BA0_LotRoomSeeds_FlushChangedRooms.asm) ([C](../../evidence/native/functions/00C06BA0_LotRoomSeeds_FlushChangedRooms.c)) |
| `0x00c42ce0` | LotRoomGraph_QueueRoomChange | [ASM](../../evidence/native/functions/00C42CE0_LotRoomGraph_QueueRoomChange.asm) ([C](../../evidence/native/functions/00C42CE0_LotRoomGraph_QueueRoomChange.c)) |
| `0x00c43020` | LotRoomGraph_CreateRoomAndQueueAdded | [ASM](../../evidence/native/functions/00C43020_LotRoomGraph_CreateRoomAndQueueAdded.asm) ([C](../../evidence/native/functions/00C43020_LotRoomGraph_CreateRoomAndQueueAdded.c)) |
| `0x00a96920` | LotTile_ChangeStateAndEmitMessage | [ASM](../../evidence/native/functions/00A96920_LotTile_ChangeStateAndEmitMessage.asm) ([C](../../evidence/native/functions/00A96920_LotTile_ChangeStateAndEmitMessage.c)) |
| `0x00c413f0` | LotRoomGraph_SubmitQueuedRoomMessages | [ASM](../../evidence/native/functions/00C413F0_LotRoomGraph_SubmitQueuedRoomMessages.asm) ([C](../../evidence/native/functions/00C413F0_LotRoomGraph_SubmitQueuedRoomMessages.c)) |
| `0x00a49a20` | CeilingManager_OnRoomRequest | [ASM](../../evidence/native/functions/00A49A20_CeilingManager_OnRoomRequest.asm) ([C](../../evidence/native/functions/00A49A20_CeilingManager_OnRoomRequest.c)) |

Four clock helpers reuse their existing canonical pairs:

| Clock operation | Evidence |
| --- | --- |
| Initialize calibration, `004F3160` | [ASM](../../evidence/native/functions/004F3160_ElapsedClock_InitializeCalibrationScales.asm) ([C](../../evidence/native/functions/004F3160_ElapsedClock_InitializeCalibrationScales.c)) |
| Select counter scale, `004F34E0` | [ASM](../../evidence/native/functions/004F34E0_ElapsedClock_SelectCounterScale.asm) ([C](../../evidence/native/functions/004F34E0_ElapsedClock_SelectCounterScale.c)) |
| Read scaled elapsed, `004F37C0` | [ASM](../../evidence/native/functions/004F37C0_ElapsedClock_ReadScaledTicks.asm) ([C](../../evidence/native/functions/004F37C0_ElapsedClock_ReadScaledTicks.c)) |
| Construct clock, `004F39B0` | [ASM](../../evidence/native/functions/004F39B0_ElapsedClock_ConstructAndOptionallyStart.asm) ([C](../../evidence/native/functions/004F39B0_ElapsedClock_ConstructAndOptionallyStart.c)) |

## Restart and strict elapsed threshold

`00A4E0C0` constructs a 24-byte clock at receiver `+30` with mode 5 and start
false. Its start words are `+30/+34`, accumulator `+38/+3C`, mode `+40`, and
scale `+44`. It does not arm that clock initially.

`00A4DDA0` polls only while a start word is nonzero. It reads corrected scaled
elapsed and compares it with the original binary32 3.0 constant using
`FCOMIP` then `JBE`. Only ordered elapsed **strictly greater than 3.0** submits;
equality and unordered comparison skip. It clears all four start/accumulator
words before tail-calling the request sender. It does not rebuild models or
wait for a response, and this local path does not rearm itself on dropped or
failed submission.

Mode 5 selects the binary32 reciprocal-QPF scale written by the calibration
producer. With valid initialized calibration it measures seconds. Mode 4's
millisecond scale is not used here. The canonical reader applies measured
counter overhead, substitutes one tick when the delta is at most overhead,
incorporates accumulated ticks and returns scaled x87 ST0. Successful
calibration startup, OS-call failure and unmasked floating-point exception
behavior are not established by this path.

`00AE3B10` updates nonnull part managers in its literal order. The manager at
`+250` receives the `00A4DDA0` call without a delta argument. This does not
establish frame cadence or the scheduling of other managers.

## Five registered restart IDs and six handled IDs

`00A4E410` registers nine IDs from `01060C10`. `00A4F000` sends these literal
IDs to its common reset/start block:

| ID | Registered by this table? | Selected producer |
| --- | --- | --- |
| `047E869A` | Yes | `00B53330`, after queue/list flush calls |
| `31269488` | Yes | `00C06BA0`, discriminator 1 |
| `3175AE42` | Yes | `00A96920`, conditional tile-state path |
| `5251D88C` | Yes | `00C43020`, discriminator 0; `00C42CE0`, discriminator 0 with nonzero flag; queue submitted by `00C413F0` |
| `9251D9D2` | Yes | `00C42CE0`, discriminator 0 with false flag; queue submitted by `00C413F0` |
| `B126940A` | No | `00C06BA0`, discriminator 0 |

The other four subscriptions are `047E6F04`, `05482A81`, `063BF204` and
`097AC12E`. The sixth restart ID's absence from this table does not prove it
cannot arrive through another registration, bus route or direct callback.

Each accepted restart clears the four clock words and samples a new start
counter: mode 1 uses RDTSC, otherwise QPC, whose status is ignored. Those six
branches have no local owner-identifier or changed-input test. Upstream bus
filtering and delivery are unresolved; a global cross-lot policy does not
follow from the absence of a local test.

`00B53330` calls four graph-queue flushes and then four changed-room-list
flushes before submitting `047E869A`. `00C413F0` submits each queued eight-byte
ID/room row, sign-extends its 16-bit room field, and clears the queue afterward.
`00C06BA0` maps literal discriminators 0/1/2/3 to
`B126940A`/`31269488`/`D1269441`/`0A29BD36`. The discriminator's producer was
not traced, so managed room-definition enum names are not substituted for it.
`00A96920` establishes one active-byte-gated producer of `3175AE42`, not all
floor-edit inputs. Submission order is not proven delivery order.

## Request, response and incomplete ABI metadata

`00A4DB40` allocates a 16-byte request and copies two DWORDs from
`[rendererOwner+10]/[rendererOwner+14]` into payload `+8/+C`. With a service
available, its `+1C` call submits `0487B4AF`. The original allocation-null path
is not a protective fallback. Submission is not receipt or completion.

`00A48830` binds a core owner and registers `0487B4AF`; the original descriptor
contains the callback slot for `00A49A20`. That callback requires the message ID
and compares payload `+8/+C` against core owner `+48/+4C` before calling
`00A497F0`. The renderer/core pair's producer/equality was not traced. A lot-GUID
name for that identity is inferred; exact copied and compared DWORDs are proven.

The callback's stored Ghidra metadata is actually `undefined(void)`, parameter
count 0. The actual decompiler infers a receiver and two arguments. Instructions
establish ECX receiver, two stack DWORDs and `RET 8`; its normal exit sets
**AL=1 only**, leaving upper EAX bits indeterminate. The same AL-only limit
applies to the renderer handler despite its existing `undefined4` metadata.
The decompiler's `return 1` is not a full-EAX return contract.

`00A497F0` reads live core-owner rooms and level bounds, copies core `+48/+4C`
into its response, calls selected room/outside builders and submits `047E6F04`.
The renderer's response branch checks its owner pair before `00A4EF30`.
That selected caller invokes `00A4E200` before visiting 20-byte response records,
then calls `00A4D550` and conditionally `00A4E740`. The companion [geometry and levels](ceiling-geometry-and-levels.md) closes selected
geometry/emission parents; full clearing, contour children and resource lifetimes
remain separate contracts. No
versioned snapshot, GPU readiness or rendered acceptance is inferred.

## Immediate paths and remaining limits

The delay is not universal. `00A4DDE0` tests mask `0x1` (bit 0); when clear,
its initial material helper sequence submits immediately without clock wait
or reset. `00A4E4B0` calls `00A4DBA0`, branches on AL, performs its selected
level/model operations, replaces stored data and conditionally clears the clock
and submits immediately. The helper's full comparison semantics remain outside
this selected set. Message `063BF204` checks the owner pair and submits
immediately without clearing the pending clock.

These facts establish a restartable request timer and selected bypass paths.
They do not establish which path every gameplay edit takes, notification
completeness, message-bus lifetime/failure, geometry output, resource retirement
or successful displayed ceiling refresh.
