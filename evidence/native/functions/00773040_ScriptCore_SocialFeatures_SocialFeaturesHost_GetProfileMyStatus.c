/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162660 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileMyStatus [assembly=ScriptCore
   token=0x06000AA7; nucleusID: System.Int64; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileMyStatus(int param_1,int param_2)

{
  byte *inputBytes;
  int *piVar1;
  void *pvVar2;
  undefined4 local_34;
  void *local_30 [2];
  int local_28;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  
  inputBytes = (byte *)FUN_00a24240(param_1,param_2);
  local_34 = 0;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && (inputBytes != (byte *)0x0)) {
    pvVar2 = EaString_FromUtf8Bytes(local_30,inputBytes,0xffffffff,(byte *)0x0);
    local_20[0] = &PTR_FUN_0100886c;
    local_16 = 0x13;
    local_18 = 0xb;
    FUN_004f59c0(local_20,0x13,9,pvVar2,0x10,1);
    if ((2 < (int)(local_28 - (int)local_30[0] & 0xfffffffeU)) && (local_30[0] != (void *)0x0)) {
      Memory_FreeIfNonNull(local_30[0]);
    }
    (**(code **)(*piVar1 + 0x50))(local_20,&local_34);
    local_20[0] = &PTR_FUN_00fba6f4;
    if ((local_18 & 4) != 0) {
      FUN_004f5760(local_20,'\0');
    }
  }
  return local_34;
}

