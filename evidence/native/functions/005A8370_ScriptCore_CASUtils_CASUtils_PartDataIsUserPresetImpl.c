/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x005a83ca) */
/* WARNING: Removing unreachable block (ram,0x005a83ef) */
/* WARNING: Removing unreachable block (ram,0x005a8403) */
/* WARNING: Removing unreachable block (ram,0x005a8412) */
/* WARNING: Removing unreachable block (ram,0x005a83dc) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01156248 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_PartDataIsUserPresetImpl [assembly=ScriptCore token=0x060002E4;
   partKey: Sims3.SimIFace.ResourceKey, presetId: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool __cdecl
ScriptCore.CASUtils::CASUtils_PartDataIsUserPresetImpl
          (undefined4 param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int *piVar2;
  undefined1 local_14 [4];
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  uint local_4;
  
  piVar2 = (int *)FUN_004afe80();
  ProductPresets_GetGlobalOwner();
  local_10 = param_3;
  local_4 = param_2;
  local_c = param_4;
  local_8 = param_1;
  cVar1 = (**(code **)(*piVar2 + 0xc))(&local_10,local_14);
  if (cVar1 != '\0') {
    (**(code **)(_DAT_00000000 + 4))();
  }
  return false;
}

