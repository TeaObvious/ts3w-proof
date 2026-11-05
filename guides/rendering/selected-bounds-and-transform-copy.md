# Selected bounds and separate transform output

Original PC1.67 TS3W.exe, static instruction evidence only.
[Complete original ASM](../../evidence/native/functions/006F4FC0_RenderBounds_CopySelectedBoundsAndTransform.asm) ([actual annotated Ghidra C](../../evidence/native/functions/006F4FC0_RenderBounds_CopySelectedBoundsAndTransform.c)).
Analyst name is inferred, not a recovered symbol. Complete owned function is
6F4FC0..6F5048 inclusive:137bytes,43instructions, RET8. No alignment gap is owned.

## Inputs, outputs and order

Physical ECX is the owner; stack+4 and+8 are two output pointers. MOVAPS copies
owner+50/+60 (32bytes) into the first output, then owner+80/+90/+A0/+B0 (64bytes)
into the second. These are aligned128bit bit copies; undefined4 decompiler lanes
do not establish integer-valued geometry. No transform arithmetic, conversion,
null check or buffer-size check occurs. The original aligned-load/store
requirements apply to the actual source and destination addresses.

Call6DB500 on owner+210 returns an optional interface. Null retains both copies.
For nonnull, CALL60FC70 returns an integer tested with mask00200000; despite its
existing foreign analyst name, this consumer performs an EAX bit test. A set bit
retains the default first output. A clear bit calls5044D0 on the optional interface
and copies its first32bytes over the first output. That returned pointer is not
null-checked. The second output is never overwritten. There is no boolean/status
return contract; decompiler void corresponds to the body's output-only use.

## Callers, producers and limits

Four direct data references retain the function pointer at FFA8DC, FFAC34,
1060494 and108C06C; each original32bit value equals6F4FC0. These identify vtable-like
consumers, not which dynamic type/call occurs in a game session. This body consumes
stored records and an optional selector/accessor; the full producers for their
bounds subtype, coordinate space and matrix semantics remain unresolved. It
therefore does not alone prove a Sim-specific local-to-world formula, weighted
skinning, render scheduling, publication timing or Vulkan fence behavior.

The three direct calls and complete canonical pair are indexed. Original bytes
and function extent were verified against the authoritative executable; actual
annotations are embedded in the exported Ghidra pseudocode. No runtime, game,
GPU or concurrency test is represented by this static evidence.
