# PC 1.67 GameUtils loading-screen callback slot

The selected original producer and consumer own 124 bytes and 37 instructions.
Both exports contain the complete existing Ghidra body; neither has envelope
gaps. Analyst names describe their established roles. Stored prototypes are
inferred projections; the instruction observations below govern the ABI.

## Publish one pending callback

The registered SwapLoadScreen entry at `00EC10A0` jumps to
[the producer's original instructions](../../evidence/native/functions/007F1B50_DirectTargetOf_GameUtils_GameUtils_SwapLoadScreen.asm)
([annotated pseudocode](../../evidence/native/functions/007F1B50_DirectTargetOf_GameUtils_GameUtils_SwapLoadScreen.c)).
Its complete body is 36 bytes, ending at `007F1B73`; following routines and
alignment are outside this function. It reads one stack argument and uses a
plain RET. It calls `0050AF90`; a null service result skips both storage and
scheduler dispatch. Otherwise it writes the argument into global `011D9C4C`
before calling service virtual `+0x1C` with consumer `007F1880` and literal zero.
There is no null-callback gate before storage. A later producer overwrites the
same global slot. Admission, scheduler execution and callback ownership are
not established by that virtual call site alone.

## Dispatch, conditional cleanup, then clear

[The consumer's original instructions](../../evidence/native/functions/007F1880_GameUtils_DispatchPendingLoadScreenSwap.asm)
([annotated pseudocode](../../evidence/native/functions/007F1880_GameUtils_DispatchPendingLoadScreenSwap.c))
cover 88 bytes through `007F18D7`. Zero pending returns. Otherwise it calls
`00769390`; a null script interface returns with the pending slot intact.
For a nonnull interface it rereads the current pending callback, pushes two
zero words, that callback and the address of a 0x20-byte local area, sets ECX
to the interface and calls virtual `+0x134`.

After that call it tests local byte `+0x8` with mask `0x04`, writes local vtable
`00FBA6F4`, and conditionally calls `004F5760` with the local address and zero.
Only after the dispatch and conditional helper return does `007F18CA` clear
the pending global. A callback posted into that global during reentry can be
overwritten by this final clear. These are instruction order observations;
the virtual target and result helper's concrete effects remain unresolved.

The decompiler projects a no-argument void function; stored Ghidra metadata
retains a no-argument stdcall/undefined projection. The original body uses a
plain RET. Its indirect dispatch argument and local-result rendering must be
read against the instructions rather than treated as recovered source types.

## Limits

This finite pair establishes publication, null gates and clearing order. It
does not establish scheduler cadence or thread, eventual callback progress,
exception containment, reference counting, startup reset or a strong callback
lifetime guarantee. The global word alone proves none of those properties.
The original managed loading-screen controller's callback field is a separate
state owner; this native slot is not a queue of every managed posting.

## Registered adapter closure

The [current adapter Listing](../../evidence/native/functions/00EC10A0_ScriptCore_GameUtils_GameUtils_SwapLoadScreen.asm) ([annotated Ghidra C](../../evidence/native/functions/00EC10A0_ScriptCore_GameUtils_GameUtils_SwapLoadScreen.c))
owns exactly EC10A0..EC10A4: one five-byte tail JMP to the producer. Its existing
name, namespace, inferred prototype/formal storage and earlier PLATE notes were
preserved; only the proved body/Listing and a narrow adapter note were added.
The actual decompiler follows the tail target; that does not enlarge the owned
adapter body. The tail transfer is excluded from the CALL index. The fresh
producer/consumer C exports remain exactly unchanged.

[Loading managed controller and readiness producers](../loading/loading-presentation-readiness.md)
adds complete original managed transition/controller comparison and bounded frame/
scene wait wrappers without asserting full scheduler or current host parity.
