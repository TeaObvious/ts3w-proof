/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Retires Current then promotes first
   pending node only when not flag4 blocked. Retains controller in current, unlinks node and drops
   queue reference, refreshes state, runs child Update(0) and sync callback unless flags&2. Returns
   AL1 after activation, otherwise0. */

undefined4 __thiscall AnimationSequenceController_ActivateNext(void *this,undefined1 *param_1)

{
  int *piVar1;
  uint *puVar2;
  int *piVar3;
  undefined4 *puVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  
  piVar1 = (int *)((int)this + 0x50);
  *param_1 = 0;
  uVar6 = Animation_RetireSequenceEntry(piVar1,(int)this,'\x01');
  puVar2 = (uint *)((int)this + 0x30);
  if (((uint *)*puVar2 != puVar2) && (uVar6 = *puVar2, (*(byte *)(uVar6 + 0x10) & 4) == 0)) {
    AnimationSequenceEntry_CopyRetained(piVar1,(int *)(uVar6 + 8));
    piVar3 = (int *)*puVar2;
    *(int *)piVar3[1] = *piVar3;
    *(int *)(*piVar3 + 4) = piVar3[1];
    puVar4 = (undefined4 *)piVar3[2];
    if ((puVar4 != (undefined4 *)0x0) &&
       (iVar7 = puVar4[1], puVar4[1] = iVar7 + -1, iVar7 + -1 == 0)) {
      puVar4[1] = 1;
      (**(code **)*puVar4)(1);
    }
    FUN_004e44e0((int)piVar3);
    iVar7 = FUN_00566cb0((int)this);
    piVar1 = (int *)*piVar1;
    if (piVar1 != (int *)0x0) {
      piVar1[1] = piVar1[1] + 1;
    }
    uVar6 = *(uint *)((int)this + 0x54);
    uVar5 = *(uint *)((int)this + 0x58);
    if (piVar1 != (int *)0x0) {
      iVar7 = (**(code **)(*piVar1 + 8))(0);
    }
    if ((uVar5 & 2) == 0) {
      iVar7 = FUN_005770f0(uVar6);
      *param_1 = (char)iVar7;
    }
    if (piVar1 != (int *)0x0) {
      iVar7 = piVar1[1] + -1;
      piVar1[1] = iVar7;
      if (iVar7 == 0) {
        piVar1[1] = 1;
        iVar7 = (**(code **)*piVar1)(1);
      }
    }
    return CONCAT31((int3)((uint)iVar7 >> 8),1);
  }
  return uVar6 & 0xffffff00;
}

