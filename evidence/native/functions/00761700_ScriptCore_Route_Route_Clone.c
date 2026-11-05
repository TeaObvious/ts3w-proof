/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011618a0 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_Clone [assembly=ScriptCore token=0x060010F1; handle: System.UInt32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl ScriptCore.Route::Route_Clone(uint param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  int *piVar5;
  void *pvVar6;
  int *piVar7;
  int *piVar8;
  int *piVar9;
  int *piVar10;
  int *piStack_10;
  
  GetGlobalInterfacePointer_11D5BBC();
  piVar9 = (int *)0x0;
  if (DAT_011d50c4 == (void *)0x0) {
    return 0;
  }
  piVar5 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
  if (piVar5 == (int *)0x0) {
    return 0;
  }
  (**(code **)(*piVar5 + 0x10))();
  pvVar6 = (void *)FUN_004e4500(0x200,"Routing/Route",0);
  if (pvVar6 == (void *)0x0) {
    piStack_10 = (int *)0x0;
  }
  else {
    piStack_10 = FUN_00760400(pvVar6,(int)piVar5);
    if (piStack_10 != (int *)0x0) {
      (**(code **)(*piStack_10 + 0x10))();
    }
  }
  if (*(char *)((int)piVar5 + 0x141) != '\0') {
    FUN_0074bde0(piStack_10,(int)piVar5);
  }
  piStack_10[0x29] = piVar5[0x29];
  piStack_10[0x2a] = piVar5[0x2a];
  piVar8 = (int *)piVar5[0x38];
  piVar10 = piVar9;
  if (piVar8 != piVar5 + 0x38) {
    do {
      puVar4 = (undefined4 *)piVar8[2];
      if (puVar4 != (undefined4 *)0x0) {
        LOCK();
        puVar4[1] = puVar4[1] + 1;
        UNLOCK();
      }
      pvVar6 = (void *)FUN_004e4500(400,"Routing/RoutingPathImp",0);
      if (pvVar6 == (void *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        piVar7 = FUN_0081f580(pvVar6,(int)puVar4);
        if (piVar7 != (int *)0x0) {
          piVar9 = piVar7 + 1;
          LOCK();
          *piVar9 = *piVar9 + 1;
          UNLOCK();
          LOCK();
          *piVar9 = *piVar9 + 1;
          UNLOCK();
        }
      }
      piVar9 = (int *)FUN_004e4500(0xc,piStack_10[0x3a],0);
      if ((piVar9 + 2 != (int *)0x0) && (piVar9[2] = (int)piVar7, piVar7 != (int *)0x0)) {
        LOCK();
        piVar7[1] = piVar7[1] + 1;
        UNLOCK();
      }
      *piVar9 = (int)(piStack_10 + 0x38);
      piVar9[1] = piStack_10[0x39];
      *(int **)piStack_10[0x39] = piVar9;
      piStack_10[0x39] = (int)piVar9;
      if (piVar7 != (int *)0x0) {
        piVar9 = piVar7 + 1;
        LOCK();
        iVar2 = *piVar9;
        *piVar9 = *piVar9 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar9 = 1;
          UNLOCK();
          (**(code **)*piVar7)(1);
        }
      }
      if (piVar10 != (int *)0x0) {
        (**(code **)(*piVar10 + 0x78))(piVar7);
        (**(code **)(*piVar7 + 0x80))(piVar10);
      }
      piVar9 = piVar10;
      if (piVar7 != piVar10) {
        if (piVar7 != (int *)0x0) {
          LOCK();
          piVar7[1] = piVar7[1] + 1;
          UNLOCK();
        }
        piVar9 = piVar7;
        if (piVar10 != (int *)0x0) {
          piVar1 = piVar10 + 1;
          LOCK();
          iVar2 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar2 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            (**(code **)*piVar10)(1);
          }
        }
      }
      if (piVar7 != (int *)0x0) {
        piVar10 = piVar7 + 1;
        LOCK();
        iVar2 = *piVar10;
        *piVar10 = *piVar10 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar10 = 1;
          UNLOCK();
          (**(code **)*piVar7)(1);
        }
      }
      if (puVar4 != (undefined4 *)0x0) {
        piVar10 = puVar4 + 1;
        LOCK();
        iVar2 = *piVar10;
        *piVar10 = *piVar10 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar10 = 1;
          UNLOCK();
          (**(code **)*puVar4)(1);
        }
      }
      piVar8 = (int *)*piVar8;
      piVar10 = piVar9;
    } while (piVar8 != piVar5 + 0x38);
  }
  if (piVar5[0x3c] != piStack_10[0x3c]) {
    piStack_10[0x3c] = piVar5[0x3c];
    FUN_00757380(piStack_10);
  }
  FUN_0074e5a0(DAT_011d50c4,piStack_10 + 1);
  iVar2 = piStack_10[6];
  if (piVar9 != (int *)0x0) {
    piVar8 = piVar9 + 1;
    LOCK();
    iVar3 = *piVar8;
    *piVar8 = *piVar8 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar8 = 1;
      UNLOCK();
      (**(code **)*piVar9)(1);
    }
  }
  (**(code **)(*piStack_10 + 0x14))();
  (**(code **)(*piVar5 + 0x14))();
  return iVar2;
}

