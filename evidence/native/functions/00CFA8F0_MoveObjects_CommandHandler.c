/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original MoveObjects command. Caller-cleaned ABI must not be inferred from a
   missing original function: actual body has two RET8 paths, two physical words (command hash,
   argument-list owner), not a recovered source symbol. Hash05F0D096, nonempty argument list and
   UInt16 kind1 select byte payload+10 -> process flag011EE7B8; atomically store owner+D8=0 then
   AL1. Invalid input atomically stores status2 and AL0. No save serialization. Full boundary
   created from existing original Listing flow; no original bytes changed. */

ulonglong MoveObjects_CommandHandler(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 in_EDX;
  
  if (((param_1 == 0x5f0d096) && (iVar2 = *(int *)(param_2 + 8), iVar2 != *(int *)(param_2 + 0xc)))
     && (*(short *)(iVar2 + 10) == 1)) {
    DAT_011ee7b8 = *(undefined1 *)(iVar2 + 0x10);
    LOCK();
    uVar1 = *(undefined4 *)(param_2 + 0xd8);
    *(undefined4 *)(param_2 + 0xd8) = 0;
    UNLOCK();
    return CONCAT44(uVar1,CONCAT31((int3)((uint)iVar2 >> 8),1));
  }
  LOCK();
  uVar1 = *(undefined4 *)(param_2 + 0xd8);
  *(undefined4 *)(param_2 + 0xd8) = 2;
  UNLOCK();
  return CONCAT44(in_EDX,uVar1) & 0xffffffffffffff00;
}

