/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Restarted to delay deadcode elimination for space: stack */
/* Verified PC 1.67 registration table at 0x01156238 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_PartDataGetPresetImpl [assembly=ScriptCore token=0x060002E9;
   partKey: Sims3.SimIFace.ResourceKey, index: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.CASUtils::CASUtils_PartDataGetPresetImpl
          (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  char cVar1;
  int *piVar2;
  undefined4 uVar3;
  int *piVar4;
  undefined4 unaff_ESI;
  undefined1 *puStack_5c;
  undefined1 *puStack_58;
  undefined1 *puStack_54;
  undefined2 *puStack_50;
  char *pcStack_4c;
  undefined1 local_48 [8];
  undefined **appuStack_40 [2];
  undefined **appuStack_38 [2];
  int local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  uint uStack_4;
  
  pcStack_4c = (char *)0x5ab508;
  piVar2 = (int *)FUN_004afe80();
  pcStack_4c = (char *)0x0;
  local_30 = param_3;
  puStack_50 = (undefined2 *)0x0;
  local_28 = param_1;
  puStack_54 = (undefined1 *)0x0;
  local_2c = param_4;
  puStack_58 = (undefined1 *)0x0;
  puStack_5c = local_48;
  local_24 = param_2;
  cVar1 = (**(code **)(*piVar2 + 0xc))();
  if (cVar1 == '\0') {
    return 0;
  }
  if ((&local_30 == (int *)0x0) ||
     (piVar2 = (int *)(**(code **)(local_30 + 0xc))(0x34c777b), piVar2 == (int *)0x0)) {
    (**(code **)(local_30 + 4))();
    return 0;
  }
  puStack_58 = &DAT_011c8e54;
  puStack_54 = &DAT_011c8e54;
  pcStack_4c = "CAS/CASPartDataResource/Preset";
  puStack_50 = &DAT_011c8e56;
  uVar3 = FUN_005b0440(piVar2,uStack_4,&puStack_58);
  if ((char)uVar3 == '\0') {
    (**(code **)(*piVar2 + 4))();
    if ((2 < (int)((int)puStack_50 - (int)puStack_58 & 0xfffffffeU)) &&
       (puStack_58 != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(puStack_58);
    }
    return 0;
  }
  appuStack_38[0] = &PTR_FUN_0100886c;
  local_30 = 0x13000b;
  FUN_004f59c0(appuStack_38,0x13,9,&puStack_58,0x10,1);
  puStack_5c = (undefined1 *)0x0;
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar4 + 0x50))(appuStack_38,&puStack_5c);
  (**(code **)(*piVar2 + 4))();
  appuStack_40[0] = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_38[0] & 4) != 0) {
    FUN_004f5760(appuStack_40,'\0');
  }
  if ((2 < (int)((int)puStack_58 - (int)&local_30 & 0xfffffffeU)) && (&local_30 != (int *)0x0)) {
    Memory_FreeIfNonNull(&local_30);
  }
  return unaff_ESI;
}

