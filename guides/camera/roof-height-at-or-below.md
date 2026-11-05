# Roof-manager height at or below a story ceiling

The selected PC 1.67 manager query at `00B9A290` is named `RoofManager_TrySampleHeightAtOrBelow` for analysis. Its complete [84-instruction ASM](../../evidence/native/functions/00B9A290_RoofManager_TrySampleHeightAtOrBelow.asm) ([C](../../evidence/native/functions/00B9A290_RoofManager_TrySampleHeightAtOrBelow.c)) owns 283 bytes in inclusive ranges `00B9A290–00B9A318` and `00B9A320–00B9A3B1`. Their 290-byte envelope includes seven unowned gap bytes; those bytes are not part of the instruction proof. Camera-exclusive ownership is not established: the two observed incoming references are `00AB7D8C` and `00B9A549`, and the latter caller body is outside this selection.

## Physical interface

| Location | Selected instruction use |
| --- | --- |
| `ECX` | Manager receiver retained in EBP and supplied to both selected child calls. |
| Entry `Stack+4` and `Stack+8` | Existing raw32 parameter metadata; the body reloads these words with x87 `FLD float` and stores Float32 arguments for the provider call. |
| Entry `Stack+C` | Signed story ceiling, retained in EDI. |
| Entry `Stack+10` | Float32 output pointer, written before the ceiling test. |
| `AL`, `RET 0x10` | Zero/one hit status and callee cleanup of four stack argument words. |

The existing analysis signature remains `char __thiscall(undefined4, undefined4, int, float*)` with the automatic ECX receiver, existing inferred types/storage and local metadata. A descriptive name and PLATE do not recover the manager's complete class layout or child-provider ABI.

## Selected search and output

`00B9A2B0` initializes output to Float32 zero; the hit byte begins zero. The signed test at `00B9A2BA/2DF` skips all levels when the ceiling is negative. For each admitted level, `00B9A2F4` invokes `00B97B20(manager, scratch, level, 0)`, then iterates returned pointer entries in four-byte steps. Collection membership, ordering, allocation and failure behavior remain child-provider boundaries.

Each level's best value is loaded at `00B9A303` and stored at `00B9A30F`. The [exact original initializer](../../evidence/camera/roof-height-original-data.tsv) contains the four bytes `00 00 7A C4` at `00FBB78C`: DWORD `C47A0000`, Float32 `-1000.0`. Its pristine PE mapping is RVA `00BBB78C`, `.rdata`, raw file offset `12302220`.

At `00B9A340`, `00B95C70` receives the manager, current pointer, two Float32 coordinate words, current signed level and mode `1`. The selected parent does not establish this child's geometry, roof-family dispatch, coverage, missing-surface sentinel or exceptional behavior.

The returned x87 `ST0` is stored to a Float32 temporary by `FST` at `00B9A345`, **without popping or replacing the extended register value**. `FLD` reloads the prior rounded Float32 best, `FXCH` orders the operands, and `FCOMIP` at `00B9A34F` compares the still-extended provider result against that prior best. `JBE 00B9A353` skips less/equal/unordered results if the floating-point instruction completes under the active control-word/mask state. A successful comparison copies the rounded temporary into best and output at `00B9A362/368`, then sets the hit byte at `00B9A36C`.

All peers on a level are visited. `00B9A381` stops after the first successful level. Otherwise `SUB EDI,1` and signed `JNS` at `00B9A383/386` descend through story zero. This establishes the exact iterative strict-greater selection rule; it does not imply an order-independent mathematical maximum or pure Float32 comparison across an unexamined provider.

## Lifetime and evidence limits

The selected body prepares local scratch storage. At `00B9A391–39C`, it frees the final scratch pointer only when nonnull and distinct from its local buffer. `00B9A3A6` returns the saved hit byte through AL; `00B9A3AF` performs `RET 0x10`. This is a call-local lifetime observation, not a recovered persistent manager ownership, allocator failure or threading contract.

All complete owned instructions and the initializer were compared with pristine shipped PC 1.67 bytes. The actual generated C carries the real observed PLATE; its `float10` return expression is interpreted against the instruction sequence above. Child bodies, the second caller body, serialized roof reading, original world/camera scheduling and control-word settings are not established by this selection. No host implementation, cache, publication, provider substitute or runtime parity claim is part of this original-only proof.
