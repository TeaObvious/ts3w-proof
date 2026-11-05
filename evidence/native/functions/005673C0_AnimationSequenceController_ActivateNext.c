/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 original instruction review. Analyst-assigned name. Retires Current then promotes first
   pending node only when not flag4 blocked. Retains controller in current, unlinks node and drops
   queue reference, refreshes state, runs child Update(0) and sync callback unless flags&2. Returns
   AL1 after activation, otherwise0. */

undefined4 __thiscall AnimationSequenceController_ActivateNext(void *this,undefined1 *param_1)

{
  int *piVar1;
  uint *puVar2;
  int *allocation;
  undefined4 *puVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  
  piVar1 = (int *)((int)this + 0x50);
  *param_1 = 0;
  uVar5 = Animation_RetireSequenceEntry(piVar1,(int)this,'\x01');
  puVar2 = (uint *)((int)this + 0x30);
  if (((uint *)*puVar2 == puVar2) || (uVar5 = *puVar2, (*(byte *)(uVar5 + 0x10) & 4) != 0)) {
    return uVar5 & 0xffffff00;
  }
  AnimationSequenceEntry_CopyRetained(piVar1,(int *)(uVar5 + 8));
  allocation = (int *)*puVar2;
  *(int *)allocation[1] = *allocation;
  *(int *)(*allocation + 4) = allocation[1];
  puVar3 = (undefined4 *)allocation[2];
  if ((puVar3 != (undefined4 *)0x0) && (iVar6 = puVar3[1], puVar3[1] = iVar6 + -1, iVar6 + -1 == 0))
  {
    puVar3[1] = 1;
    (**(code **)*puVar3)(1);
  }
  Memory_FreeIfNonNull(allocation);
  iVar6 = FUN_00566cb0((int)this);
  piVar1 = (int *)*piVar1;
  if (piVar1 != (int *)0x0) {
    piVar1[1] = piVar1[1] + 1;
  }
  uVar5 = *(uint *)((int)this + 0x54);
  uVar4 = *(uint *)((int)this + 0x58);
  if (piVar1 != (int *)0x0) {
    iVar6 = (**(code **)(*piVar1 + 8))(0);
  }
  if ((uVar4 & 2) == 0) {
    iVar6 = FUN_005770f0(uVar5);
    *param_1 = (char)iVar6;
  }
  if (piVar1 != (int *)0x0) {
    iVar6 = piVar1[1] + -1;
    piVar1[1] = iVar6;
    if (iVar6 == 0) {
      piVar1[1] = 1;
      iVar6 = (**(code **)*piVar1)(1);
    }
  }
  return CONCAT31((int3)((uint)iVar6 >> 8),1);
}

