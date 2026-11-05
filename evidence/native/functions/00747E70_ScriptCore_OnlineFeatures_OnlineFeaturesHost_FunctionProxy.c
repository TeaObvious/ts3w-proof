/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161578 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_FunctionProxy [assembly=ScriptCore
   token=0x0600062E; fnKey: Sims3Launcher.S3L_FunctionProxyKey; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.OnlineFeatures::OnlineFeaturesHost_FunctionProxy(undefined4 param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined4 local_34;
  void *local_30;
  undefined4 local_2c;
  int local_28;
  char *local_24;
  undefined **local_20 [2];
  uint local_18;
  
  puVar1 = FUN_007470c0(local_20,param_1);
  local_30 = (void *)0x0;
  local_2c = 0;
  local_28 = 0;
  local_24 = "SIGS/sFunctionProxy/tmpVal";
  FUN_0040b590(&local_30,(short *)*puVar1);
  if ((2 < (int)(local_18 - (int)local_20[0] & 0xfffffffe)) && (local_20[0] != (undefined **)0x0)) {
    Memory_FreeIfNonNull(local_20[0]);
  }
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 != (int *)0x0) {
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    FUN_004f59c0(local_20,0x13,9,&local_30,0x10,1);
    (**(code **)(*piVar2 + 0x50))(local_20,&local_34);
    local_20[0] = &PTR_FUN_00fba6f4;
    if ((local_18 & 4) != 0) {
      FUN_004f5760(local_20,'\0');
    }
  }
  if ((2 < (int)(local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (void *)0x0)) {
    Memory_FreeIfNonNull(local_30);
  }
  return local_34;
}

