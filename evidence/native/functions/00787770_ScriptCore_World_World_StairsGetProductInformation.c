/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163720 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_StairsGetProductInformation [assembly=ScriptCore token=0x060007E8;
   worldPositionOfStairs: Sims3.SimIFace.Vector3, stairProductKey: Sims3.SimIFace.ResourceKey&,
   presetKey: Sims3.SimIFace.ResourceKey&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_StairsGetProductInformation
          (float param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
          undefined4 *param_5)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 *puVar3;
  undefined4 *local_5c;
  int local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  float local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  float fStack_24;
  undefined4 local_20 [7];
  
  local_50 = 0;
  local_4c = 0;
  local_48 = 0;
  local_44 = 0;
  local_40 = 0;
  local_3c = 0;
  local_38 = 0;
  local_34 = 0;
  local_30 = param_1;
  uStack_2c = param_2;
  uStack_28 = param_3;
  fStack_24 = param_1;
  uVar1 = FUN_00afdff0(&local_30,&local_58,&local_54);
  if ((char)uVar1 != '\0') {
    local_5c = (undefined4 *)0x0;
    uVar2 = FUN_00b18020(*(void **)(local_58 + 0x2b4),local_54,(int *)&local_5c);
    if ((char)uVar2 != '\0') {
      local_50 = *local_5c;
      local_4c = local_5c[1];
      local_48 = local_5c[2];
      local_44 = local_5c[3];
      local_40 = local_5c[0xc];
      local_3c = local_5c[0xd];
      local_38 = local_5c[0xe];
      local_34 = local_5c[0xf];
    }
  }
  puVar3 = (undefined4 *)FUN_0076bfd0(local_20,&local_50);
  *param_4 = *puVar3;
  param_4[1] = puVar3[1];
  param_4[2] = puVar3[2];
  param_4[3] = puVar3[3];
  puVar3 = (undefined4 *)FUN_0076bfd0(local_20,&local_40);
  *param_5 = *puVar3;
  param_5[1] = puVar3[1];
  param_5[2] = puVar3[2];
  param_5[3] = puVar3[3];
  return;
}

