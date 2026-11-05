/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Find full key; decrement UInt32 count.
   When exactly zero, erase both forward key->ordinal/count and reverse ordinal->key entries. A
   released ordinal becomes reusable by first-free allocation. Underflow/missing entry behavior
   follows native instructions, not a reconstructed recount policy. */

void __thiscall WallPatternMap_ReleaseReference(void *this,uint *param_1)

{
  int *piVar1;
  int local_10;
  int *local_c;
  int local_8;
  int *local_4;
  
  FUN_005ed9e0(this,&local_10,param_1);
  if (local_10 != *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    piVar1 = (int *)(local_10 + 0x14);
    *piVar1 = *piVar1 + -1;
    if (*piVar1 == 0) {
      FUN_009d6c30((void *)((int)this + 0x20),&local_8,(uint *)(local_10 + 0x10));
      FUN_00549450(this,&local_10,local_10,local_c);
      FUN_00549450((void *)((int)this + 0x20),&local_8,local_8,local_4);
    }
  }
  return;
}

