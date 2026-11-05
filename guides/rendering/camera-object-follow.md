# Object-follow identity adapters and main follow core

The reference is the shipped PC 1.67 TS3W.exe identified in the repository's
reference index. Names are analyst role labels. Complete annotated pseudocode
and owned Listing establish the selected instructions; static analysis does not
establish runtime camera equivalence.

## Ownership and physical boundaries

| Entry / role | Half-open owned range | Instructions / bytes | Incoming physical boundary |
| --- | --- | --- | --- |
| 00978B20 Main identity adapter | 00978B20-00978B93 | 46 / 115 | ECX receiver; stack4/8 identity words, stackC offset pointer, stack10 Float32 seconds, stack14 flag slot; RET14h |
| 0097A030 Alternate identity adapter | 0097A030-0097A0F5 | 70 / 197 | ECX receiver; stack4/8 identity words, stackC offset pointer; RET0Ch |
| 009751E0 Main follow core | 009751E0-009752B7 | 79 / 215 | ECX receiver; stack4 object pointer, stack8 offset pointer, stackC Float32 seconds, stack10 flag slot; RET10h |

The three bodies contain 195 instructions and 527 original bytes, excluding
following alignment. Their inferred undefined returns, char flag types,
parameter storage, convention and purge metadata remain unchanged. Instructions
read/push each final flag slot as a DWORD; downstream semantic width remains
unproved. Decompiled void rendering does not replace the actual undefined return
metadata. Sixteen copied offset bytes do not establish a public vector ABI.

The public follow wrapper is an existing 176-byte legacy bounded window, not a
proved complete owned body: [ASM](../../evidence/native/functions/0073DCF0_ScriptCore_CameraController_Camera_EnableObjectFollow.asm)
([C](../../evidence/native/functions/0073DCF0_ScriptCore_CameraController_Camera_EnableObjectFollow.c)). Its direct call sites
0073DD64 and 0073DD8B dispatch to the main and alternate identity adapters. The
main adapter directly calls the main core at 00978B65; the public wrapper does
not call that core directly.

## Main identity adapter

[ASM](../../evidence/native/functions/00978B20_MainCamera_EnableObjectFollowById.asm)
([C](../../evidence/native/functions/00978B20_MainCamera_EnableObjectFollowById.c)). Global registry absence
returns without a core call. Lookup combines the supplied identity words. A
found object is temporarily atomically retained for the call, then released,
including the observed destructor branch at the final reference. A null lookup
result still reaches the core. This temporary retain is distinct from the
camera's retained selected-object reference.

## Main core

[ASM](../../evidence/native/functions/009751E0_MainCamera_ApplyObjectFollow.asm)
([C](../../evidence/native/functions/009751E0_MainCamera_ApplyObjectFollow.c)). The first call is the
retirement helper at 00973DB0. The selected-object reference is compared/replaced
with atomic retain/release. For a nonnull selected object, 00971D60 receives its
identity and an enabled flag before the sixteen-byte offset copy and active
store. The point query at 00971030 gates acquisition at 009746E0 with supplied
Float32 seconds and observed flag sequence 1,0,0,callerFlag. A later low-byte
result from 00971120 is stored. Point-query failure invokes retirement.

## Alternate identity adapter

[ASM](../../evidence/native/functions/0097A030_AlternateCamera_EnableObjectFollowById.asm)
([C](../../evidence/native/functions/0097A030_AlternateCamera_EnableObjectFollowById.c)). Release the old retained
reference and clear active before registry lookup. A found object is stored and
retained; copy its sixteen offset bytes, then set active before the 00979690
point query. A successful low-byte result enters 00979FF0 with Float32 one;
false enters 00979DB0 cleanup. Missing registry/object preserves the earlier
retirement progress. These calls differ from the main path; their bodies are
not equated through the adapter.

## Boundaries

Reference operations, incoming locations, branching, copies and call/store order
come from complete selected instructions. Child point transforms, notification,
acquisition, retirement and alternate-provider implementations remain uninspected.
Descriptive labels do not recover a full native object layout. World/local offset
conversion, complete public-wrapper extent, scheduling, callbacks and runtime
follow trajectory remain open. This proof does not replace current managed
smoothing, ground policy, queue admission or rendering equations.


## Current navigation request and frame boundary

GameCameraNavigation owns actual command drain and follow/preset/input joins,
with separate CameraViewRequests64queue/latest-view mailbox. It discards pending
navigation during offworld/controller suspension; FreeFly consumes ordinary
commands without applying. Created offset uses full transform, resident fallback
adds offset to represented position. Existing adapters above do not close971030/
979690 point transforms, complete public request scheduling or ordinary lerp
trajectory. EmbeddedCameraNavigation editor extent/orthographic projection is a
different owner, not native object-follow behavior. ScenePickPublication plain
owner precheck and final volatile store are host publication, not native packed
picker pending/generation lifetime or a proved safe dispose/reown race.
