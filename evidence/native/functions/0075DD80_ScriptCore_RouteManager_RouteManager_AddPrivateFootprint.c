/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161c88 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_AddPrivateFootprint [assembly=ScriptCore token=0x06001067;
   scriptHandle: System.UInt64, privateFootprintPointAry: System.Single[]&, numPoints: System.Int32,
   bAllowPlacementInWorld: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.RouteManager::RouteManager_AddPrivateFootprint
          (undefined4 param_1,undefined4 param_2,undefined4 *param_3,int param_4,uint param_5)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int *piVar5;
  undefined4 uVar6;
  int unaff_EBX;
  undefined4 *puStack_50;
  int local_4c;
  undefined4 *local_48;
  undefined4 *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  char *local_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  char *pcStack_24;
  undefined4 uStack_20;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar5 = (int *)0x0;
  if (piVar1 != (int *)0x0) {
    iVar2 = FUN_00937570();
    piVar5 = (int *)0x0;
    if (iVar2 != 0) {
      puVar3 = (undefined4 *)FUN_00937f80(iVar2);
      if (puVar3 != (undefined4 *)0x0) {
        LOCK();
        puVar3[1] = puVar3[1] + 1;
        UNLOCK();
      }
      puVar4 = (undefined4 *)thunk_FUN_00835d40();
      piVar5 = (int *)0x0;
      if (puVar3 != (undefined4 *)0x0) {
        local_44 = puVar4;
        if (puVar4 != (undefined4 *)0x0) {
          local_40 = 0;
          local_3c = 0;
          local_38 = 0;
          local_4c = 0;
          local_48 = (undefined4 *)0x0;
          local_34 = "Routing/AddPrivateFootprint";
          (**(code **)(*piVar1 + 0x78))(*param_3,&local_4c,&local_48);
          if (0 < param_4) {
            iVar2 = 0;
            do {
              local_34 = *(char **)(iVar2 + 8 + unaff_EBX);
              local_3c = *(undefined4 *)(iVar2 + unaff_EBX);
              local_38 = *(undefined4 *)(iVar2 + 4 + unaff_EBX);
              uStack_30 = local_3c;
              uStack_2c = local_3c;
              uStack_28 = local_38;
              pcStack_24 = local_34;
              uStack_20 = local_3c;
              if (local_48 < local_44) {
                puVar4 = local_48 + 4;
                if (local_48 != (undefined4 *)0x0) {
                  *local_48 = local_3c;
                  local_48[1] = local_38;
                  local_48[2] = local_34;
                  local_48[3] = local_3c;
                }
              }
              else {
                FUN_005cf970(&local_4c,local_48,&uStack_2c);
                puVar4 = local_48;
              }
              local_48 = puVar4;
              iVar2 = iVar2 + 0xc;
              param_4 = param_4 + -1;
              puVar4 = puStack_50;
            } while (param_4 != 0);
          }
          uVar6 = FUN_008316e0(puVar4,puVar3,&local_4c,param_5);
          if (local_4c != 0) {
            FUN_004e44e0(local_4c);
          }
          piVar5 = puVar3 + 1;
          LOCK();
          iVar2 = *piVar5;
          *piVar5 = *piVar5 + -1;
          UNLOCK();
          if (iVar2 == 1) {
            LOCK();
            *piVar5 = 1;
            UNLOCK();
            piVar5 = (int *)(**(code **)*puVar3)(1);
          }
          return CONCAT31((int3)((uint)piVar5 >> 8),(char)uVar6);
        }
        piVar5 = puVar3 + 1;
        LOCK();
        iVar2 = *piVar5;
        *piVar5 = *piVar5 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar5 = 1;
          UNLOCK();
          piVar5 = (int *)(**(code **)*puVar3)(1);
        }
      }
    }
  }
  return (uint)piVar5 & 0xffffff00;
}

