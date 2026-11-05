# Original Sim-ancestor Transform query

The reference is the PC1.67 executable. The analyst name describes the inspected
body; it is not a recovered original symbol. The pair contains the genuine saved
annotated C and complete owned Listing:50bytes in19instructions. Instructions
control the ABI and ordering where the inferred prototype is incomplete.

| Entry / responsibility | Owned bytes / instructions | Evidence |
| --- | --- | --- |
| `00944be0` Object_HasSimTransformAncestor |50 /19| [ASM](../../evidence/native/functions/00944BE0_Object_HasSimTransformAncestor.asm) ([C](../../evidence/native/functions/00944BE0_Object_HasSimTransformAncestor.c)) |

## Input, traversal and return

One object pointer is passed on the stack; the body uses a plainRET. It loads
the pointer intoEAX and returns false for null. Otherwise it loads the descriptor
at011EA158 and calls Object_GetComponentByMask with the object inECX. A missing
component returns false. The Transform parent pointer is read at component+30;
a null parent returns false. Only after moving to that parent does it test the
parent object's+2C word against the Sim mask loaded at011EA0FC. A match returns
AL1. A nonmatch repeats from the parent and asks for its Transform next. Thus
a Sim parent can succeed without a subsequent Transform lookup on that parent.

The false leaf clearsAL; the true leaf writesAL1 while preserving upper bits
of the parent pointer inEAX. The true result must not be inferred to be a stable
full-width integer1. No visited set, cycle detection, maximum depth, Footprint
mutation, router registration or notification is present in this body.

## Component and notification joins

The component lookup is separately established by
[ASM](../../evidence/native/functions/00934260_Object_GetComponentByMask.asm) ([C](../../evidence/native/functions/00934260_Object_GetComponentByMask.c)).
The existing Footprint-enabled producer calls this query before its routing
notification condition:
[ASM](../../evidence/native/functions/00946050_FootprintComponent_SetEnabledAndNotifyRouting.asm) ([C](../../evidence/native/functions/00946050_FootprintComponent_SetEnabledAndNotifyRouting.c)).
Its component enabled-bit update and notification are separate operations; this
query itself performs neither. The six physical incoming relative calls are
listed in [incoming references](../../evidence/native/sim-transform-ancestor-incoming.tsv).
Those sites do not establish complete bodies or contracts for the other callers.

The two descriptor operands and their PE section classification are listed in
[operand locations](../../evidence/native/sim-transform-ancestor-data.tsv).
Both locations lie in the virtual zero-filled tail of.data, beyond its file-backed
raw extent. The executable establishes the instructions and operand locations,
not runtime-initialized mask values. No file-backed mask bytes, runtime mask
identity or initialization policy are fabricated from the zero-fill classification.
