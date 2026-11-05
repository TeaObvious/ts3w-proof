/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011636f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetFogAreaEffect [assembly=ScriptCore token=0x060007E3; objId:
   System.UInt64, fogNearPlane: System.Single, fogFarPlane: System.Single, startRadius:
   System.Single, endRadius: System.Single, startTime: System.Single, endTime: System.Single;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectSetFogAreaEffect
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,float param_5
          ,float param_6,undefined4 param_7,undefined4 param_8)

{
  undefined4 uVar1;
  void *pvVar2;
  undefined4 *puVar3;
  float *pfVar4;
  undefined4 *puVar5;
  undefined1 local_7c [12];
  undefined4 local_70 [4];
  byte local_60 [4];
  undefined **local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  
  if ((param_5 < DAT_01163224) || (param_6 < DAT_01163224)) {
    local_60[0] = 0xb3;
    local_60[1] = 99;
    local_60[2] = 0x9b;
    local_60[3] = 9;
    local_58 = param_1;
    local_54 = param_2;
    local_5c = &PTR_PTR_01163dd4;
    local_50 = 0;
    local_4c = 0;
    local_48 = 0;
    local_30 = 0;
    local_34 = 0;
    local_38 = 0;
    local_3c = 0;
    local_40 = 0;
    local_44 = 0;
    RenderCommand_EnqueueIfDispatcherExists(local_60);
    if (local_5c != (undefined **)0x0) {
      (**(code **)*local_5c)(&local_50);
    }
  }
  else {
    pvVar2 = ObjectRegistry_GetGlobal();
    if (pvVar2 != (void *)0x0) {
      pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
      if (pvVar2 != (void *)0x0) {
        pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011ea158);
        if (pvVar2 != (void *)0x0) {
          local_60[0] = 0xb3;
          local_60[1] = 99;
          local_60[2] = 0x9b;
          local_60[3] = 9;
          local_5c = (undefined **)0x0;
          local_58 = param_1;
          local_54 = param_2;
          puVar3 = (undefined4 *)FUN_0078eb70((int)local_60);
          pfVar4 = TransformComponent_GetWorldPosition(pvVar2,local_70);
          puVar5 = (undefined4 *)FUN_00693430(local_7c,pfVar4);
          *puVar3 = *puVar5;
          puVar3[1] = puVar5[1];
          uVar1 = puVar5[2];
          puVar3[3] = param_3;
          puVar3[2] = uVar1;
          puVar3[4] = param_4;
          puVar3[5] = param_5;
          puVar3[6] = param_6;
          puVar3[7] = param_7;
          puVar3[8] = param_8;
          RenderCommand_EnqueueIfDispatcherExists(local_60);
          FUN_00582a70((int)local_60);
          return;
        }
      }
    }
  }
  return;
}

