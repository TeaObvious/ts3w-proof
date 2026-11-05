# World floor pick at a window point

The existing registered PC1.67 ScriptCore.World::World_PickFloorAtWindowPoint
identity is preserved. Managed metadata names x,y(Int32), out Vector3 and Boolean
return. The [complete original function](../../evidence/native/functions/0078C490_ScriptCore_World_World_PickFloorAtWindowPoint.asm) ([actual annotated pseudocode](../../evidence/native/functions/0078C490_ScriptCore_World_World_PickFloorAtWindowPoint.c))
has630owned bytes/178instructions. The inferred uint/undefined4 C result is not
the physical Boolean contract: cdecl receives three stack words and meaningful
status is low AL. Existing registration/type notes remain embedded in the C.

## Ordered query

1. Read the frame service and window-ray provider;7CEF70 supplies two ray endpoints.
2. Normalize the direction with RSQRTPS and two refinements. Query the collision
   segment through687390 with flags1 and trailing byte1.
3. A false low AL returns failure. For a hit, resolve the containing lot at hit XZ.
   With a lot, AB1020 low ALfalse immediately ends picking; its deeper meaning
   remains a child contract, not an inferred loaded-lot Boolean.
4. Convert world point to a local lot location, seeded X/Z=-1 and level0, through
   ADC860. Invoke AFDE10 with three zero flags. At78C664 its low ALtrue selects
   the success path. The complete child floor/presence/visibility policy remains
   unresolved; the parent call alone does not establish it.
5. A rejected/no-lot hit adds the current segment hit distance to the accumulator,
   advances by [the binary32 step](../../evidence/native/data/floor-pick-segment-step.tsv),
   reconstructs the segment start from original origin/direction and queries
   again. This is iterative rejection, not a single cached triangle selection.
6. Success writes XYZ through76BF70 and sets AL1. Failure sets AL0 and does not
   write the output pointer. Upper EAX is not zeroed or meaningful Boolean data.

The current high-level local reuse of vector storage in the decompiler must not
be interpreted as a changed ray-direction formula after a successful hit: that
branch returns. Physical SSE/x87 operations and output-pointer use govern the
interpretation. No register-derived pointer is a float conversion merely because
it shares a decompiler local.

## Limits

Actual original bytes, function bounds, preserved registration namespace/name,
ABI/flow/reference metadata and existing annotations are checked. The analyst
behavior annotation is appended to the original entry comment; no original byte,
prototype, symbol identity or control flow changes. Full genuine C/ASM replace
the previous capped linear view, excluding ten post-body alignment bytes.
All eleven physical direct calls already in the lookup index remain unchanged.
Collision traversal, AB1020/AFDE10 policy, view-to-ray producer and other callers
retain separate scope; no complete picking equivalence or runtime observation
is claimed. In particular, a displayed-lot cache is not established as equivalent
to this exported screen-point query.

[Local height/source join](lot-level-selection.md#local-height-facade-outside-source-and-picking-boundaries) now identifies the different A8C690 guard/outside/extrapolation producer and precise host-grid comparison limits. Registered collision traversal is not a DDA height-grid implementation or a locked-build/display-level policy.
