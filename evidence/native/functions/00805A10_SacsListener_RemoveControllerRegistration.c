/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 instruction-level observation: Removes a listener registration; selected/no-selected
   completion clears selected clock and readies active status including status 1. Local source: the
   reviewed original reference TS3W.exe PC1.67 identity recorded centrally
   
   Analyst note (PC1.67 SACS migration contract): ECX listener; two physical words RET8. Edith
   selected completion first; locate24-byte entry, unregister original controller callback00566990,
   shift entries via008055B0, release controller+14 and namespace+10 retains. Optional namespace
   context marks related animation entities. Selected-or-none clears selected+14 and readies
   active1/2/3/7 even when no entry matched. Current list removal models identity/flags only, not
   native retains or namespace side effects. Former one-byte Ghidra body repaired using original
   reachable flow with no overlap/byte patch. */

void __thiscall SacsListener_RemoveControllerRegistration(void *this,int param_1,int param_2)

{
  int *piVar1;
  undefined4 *puVar2;
  int iVar3;
  void *pvVar4;
  undefined4 *puVar5;
  int iVar6;
  
  if ((param_1 == *(int *)((int)this + 0x14)) && (*(char *)((int)this + 0x1c) != '\0')) {
    SacsListener_EmitAnimationDoneOnce(this,param_1);
  }
  iVar6 = *(int *)((int)this + 4);
  while( true ) {
    if (iVar6 == *(int *)((int)this + 8)) goto LAB_00805acb;
    if (*(int *)(iVar6 + 8) == param_1) break;
    iVar6 = iVar6 + 0x18;
  }
  AnimationController_UnregisterListener((void *)(*(int *)(iVar6 + 0x14) + 0xc),this);
  puVar2 = *(undefined4 **)((int)this + 8);
  puVar5 = (undefined4 *)(iVar6 + 0x18);
  if (puVar5 < puVar2) {
    iVar6 = iVar6 - (int)puVar5;
    do {
      FUN_008055b0((void *)(iVar6 + (int)puVar5),puVar5);
      puVar5 = puVar5 + 6;
    } while (puVar5 != puVar2);
  }
  *(int *)((int)this + 8) = *(int *)((int)this + 8) + -0x18;
  iVar6 = *(int *)((int)this + 8);
  puVar5 = *(undefined4 **)(iVar6 + 0x14);
  if ((puVar5 != (undefined4 *)0x0) && (iVar3 = puVar5[1], puVar5[1] = iVar3 + -1, iVar3 + -1 == 0))
  {
    puVar5[1] = 1;
    (**(code **)*puVar5)(1);
  }
  puVar5 = *(undefined4 **)(iVar6 + 0x10);
  if (puVar5 != (undefined4 *)0x0) {
    piVar1 = puVar5 + 1;
    LOCK();
    iVar6 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar6 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      if (puVar5 != (undefined4 *)0x0) {
        (**(code **)*puVar5)(1);
      }
    }
  }
LAB_00805acb:
  if (param_2 != 0) {
    iVar3 = *(int *)(param_2 + 0xc);
    for (iVar6 = *(int *)(param_2 + 8); iVar6 != iVar3; iVar6 = iVar6 + 8) {
      if (((*(void **)(iVar6 + 4) != (void *)0x0) &&
          (pvVar4 = (void *)FUN_00581870(*(void **)(iVar6 + 4),'\0'), pvVar4 != (void *)0x0)) &&
         (pvVar4 = Object_GetComponentByMask(pvVar4,DAT_011e9e90), pvVar4 != (void *)0x0)) {
        *(byte *)((int)pvVar4 + 0x18) = *(byte *)((int)pvVar4 + 0x18) & 0xfb | 0x20;
      }
    }
  }
  if ((param_1 == *(int *)((int)this + 0x14)) || (*(int *)((int)this + 0x14) == 0)) {
    iVar6 = *(int *)((int)this + 0x18);
    *(undefined4 *)((int)this + 0x14) = 0;
    if (((*(int *)(iVar6 + 0x6c) == 1) ||
        ((*(int *)(iVar6 + 0x6c) == 2 || (*(int *)(iVar6 + 0x6c) == 3)))) ||
       (*(int *)(iVar6 + 0x6c) == 7)) {
      SacsWalker_TrySetExecutionStatus(*(void **)((int)this + 0x18),0);
    }
  }
  return;
}

