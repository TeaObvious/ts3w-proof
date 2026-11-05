/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC167_STARTUP_00ec7c00. Dispatches loading-screen events. ECX object and one physical stack event
   pointer, RET 4. Event 10003 from either caption identity clears active flag, settles transition
   via EC7830, restarts dwell and delegates ordinary dispatch. Tick 0xC posts callback after active
   effect elapsed-duration >=1/65536, then clears effect timer. Event 10064 forwards payload through
   original global service virtual +124 and returns AL=1. Decompiler upper return bits and
   uninitialized scratch expressions are not contract values; physical ASM is authoritative. No host
   timing equivalence asserted. */

uint __thiscall AppLoadingScreen_DispatchEvent(void *this,undefined4 *param_1)

{
  int *piVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint unaff_EBP;
  float10 fVar7;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  undefined1 local_10;
  
  if (param_1[2] == 0x10064) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar2 = 0;
    if (piVar1 != (int *)0x0) {
      local_20[0] = &PTR_FUN_00fba6f4;
      local_10 = 1;
      local_16 = 1;
      local_18 = 0;
      uVar2 = (**(code **)(*piVar1 + 0x124))(param_1[4],param_1[3],local_20);
      if ((unaff_EBP & 4) != 0) {
        uVar2 = FUN_004f5760(&stack0xffffffd4,'\0');
      }
    }
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  if (param_1[2] == 0x10003) {
    if (*(int **)((int)this + 0x268) != (int *)0x0) {
      piVar3 = (int *)(**(code **)(**(int **)((int)this + 0x268) + 0x10))();
      piVar1 = (int *)*param_1;
      iVar4 = (**(code **)(*piVar3 + 0x1c))();
      iVar5 = (**(code **)(*piVar1 + 0x1c))();
      if (iVar5 != iVar4) goto LAB_00ec7cba;
LAB_00ec7cec:
      if (*(char *)((int)this + 0x2e0) != '\0') {
        *(undefined1 *)((int)this + 0x2e0) = 0;
        AppLoadingScreen_SettleCaption((int)this);
        ElapsedClock_Restart((DWORD *)((int)this + 0x2a8));
        uVar6 = WinWindow_DispatchEventToVirtual(this,param_1);
        return uVar6;
      }
      goto LAB_00ec7d83;
    }
LAB_00ec7cba:
    if (*(int **)((int)this + 0x26c) != (int *)0x0) {
      piVar1 = (int *)(**(code **)(**(int **)((int)this + 0x26c) + 0x10))();
      iVar4 = (**(code **)(*(int *)*param_1 + 0x1c))();
      iVar5 = (**(code **)(*piVar1 + 0x1c))();
      if (iVar4 == iVar5) goto LAB_00ec7cec;
    }
  }
  if (param_1[2] == 0xc) {
    fVar7 = ElapsedClock_ReadScaledTicks((undefined4 *)((int)this + 0x2c0));
    if ((*(char *)((int)this + 0x2e2) != '\0') &&
       (_DAT_010f58ec <= (float)fVar7 - *(float *)((int)this + 0x2d8))) {
      *(undefined1 *)((int)this + 0x2e2) = 0;
      *(undefined4 *)((int)this + 0x2c0) = 0;
      *(undefined4 *)((int)this + 0x2c4) = 0;
      *(undefined4 *)((int)this + 0x2c8) = 0;
      *(undefined4 *)((int)this + 0x2cc) = 0;
      AppLoadingScreen_PostCallbackEvent((int)this);
    }
  }
LAB_00ec7d83:
  uVar6 = WinWindow_DispatchEventToVirtual(this,param_1);
  return uVar6;
}

