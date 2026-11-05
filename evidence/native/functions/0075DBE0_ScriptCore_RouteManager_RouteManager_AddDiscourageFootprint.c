/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161c78 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_AddDiscourageFootprint [assembly=ScriptCore
   token=0x06001065; scriptHandle: System.UInt64, discourageRegionPointAry: System.Single[]&,
   numPoints: System.Int32, bHighImpassable: System.Boolean, bAllowPlacementInWorld: System.Boolean,
   bPlacementFootprint: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.RouteManager::RouteManager_AddDiscourageFootprint
          (undefined4 param_1,undefined4 param_2,undefined4 *param_3,int param_4,char param_5,
          byte param_6,char param_7)

{
  int *piVar1;
  void *this;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 uVar5;
  int unaff_EBX;
  int iVar6;
  undefined4 *puStack_50;
  void *local_4c;
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
  piVar4 = (int *)0x0;
  if (piVar1 != (int *)0x0) {
    this = ObjectRegistry_GetGlobal();
    piVar4 = (int *)0x0;
    if (this != (void *)0x0) {
      puVar2 = ObjectRegistry_FindBorrowed(this,CONCAT44(param_2,param_1));
      if (puVar2 != (undefined4 *)0x0) {
        LOCK();
        puVar2[1] = puVar2[1] + 1;
        UNLOCK();
      }
      puVar3 = (undefined4 *)thunk_FUN_00835d40();
      piVar4 = (int *)0x0;
      if (puVar2 != (undefined4 *)0x0) {
        local_44 = puVar3;
        if (puVar3 != (undefined4 *)0x0) {
          local_40 = 0;
          local_3c = 0;
          local_38 = 0;
          local_4c = (void *)0x0;
          local_48 = (undefined4 *)0x0;
          local_34 = "Routing/AddDiscourageFootprint";
          (**(code **)(*piVar1 + 0x78))(*param_3,&local_4c,&local_48);
          if (0 < param_4) {
            iVar6 = 0;
            do {
              local_34 = *(char **)(iVar6 + 8 + unaff_EBX);
              local_3c = *(undefined4 *)(iVar6 + unaff_EBX);
              local_38 = *(undefined4 *)(iVar6 + 4 + unaff_EBX);
              uStack_30 = local_3c;
              uStack_2c = local_3c;
              uStack_28 = local_38;
              pcStack_24 = local_34;
              uStack_20 = local_3c;
              if (local_48 < local_44) {
                puVar3 = local_48 + 4;
                if (local_48 != (undefined4 *)0x0) {
                  *local_48 = local_3c;
                  local_48[1] = local_38;
                  local_48[2] = local_34;
                  local_48[3] = local_3c;
                  local_48 = local_48 + 4;
                  goto LAB_0075dcea;
                }
              }
              else {
                FUN_005cf970(&local_4c,local_48,&uStack_2c);
LAB_0075dcea:
                puVar3 = local_48;
              }
              local_48 = puVar3;
              iVar6 = iVar6 + 0xc;
              param_4 = param_4 + -1;
            } while (param_4 != 0);
            puVar3 = puStack_50;
          }
          uVar5 = FUN_00833eb0(puVar3,puVar2,(int *)&local_4c,param_5,param_6,param_7);
          if (local_4c != (void *)0x0) {
            Memory_FreeIfNonNull(local_4c);
          }
          piVar4 = puVar2 + 1;
          LOCK();
          iVar6 = *piVar4;
          *piVar4 = *piVar4 + -1;
          UNLOCK();
          if (iVar6 == 1) {
            LOCK();
            *piVar4 = 1;
            UNLOCK();
            piVar4 = (int *)(**(code **)*puVar2)(1);
          }
          return CONCAT31((int3)((uint)piVar4 >> 8),(char)uVar5);
        }
        piVar4 = puVar2 + 1;
        LOCK();
        iVar6 = *piVar4;
        *piVar4 = *piVar4 + -1;
        UNLOCK();
        if (iVar6 == 1) {
          LOCK();
          *piVar4 = 1;
          UNLOCK();
          piVar4 = (int *)(**(code **)*puVar2)(1);
        }
      }
    }
  }
  return (uint)piVar4 & 0xffffff00;
}

