# Imported object initialization and independent scene entry

Reference: [PC 1.67 identity](../../evidence/reference.json). Object-manager
membership and Model scene-command publication are separate boundaries.

| Boundary | Input | Original behavior | Remaining boundary |
| --- | --- | --- | --- |
| 009352A0 | Object, initializer data, property stream, component reader contexts | Initialize via component virtual+4; read hashes42906A09; open component streams and read via virtual+10. Success dispatches event2 with null payload and returns its Boolean. | No direct manager insertion/scene assignment. Child initializer effects remain separate. |
| Model event2 callback948F90 | Object and existing Model state | If object/Model, Model+10 and owner exist, invoke948CD0 visibility policy. Return AL=true. | Does not dispatch0B. Successful import is not scene-admission proof. |
| Event0B callback949000 | Object, optional three-DWORD payload | Resolve Model; payload gives two opaque words and scene value. Missing payload/scene uses006E8170. Forward to948970; AL=true even for absent object/Model. | No manager lookup/insertion. True does not acknowledge renderer admission. |
| 00948970 | Model, scene and two opaque words | EnqueueF33E398B with ownerGUID and those values; optional flags/visibility commands follow. | Drain, actual scene ownership and rendering remain separate consumers. |

## Canonical evidence and missing C boundary

[009352A0 ASM](../../evidence/native/persistence/import/009352A0_Object_InitializeAndReadImportedComponents.asm)
([C](../../evidence/native/persistence/import/009352A0_Object_InitializeAndReadImportedComponents.c))
is the complete initializer. Existing
[009378F0 importer ASM](../../evidence/native/functions/009378F0_Inventory_TryCreateObjectFromRecord.asm)
([fresh caller C](../../evidence/native/functions/009378F0_Inventory_TryCreateObjectFromRecord.c)) shows its call.

The [original excerpt table](../../evidence/native/data/placement-import-transform-excerpts.tsv)
retains callback registration and selected code bytes. At94C378, PUSH949000 is
followed by PUSH0B and CALL9355F0. At94C34E the counterpart is948F90 with event2.
Complete window949000..949048 has73 original bytes and33 independently decoded
instructions. There is no defined Ghidra function or successful C body there.
It is a [separate unresolved window](../../indexes/scene-entry-unresolved-window.tsv),
not a fabricated decompilation or a complete function added to the code index.

949000 reads payload+0/+4/+8. Missing payload initializes the first two to zero;
a null third word invokes the existing
[006E8170 getter ASM](../../evidence/native/functions/006E8170_LoadPump_ReadFrameServiceGlobal.asm)
([C](../../evidence/native/functions/006E8170_LoadPump_ReadFrameServiceGlobal.c)), returning global011D2860
without retaining or validating it. Its existing analyst name does not establish
an additional scene-lifetime contract.

[00948970 ASM](../../evidence/native/objects/models/00948970_ModelComponent_EnqueueSceneEntry.asm)
([C](../../evidence/native/objects/models/00948970_ModelComponent_EnqueueSceneEntry.c))
proves the command payload and manager-independent enqueue. Existing
[C8ABE0 location update ASM](../../evidence/native/functions/00C8ABE0_LocationComponent_UpdateForWorldPosition.asm)
([C](../../evidence/native/functions/00C8ABE0_LocationComponent_UpdateForWorldPosition.c)) is one conditional0B producer,
not a universal import-completion event.

An imported object can have a Model scene-command path without manager insertion
in these functions. This does **not** prove exactly when every imported inventory
object receives0B, a universally zero manager ID, or valid live scene acceptance.
Assigning a synthetic world-lot manager is not original equivalence established
here. The missing import-to-event trigger, queue consumer and runtime lifetime
still need their own evidence before a parity claim.
