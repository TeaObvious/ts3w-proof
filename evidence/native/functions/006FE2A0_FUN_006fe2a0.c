/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECXrenderWorld, childGUIDlow/high,parentGUIDlow/high,descriptorPointer five stackwordsRET14. Child map entry absent/sentinel =>AL0. Parent absent/sentinel passesnull to6FC5F0, elseentry-8. AL1 reports childhandler invocation even parentabsent; not renderer/GPU readiness. Lookup target6FDD60 existingcanonical. */

undefined4 __thiscall
FUN_006fe2a0(void *this,uint param_1,undefined4 param_2,uint param_3,undefined4 param_4,
            undefined4 *param_5)

{
  void *this_00;
  uint uVar1;
  undefined4 uVar2;
  uint local_8;
  undefined4 local_4;
  
  local_8 = param_1;
  local_4 = param_2;
  RenderGuidMap_FindIterator((void *)((int)this + 4),&param_1,(byte *)&local_8);
  uVar1 = *(uint *)((int)this + 0x1028);
  if (((param_1 == uVar1) || (param_1 == 0)) ||
     (this_00 = (void *)(param_1 - 8), this_00 == (void *)0x0)) {
    return param_1 & 0xffffff00;
  }
  param_1 = param_3;
  param_2 = param_4;
  RenderGuidMap_FindIterator((void *)((int)this + 4),&param_3,(byte *)&param_1);
  if ((param_3 == uVar1) || (param_3 == 0)) {
    uVar2 = FUN_006fc5f0(this_00,(int *)0x0,param_5);
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  uVar2 = FUN_006fc5f0(this_00,(int *)(param_3 - 8),param_5);
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}
