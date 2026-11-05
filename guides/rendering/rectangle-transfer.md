# Bounded rectangle transfer

## Complete original function

| Analyst role | Physical evidence | Canonical pair |
| --- | --- | --- |
| `006EB820` rectangle arithmetic and virtual transfer using an unsigned divisor | 85 actual saved Listing instructions, 242 owned bytes; complete body with no gaps | [ASM](../../evidence/native/functions/006EB820_RenderCopy_TransferRectangleByUnsignedDivisor.asm) ([C](../../evidence/native/functions/006EB820_RenderCopy_TransferRectangleByUnsignedDivisor.c)) |

The annotated pseudocode is the actual Ghidra export, including its leading blank lines, inferred declaration and instruction-grounded comment. The name describes the observed operation; it is not a recovered interface name. Inferred types and stack variables remain unchanged. The shared [reference rules](../../evidence/native/README.md) identify the original PC 1.67 executable.

## Admission, arithmetic and calls

A context child executes before descriptor-null admission. For a nonnull descriptor, initialization/materialization children precede the object obtained at context+0xC and its virtual+0x98 call. A signed-negative result skips the transfer branch. After `00610600`, four current-stack DWORDs are copied to a local record; that child's stack/data contract and the record's API identity remain unexpanded.

At `006EB88A`, EBP loads the current `[ESP+0x70]` DWORD. The unsigned DIV instructions at `006EB8AC` and `006EB8C8` divide wrapping 32-bit differences `(descriptor+0xC minus descriptor+4)` and `(descriptor+0x10 minus descriptor+8)` by EBP, then add the respective origin. There is no local zero-divisor guard. The virtual+0x88 call receives rectangle/object arguments and literal DWORD2; its result is ignored. A later nonnull object value from the current stack receives virtual+8 cleanup, followed by temporary cleanup.

## Physical ABI and unresolved stack provenance

The existing body ends in `RET8`, which physically consumes eight stack bytes. Its retained inferred declaration exposes one pointer. Neither fact alone identifies the divisor as a particular incoming word. Mapping the `[current ESP+0x70]` load to entry ESP+8 would require preceding cleanup contracts of eight bytes for `00619BF0`, twelve for virtual+0x98, and four for `00610600`; restoring the selected success path's POP EBP also depends on virtual+0x88 cleaning twenty-four bytes. Those contracts were not authenticated by this bounded function. No prototype, calling convention, body, type, instruction or byte repair is implied.

Three retained caller cross-references occur at `006EDCAC`, `006EE6A2` and `006F0E9D`, inside existing functions `006EDC90`, `006EE470` and `006F0C40`. Their relative CALL bytes target this entry; their complete caller policy is unexpanded. Direct children `0060E910`, `00618720`, `00619BF0`, `00610600` and `006183F0` remain unexpanded. The complete selected function has no necessary external-data excerpt.

The virtual offsets and literal2 do not establish D3D9, an interface declaration, filter enum, surface format, crop/viewport coordinates, row convention, mip/depth behavior, scheduling or pixel equivalence. A current whole-mip Vulkan linear copy therefore cannot inherit those original-policy claims from this evidence.
