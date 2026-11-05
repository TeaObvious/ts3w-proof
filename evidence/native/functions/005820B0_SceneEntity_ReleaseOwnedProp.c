/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX entity,no stack arguments,AL result;
   upper EAX incidental. Requires nonzero GUID and flag2. Flag8 path sets flag10hex and
   calls00581C10. Otherwise creates retained scene/event holders and dispatches event7829873A
   through manager virtual+1C, releases local retained handles. This is queued/indirect lifetime
   dispatch, not proof of synchronous world-object destruction. Native failure allocation paths and
   ultimate receiver remain bounded. */

undefined4 __fastcall SceneEntity_ReleaseOwnedProp(int param_1)

{
  int iVar1;
  int iVar2;
  uint in_EAX;
  undefined4 uVar3;
  void *this;
  int *piVar4;
  int *piVar5;
  int *piVar6;
  
  if (((*(int *)(param_1 + 0x10) != 0) || (*(int *)(param_1 + 0x14) != 0)) &&
     (in_EAX = *(uint *)(param_1 + 0xc), ((byte)in_EAX & 2) == 2)) {
    if (((byte)in_EAX & 8) == 8) {
      *(uint *)(param_1 + 0xc) = in_EAX | 0x10;
      uVar3 = FUN_00581c10(param_1);
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
    this = (void *)FUN_004e4500(0x20,"Animation/Scene",0);
    if (this == (void *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = (int *)FUN_00581bc0(this,10);
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 4))();
      }
    }
    piVar5 = (int *)FUN_004e4500(0x18,"Animation/Scene",0);
    if (piVar5 == (int *)0x0) {
      piVar5 = (int *)0x0;
    }
    else {
      piVar5[4] = 0x7829873a;
      *piVar5 = (int)&PTR_FUN_0106c91c;
      LOCK();
      piVar5[1] = 0;
      UNLOCK();
      *piVar5 = (int)&PTR_FUN_0106c91c;
      (**(code **)(*piVar5 + 4))();
    }
    iVar1 = *(int *)(param_1 + 0x10);
    iVar2 = *(int *)(param_1 + 0x14);
    if ((iVar1 != piVar4[4]) || (iVar2 != piVar4[5])) {
      SceneEntity_ReleaseOwnedProp((int)piVar4);
      piVar4[4] = iVar1;
      piVar4[5] = iVar2;
    }
    piVar6 = (int *)FUN_007693a0();
    (**(code **)(*piVar6 + 0x1c))(0x7829873a,piVar5,0,piVar4 + 2);
    if (piVar5 != (int *)0x0) {
      (**(code **)(*piVar5 + 8))();
    }
    uVar3 = (**(code **)(*piVar4 + 8))();
    return CONCAT31((int3)((uint)uVar3 >> 8),1);
  }
  return in_EAX & 0xffffff00;
}

