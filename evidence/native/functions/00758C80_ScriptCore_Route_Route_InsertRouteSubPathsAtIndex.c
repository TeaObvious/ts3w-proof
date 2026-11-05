/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161988 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_InsertRouteSubPathsAtIndex [assembly=ScriptCore token=0x06001114; handle:
   System.UInt32, pathIndex: System.UInt32, handleToInsert: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.Route::Route_InsertRouteSubPathsAtIndex(uint param_1,int param_2,uint param_3)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  undefined4 *puVar6;
  int iVar7;
  int iVar8;
  int *piVar9;
  int *local_24;
  int *local_20;
  
  if (DAT_011d50c4 == (void *)0x0) {
    local_24 = (int *)0x0;
LAB_00758e7a:
    local_20 = (int *)0x0;
  }
  else {
    local_24 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
    if (local_24 != (int *)0x0) {
      (**(code **)(*local_24 + 0x10))();
    }
    if (DAT_011d50c4 == (void *)0x0) goto LAB_00758e7a;
    local_20 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_3);
    if (local_20 != (int *)0x0) {
      (**(code **)(*local_20 + 0x10))();
    }
  }
  if (local_24 != (int *)0x0) {
    if (local_20 == (int *)0x0) goto LAB_00758fb1;
    piVar4 = local_24 + 0x38;
    iVar8 = param_2;
    for (piVar9 = (int *)local_24[0x38]; piVar9 != piVar4; piVar9 = (int *)*piVar9) {
      if (iVar8 == 0) {
        if (piVar9 != piVar4) {
          FUN_00751480(piVar4,(int)piVar9,(undefined4 *)local_20[0x38],local_20 + 0x38);
          goto LAB_00758dda;
        }
        break;
      }
      iVar8 = iVar8 + -1;
    }
    for (piVar9 = (int *)local_20[0x38]; piVar9 != local_20 + 0x38; piVar9 = (int *)*piVar9) {
      puVar6 = (undefined4 *)FUN_004e4500(0xc,local_24[0x3a],0);
      if (puVar6 + 2 != (int *)0x0) {
        iVar8 = piVar9[2];
        puVar6[2] = iVar8;
        if (iVar8 != 0) {
          LOCK();
          *(int *)(iVar8 + 4) = *(int *)(iVar8 + 4) + 1;
          UNLOCK();
        }
      }
      *puVar6 = piVar4;
      puVar6[1] = local_24[0x39];
      *(undefined4 **)local_24[0x39] = puVar6;
      local_24[0x39] = (int)puVar6;
    }
    iVar8 = local_20[0x41];
    iVar7 = local_20[0x42];
    iVar5 = local_20[0x43];
    local_24[0x40] = local_20[0x40];
    local_24[0x41] = iVar8;
    local_24[0x42] = iVar7;
    local_24[0x43] = iVar5;
    iVar8 = local_20[0x45];
    iVar7 = local_20[0x46];
    iVar5 = local_20[0x47];
    local_24[0x44] = local_20[0x44];
    local_24[0x45] = iVar8;
    local_24[0x46] = iVar7;
    local_24[0x47] = iVar5;
    iVar8 = local_20[0x49];
    iVar7 = local_20[0x4a];
    iVar5 = local_20[0x4b];
    local_24[0x48] = local_20[0x48];
    local_24[0x49] = iVar8;
    local_24[0x4a] = iVar7;
    local_24[0x4b] = iVar5;
    iVar8 = local_20[0x4d];
    iVar7 = local_20[0x4e];
    iVar5 = local_20[0x4f];
    local_24[0x4c] = local_20[0x4c];
    local_24[0x4d] = iVar8;
    local_24[0x4e] = iVar7;
    local_24[0x4f] = iVar5;
    *(undefined1 *)((int)local_24 + 0x141) = *(undefined1 *)((int)local_20 + 0x141);
    *(char *)(local_24 + 0x50) = (char)local_20[0x50];
LAB_00758dda:
    piVar9 = (int *)*piVar4;
    if (piVar9 != piVar4) {
      do {
        piVar2 = (int *)piVar9[2];
        if (piVar2 != (int *)0x0) {
          LOCK();
          piVar2[1] = piVar2[1] + 1;
          UNLOCK();
        }
        (**(code **)(*piVar2 + 0x10))(local_24 + 0x56);
        iVar7 = (**(code **)(*piVar2 + 0xc))();
        iVar8 = local_24[0xf];
        puVar6 = (undefined4 *)FUN_0081c510(iVar7);
        FUN_0085f5e0(piVar2,puVar6,iVar8);
        piVar3 = piVar2 + 1;
        LOCK();
        iVar8 = *piVar3;
        *piVar3 = *piVar3 + -1;
        UNLOCK();
        if (iVar8 == 1) {
          LOCK();
          *piVar3 = 1;
          UNLOCK();
          (**(code **)*piVar2)(1);
        }
        piVar9 = (int *)*piVar9;
      } while (piVar9 != piVar4);
      puVar6 = (undefined4 *)*piVar4;
      for (piVar9 = (int *)*puVar6; piVar9 != piVar4; piVar9 = (int *)*piVar9) {
        piVar2 = (int *)puVar6[2];
        if (piVar2 != (int *)0x0) {
          LOCK();
          piVar2[1] = piVar2[1] + 1;
          UNLOCK();
        }
        piVar3 = (int *)piVar9[2];
        if (piVar3 != (int *)0x0) {
          LOCK();
          piVar3[1] = piVar3[1] + 1;
          UNLOCK();
        }
        (**(code **)(*piVar2 + 0x78))(piVar3);
        (**(code **)(*piVar3 + 0x80))(piVar2);
        piVar1 = piVar3 + 1;
        LOCK();
        iVar8 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar8 == 1) {
          LOCK();
          *piVar1 = 1;
          UNLOCK();
          (**(code **)*piVar3)(1);
        }
        piVar3 = piVar2 + 1;
        LOCK();
        iVar8 = *piVar3;
        *piVar3 = *piVar3 + -1;
        UNLOCK();
        if (iVar8 == 1) {
          LOCK();
          *piVar3 = 1;
          UNLOCK();
          (**(code **)*piVar2)(1);
        }
        puVar6 = (undefined4 *)*puVar6;
      }
    }
    FUN_00750450((int)local_24);
    iVar8 = local_24[0x3c];
    if (-1 < iVar8) {
      if (param_2 <= iVar8) {
        iVar7 = 0;
        for (piVar4 = (int *)local_20[0x38]; piVar4 != local_20 + 0x38; piVar4 = (int *)*piVar4) {
          iVar7 = iVar7 + 1;
        }
        iVar8 = iVar8 + iVar7;
      }
      if (iVar8 != local_24[0x3c]) {
        local_24[0x3c] = iVar8;
        FUN_00757380(local_24);
      }
    }
  }
  if (local_20 != (int *)0x0) {
    (**(code **)(*local_20 + 0x14))();
  }
LAB_00758fb1:
  if (local_24 != (int *)0x0) {
    (**(code **)(*local_24 + 0x14))();
  }
  return;
}

