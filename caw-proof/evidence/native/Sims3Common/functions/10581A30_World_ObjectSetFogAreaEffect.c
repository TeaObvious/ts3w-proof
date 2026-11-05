/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectSetFogAreaEffect. Export ordinal(s):
   1542. Entry VA: 0x10581a30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C3B. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
World_ObjectSetFogAreaEffect
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,float param_5
          ,float param_6,undefined4 param_7,undefined4 param_8)

{
  undefined4 uVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined1 local_7c [12];
  undefined4 local_70 [4];
  undefined4 local_60;
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
  
                    /* 0x581a30  1542  World_ObjectSetFogAreaEffect */
  if ((param_5 < DAT_10c3040c) || (param_6 < DAT_10c3040c)) {
    local_60 = 0x99b63b3;
    local_58 = param_1;
    local_54 = param_2;
    local_5c = &PTR_PTR_10c30fbc;
    local_50 = 0;
    local_4c = 0;
    local_48 = 0;
    local_30 = 0;
    local_34 = 0;
    local_38 = 0;
    local_3c = 0;
    local_40 = 0;
    local_44 = 0;
    FUN_10489ee0(&local_60);
    if (local_5c != (undefined **)0x0) {
      (**(code **)*local_5c)(&local_50);
    }
  }
  else {
    iVar2 = FUN_1072a1a0();
    if (iVar2 != 0) {
      pvVar3 = (void *)FUN_1072abb0(iVar2);
      if (pvVar3 != (void *)0x0) {
        pvVar3 = (void *)FUN_10726da0(pvVar3,DAT_10c8d998);
        if (pvVar3 != (void *)0x0) {
          local_60 = 0x99b63b3;
          local_5c = (undefined **)0x0;
          local_58 = param_1;
          local_54 = param_2;
          puVar4 = (undefined4 *)FUN_105809b0((int)&local_60);
          puVar5 = (undefined4 *)FUN_1074a2b0(pvVar3,local_70);
          puVar5 = (undefined4 *)FUN_100dd710(local_7c,puVar5);
          *puVar4 = *puVar5;
          puVar4[1] = puVar5[1];
          uVar1 = puVar5[2];
          puVar4[3] = param_3;
          puVar4[2] = uVar1;
          puVar4[4] = param_4;
          puVar4[5] = param_5;
          puVar4[6] = param_6;
          puVar4[7] = param_7;
          puVar4[8] = param_8;
          FUN_10489ee0(&local_60);
          FUN_100a5b00((int)&local_60);
          return;
        }
      }
    }
  }
  return;
}

