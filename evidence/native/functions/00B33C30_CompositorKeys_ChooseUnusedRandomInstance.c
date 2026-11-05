/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX owner,out key/type two stack words RET8.
   Initialize instance0,type supplied,group0. Up to1000tries: two RNG004FAA10 calls; __allshl helper
   uses EDX:EAX and CL32 to form high/low64-bit instance, then check two resource services and local
   map. Decompiled __allshl(0x20,0) is wrong argument propagation, not literal operands. Exhaustion
   returns current output key; current CSPRNG/zero exclusion/lot-only checks/throw are project
   differences. */

uint * __thiscall CompositorKeys_ChooseUnusedRandomInstance(void *this,uint *param_1,uint param_2)

{
  uint *puVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  longlong lVar5;
  ulonglong uVar6;
  undefined4 auStack_8 [2];
  
  puVar1 = param_1;
  piVar2 = (int *)FUN_004afe80();
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = param_2;
  param_1[3] = 0;
  param_1 = (uint *)0x3e8;
  while( true ) {
    if (param_1 == (uint *)0x0) {
      return puVar1;
    }
    FUN_004faa10((uint *)((int)this + 0x58));
    lVar5 = __allshl(0x20,0);
    uVar6 = FUN_004faa10((uint *)((int)this + 0x58));
    puVar1[1] = (uint)((ulonglong)lVar5 >> 0x20);
    *puVar1 = (uint)uVar6 | (uint)lVar5;
    iVar3 = (**(code **)(*piVar2 + 0x58))(puVar1);
    if (((iVar3 == 0) && (iVar3 = (**(code **)(*piVar2 + 0x44))(puVar1), iVar3 == 0)) &&
       (iVar3 = *(int *)(*(int *)((int)this + 0x11c) + *(int *)((int)this + 0x120) * 4),
       piVar4 = (int *)FUN_005ed9e0((void *)((int)this + 0x118),auStack_8,puVar1), *piVar4 == iVar3)
       ) break;
    param_1 = (uint *)((int)param_1 + -1);
  }
  return puVar1;
}

