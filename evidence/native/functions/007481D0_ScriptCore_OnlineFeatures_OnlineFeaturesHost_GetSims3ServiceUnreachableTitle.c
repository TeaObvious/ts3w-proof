/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011615d0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetSims3ServiceUnreachableTitle
   [assembly=ScriptCore token=0x06000639; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetSims3ServiceUnreachableTitle(void)

{
  undefined **allocation;
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 local_34;
  undefined1 *local_30;
  undefined1 *local_2c;
  undefined2 *local_28;
  char *local_24;
  undefined **local_20;
  undefined2 *local_1c;
  uint local_18;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d5068 == 0) {
    iVar3 = 0;
  }
  else {
    iVar3 = DAT_011d5068 + -8;
  }
  local_34 = 0;
  uVar2 = 0;
  if ((piVar1 != (int *)0x0) && (iVar3 != 0)) {
    local_24 = "SIGS/sGetSims3ServicesUnreachableTitle";
    local_30 = &DAT_011c8e54;
    local_2c = &DAT_011c8e54;
    local_28 = &DAT_011c8e56;
    FUN_00408df0(&local_20,(undefined4 *)(iVar3 + 0x18));
    allocation = local_20;
    FUN_00408d60(&local_30,local_20,local_1c);
    if ((2 < (int)(local_18 - (int)allocation & 0xfffffffe)) && (allocation != (undefined **)0x0)) {
      Memory_FreeIfNonNull(allocation);
    }
    if ((local_30 != local_2c) && (((int)local_2c - (int)local_30 & 0xfffffffeU) != 0)) {
      local_20 = &PTR_FUN_00fba6f4;
      local_18 = 0;
      FUN_004f59c0(&local_20,0x13,9,&local_30,0x10,1);
      (**(code **)(*piVar1 + 0x50))(&local_20,&local_34);
      local_20 = &PTR_FUN_00fba6f4;
      if ((local_18 & 4) != 0) {
        FUN_004f5760(&local_20,'\0');
      }
    }
    if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined1 *)0x0))
    {
      Memory_FreeIfNonNull(local_30);
    }
    uVar2 = local_34;
  }
  return uVar2;
}

