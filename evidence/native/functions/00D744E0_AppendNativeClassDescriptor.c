/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 host vtable +0x48 target. Raw 0x00D744E0..0x00D74513 appends a class descriptor
   to the doubly linked host list at +0x1600, later walked by 0x00D7E9F0. WARNING: Ghidra's function
   body currently contains only PUSH ESI, although bounded disassembly shows 19 instructions through
   RET 4 at 0x00D74511. The reason for the truncated body is unresolved; use the raw instruction
   trace for this function. Source:
   evidence/bindings/consumer-trace.md. */

void __thiscall AppendNativeClassDescriptor(void *this,int param_1)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_007694a0(0xc,0);
  if (piVar1 + 2 != (int *)0x0) {
    piVar1[2] = param_1;
  }
  *piVar1 = (int)this + 0x1600;
  piVar1[1] = *(int *)((int)this + 0x1604);
  **(undefined4 **)((int)this + 0x1604) = piVar1;
  *(int **)((int)this + 0x1604) = piVar1;
  return;
}

