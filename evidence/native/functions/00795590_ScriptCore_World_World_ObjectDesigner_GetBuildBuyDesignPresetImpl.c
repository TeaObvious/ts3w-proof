/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163950 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectDesigner_GetBuildBuyDesignPresetImpl [assembly=ScriptCore
   token=0x0600082E; type: System.UInt32, point: Sims3.SimIFace.Vector3; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_ObjectDesigner_GetBuildBuyDesignPresetImpl
          (undefined4 param_1,undefined1 *param_2,undefined4 param_3,undefined **param_4)

{
  uint uVar1;
  int *piVar2;
  int *unaff_ESI;
  undefined4 uStack_5c;
  int *local_58;
  undefined1 local_54 [4];
  undefined1 *local_50;
  undefined1 *puStack_4c;
  undefined **ppuStack_48;
  char *pcStack_44;
  undefined1 *local_40;
  undefined4 uStack_3c;
  undefined **ppuStack_38;
  undefined1 *puStack_34;
  undefined **local_30 [2];
  undefined2 local_28;
  undefined2 local_26;
  
  ppuStack_48 = param_4;
  pcStack_44 = param_2;
  puStack_4c = (undefined1 *)param_3;
  local_50 = param_2;
  local_40 = param_2;
  uStack_3c = param_3;
  ppuStack_38 = param_4;
  puStack_34 = param_2;
  local_58 = (int *)0x0;
  uVar1 = FUN_00a62630(param_1,(float *)&local_40,(int *)&local_58);
  if ((char)uVar1 == '\0') {
    if (local_58 != (int *)0x0) {
      (**(code **)(*local_58 + 4))();
    }
    return 0;
  }
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_50 = &DAT_011c8e54;
  puStack_4c = &DAT_011c8e54;
  pcStack_44 = "World/WorldHost";
  ppuStack_48 = (undefined **)&DAT_011c8e56;
  FUN_005bfd20(local_58,&local_50);
  if (local_50 == puStack_4c) {
    if ((2 < (int)((int)ppuStack_48 - (int)local_50 & 0xfffffffeU)) &&
       (local_50 != (undefined1 *)0x0)) {
      FUN_004e44e0((int)local_50);
    }
    if (local_58 != (int *)0x0) {
      (**(code **)(*local_58 + 4))();
    }
    return 0;
  }
  local_30[0] = &PTR_FUN_0100886c;
  local_26 = 0x13;
  local_28 = 0xb;
  FUN_004f59c0(local_30,0x13,9,&local_50,0x10,1);
  (**(code **)(*piVar2 + 0x50))(local_30,local_54);
  ppuStack_38 = &PTR_FUN_00fba6f4;
  if (((uint)local_30[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_38,'\0');
  }
  if ((2 < (int)((int)local_50 - (int)local_58 & 0xfffffffeU)) && (local_58 != (int *)0x0)) {
    FUN_004e44e0((int)local_58);
  }
  if (unaff_ESI != (int *)0x0) {
    (**(code **)(*unaff_ESI + 4))();
  }
  return uStack_5c;
}

