/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_Append. Export ordinal(s): 619. Entry VA:
   0x105484b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060001B1. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Route_Append(uint param_1,uint param_2,undefined4 param_3)

{
  int *piVar1;
  int *this;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;
  int *piVar5;
  
  this = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
  if (this != (int *)0x0) {
    (**(code **)(*this + 0x10))();
  }
  piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,param_2);
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x10))();
  }
  if (this != (int *)0x0) {
    if (piVar2 == (int *)0x0) goto LAB_10545dd5;
    if ((char)this[0x3d] == '\0') {
      piVar5 = this + 0x38;
      if ((int *)*piVar5 == piVar5) {
        piVar5 = (int *)0x0;
      }
      else {
        piVar5 = *(int **)(*piVar5 + 8);
      }
    }
    else {
      piVar5 = (int *)this[0x3b];
    }
    if (piVar5 != (int *)0x0) {
      LOCK();
      piVar5[1] = piVar5[1] + 1;
      UNLOCK();
    }
    if ((char)piVar2[0x3d] == '\0') {
      piVar1 = piVar2 + 0x38;
      if ((int *)*piVar1 == piVar1) {
        puVar3 = (undefined4 *)0x0;
      }
      else {
        puVar3 = *(undefined4 **)(*piVar1 + 8);
      }
    }
    else {
      puVar3 = (undefined4 *)piVar2[0x3b];
    }
    if (puVar3 != (undefined4 *)0x0) {
      LOCK();
      puVar3[1] = puVar3[1] + 1;
      UNLOCK();
    }
    if (piVar5 == (int *)0x0) {
      if (puVar3 != (undefined4 *)0x0) {
        piVar5 = puVar3 + 1;
        LOCK();
        iVar4 = *piVar5;
        *piVar5 = *piVar5 + -1;
        UNLOCK();
        if (iVar4 == 1) {
          LOCK();
          *piVar5 = 1;
          UNLOCK();
          (**(code **)*puVar3)(1);
        }
      }
    }
    else {
      if (puVar3 != (undefined4 *)0x0) {
        iVar4 = (**(code **)(*piVar5 + 0xf8))(puVar3,param_3);
        if (iVar4 != 0) {
          FUN_1053c7d0(this,(int)piVar2);
          FUN_105415a0((int)this);
          FUN_10656ec0((int *)&stack0xfffffff0);
          FUN_10656ec0((int *)&stack0xfffffff4);
          (**(code **)(*piVar2 + 0x14))();
          (**(code **)(*this + 0x14))();
          return 1;
        }
        FUN_10656ec0((int *)&stack0xfffffff0);
        FUN_10656ec0((int *)&stack0xfffffff4);
        (**(code **)(*piVar2 + 0x14))();
        (**(code **)(*this + 0x14))();
        return 0;
      }
      piVar1 = piVar5 + 1;
      LOCK();
      iVar4 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar4 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*piVar5)(1);
      }
    }
  }
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x14))();
  }
LAB_10545dd5:
  if (this != (int *)0x0) {
    (**(code **)(*this + 0x14))();
  }
  return 0;
}

