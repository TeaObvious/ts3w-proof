/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: cdecl one key pointer, plain RET, full EAX UInt32. Read parsed catalog field +9C
   after C8FA20, absent definition returns0. D46E60 uses these bits0..4 for partitions incident on
   either endpoint through D465D0; this is distinct from the coincident mask at+98. */

undefined4 __cdecl WallProduct_GetAdjacentBlockedPartitionMask(uint *param_1)

{
  int iVar1;
  
  iVar1 = FUN_00c8fa20(DAT_011ee034,param_1,'\x01');
  if (iVar1 != 0) {
    return *(undefined4 *)(iVar1 + 0x9c);
  }
  return 0;
}

