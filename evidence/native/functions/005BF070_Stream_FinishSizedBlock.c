/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX stream context plus placeholder position RET4,
   corrected from misleading one-register prototype. Querycurrentposition and
   backpatch(current-marker-4) using005BEE40; invalidpositionFFFFFFFF clears status. */

void __thiscall Stream_FinishSizedBlock(void *this,uint arg0)

{
  uint uVar1;
  
  uVar1 = (**(code **)(**(int **)((int)this + 8) + 0x24))((undefined *)*(int **)((int)this + 8),0);
  if (uVar1 == 0xffffffff) {
    *(undefined1 *)((int)this + 0x14) = 0;
    return;
  }
  Stream_BackpatchUInt32(this,arg0,(uVar1 - arg0) - 4);
  return;
}

