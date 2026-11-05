/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX manager; hash/output two stack args. Hold
   manager+98 critical section, exact hash lookup in camera table, copy settings00D4B510 on hit, AL1
   elseAL0. No guessed section fallback; upper EAX bits incidental unlock return. */

undefined4 __thiscall ThumbnailCamera_FindByHash(void *this,undefined4 param_1,void *param_2)

{
  LPCRITICAL_SECTION this_00;
  LONG LVar1;
  uint uVar2;
  int local_8 [2];
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x98);
  FUN_004e1c00(this_00,(uint *)&DAT_01089370);
  FUN_006a6050((void *)((int)this + 0x18),local_8,&param_1);
  if (local_8[0] != *(int *)(*(int *)((int)this + 0x1c) + *(int *)((int)this + 0x20) * 4)) {
    FUN_00d4b510(param_2,(undefined4 *)(local_8[0] + 0x10));
    LVar1 = FUN_004e1cc0(this_00);
    return CONCAT31((int3)((uint)LVar1 >> 8),1);
  }
  uVar2 = FUN_004e1cc0(this_00);
  return uVar2 & 0xffffff00;
}

