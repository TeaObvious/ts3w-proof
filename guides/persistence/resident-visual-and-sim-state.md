# Resident VisualState and Sim saved references

Selected original PC 1.67 component contracts. Names and opaque pointer types
are analyst assignments. Component fields, wire widths and physical storage
follow the original instructions; static evidence does not establish gameplay,
rendering or service lifetime behavior.

## Physical ABI

Stack offsets are from entry ESP. All four use ECX for the component, two
four-byte stack slots and RET8. Their returned sticky stream status occupies
AL; upper EAX is not a full-width Boolean.

| Entry and paired evidence | Stack+4 | Stack+8 | Owned writer body |
| --- | --- | --- | --- |
|95DBE0 [ASM](../../evidence/native/functions/0095DBE0_VisualState_WriteSavedComponentState.asm) ([C](../../evidence/native/functions/0095DBE0_VisualState_WriteSavedComponentState.c)) | writer | unused raw32/undefined4 |95DBE0–95DC44 |
|95DC50 [ASM](../../evidence/native/functions/0095DC50_VisualState_ReadVersionedComponentState.asm) ([C](../../evidence/native/functions/0095DC50_VisualState_ReadVersionedComponentState.c)) | reader | version descriptor | — |
|94EF90 [ASM](../../evidence/native/functions/0094EF90_SimComponent_WriteOutfitReferences.asm) ([C](../../evidence/native/functions/0094EF90_SimComponent_WriteOutfitReferences.c)) | writer | resource context |94EF90–94F022 |
|94F030 [ASM](../../evidence/native/functions/0094F030_SimComponent_ReadOutfitReferences.asm) ([C](../../evidence/native/functions/0094F030_SimComponent_ReadOutfitReferences.c)) | reader | resource context | — |

The unused VisualState writer word is physically present but unconsumed. Its
signedness, pointer meaning and value are not inferred. The Sim writer is
selected through vtable01045088 slot+C; it is not a constructor.

## VisualState wire order and versioned read

The current writer emits the low UInt16 of component flags+8, UInt32 geometry
state+14, then UInt32 word+C. Each primitive uses the writer's endian word+10
and contributes to sticky status+14. There is no local version branch, value
validation, early failure exit or rollback.

The reader takes an unsigned UInt16 version at descriptor+4. For version<7 it
reads one byte of flags and adds0x100; otherwise it reads UInt16. It then applies
the preserved/rebuilt flag mask and owner/catalog bits recorded in the paired
C. Version>=2 reads UInt32 geometry state, otherwise writes zero; version>=5
reads word+C, otherwise leaves that field untouched. Stack-slot reuse in C
does not make the scalar flags pointer-valued. The reader accumulates status
after each primitive and retains earlier writes on failure. It issues no
render callback itself.

## Sim reference wire order and versioned read

The current writer registers the full stored keys at component+10 and+20
through context+10, with final registration argument zero. It writes only the
low UInt16 returned handle for each key and accumulates primitive status.
Both references are written in that order. Afterward it obtains an opaque
service through5EBAC0 and invokes5EE440 for each corresponding key whose
DWORD+18 or+28 is nonzero. This does not establish cache/provider identity,
reference-release semantics or full outfit ownership.

The reader uses unsigned UInt16 context+6: version<14 reads inline TGI into
component+10; later versions read a narrow handle and resolve through context+10.
Version>=20 also reads/resolves the second handle into component+20. Versions
below20 leave that second field untouched. The original reader continues its
selected path after primitive status accumulation; child malformed-input and
resolver behavior are separate contracts.

## Evidence and host limits

Only the selected original bodies and existing reader pairs establish these
contracts. The two writer exports cover their entire owned contiguous bodies,
with neighboring padding and next functions excluded. Opaque Sim service
children were not expanded. Original component construction defaults, full
manager dispatch ordering, resource providers and script Sim restoration are
not inferred from the wire routines.

The current resident row overlay retains authored fields except its supported
live projections. It updates the first Sim reference from the current outfit
selection and retains the second; this is a host boundary, not a proof that the
original writer emits only one reference. The overlay's Model-key/history
round trip is a separate responsibility. A save/load or rendered gameplay
acceptance claim requires runtime evidence beyond these static contracts.
