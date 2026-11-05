/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified semantics. Physical ECX world-owner plus GUIDlow/high two stack words, RET8, only AL Boolean established. Current Ghidra C omits both key arguments;797F62..6C visibly pushes child GUIDhigh/low. Reads map atowner+3BC and sentinel via+3C0/+3C4;6286C0 lookup takes pointer to original contiguous two-word stack key, returns iterator whose node compares to sentinel. Predicate is membership, not a test of every Effect component or every script AutoDestroy bit. Insertion/removal and ownership require their actual producers. */

bool __fastcall FUN_00c63930(int param_1)

{
  int iVar1;
  int *piVar2;
  uint uStack00000004;
  undefined4 local_8 [2];
  
  iVar1 = *(int *)(*(int *)(param_1 + 0x3c0) + *(int *)(param_1 + 0x3c4) * 4);
  piVar2 = (int *)FUN_006286c0((void *)(param_1 + 0x3bc),local_8,&uStack00000004);
  return *piVar2 != iVar1;
}
