/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162698 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeName [assembly=ScriptCore
   token=0x06000AB0; nucleusID: System.Int64, badgeID: System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeName
          (int param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined ***pppuVar3;
  byte *inputBytes;
  void *pvVar4;
  undefined *puVar5;
  undefined4 unaff_ESI;
  undefined **allocation;
  int unaff_retaddr;
  undefined **local_34;
  undefined1 *puStack_30;
  undefined *puStack_2c;
  char *pcStack_28;
  void *apvStack_14 [2];
  int iStack_c;
  
  local_34 = (undefined **)0x0;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return local_34;
  }
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_3);
  pcStack_28 = "Scripting/ScriptFunctions/SocialFeaturesHost";
  local_34 = (undefined **)&DAT_011c8e54;
  puStack_30 = &DAT_011c8e54;
  puStack_2c = &DAT_011c8e55;
  pppuVar3 = Utf_ConvertWideSpanToByteStorage(apvStack_14,pWVar2,0xffffffff,(char *)0x0);
  puVar5 = &DAT_011c8e55;
  allocation = (undefined **)&DAT_011c8e54;
  if (pppuVar3 != &local_34) {
    FUN_00405910(&local_34,*pppuVar3,(undefined1 *)pppuVar3[1]);
    puVar5 = puStack_2c;
    allocation = local_34;
  }
  if ((1 < iStack_c - (int)apvStack_14[0]) && (apvStack_14[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(apvStack_14[0]);
  }
  inputBytes = (byte *)FUN_00a244c0(unaff_retaddr,param_1,(byte *)allocation);
  if (inputBytes != (byte *)0x0) {
    pvVar4 = EaString_FromUtf8Bytes(apvStack_14,inputBytes,0xffffffff,(byte *)0x0);
    local_34 = &PTR_FUN_0100886c;
    puStack_2c = (undefined *)0x13000b;
    FUN_004f59c0(&local_34,0x13,9,pvVar4,0x10,1);
    if ((2 < (int)(iStack_c - (int)apvStack_14[0] & 0xfffffffeU)) && (apvStack_14[0] != (void *)0x0)
       ) {
      Memory_FreeIfNonNull(apvStack_14[0]);
    }
    (**(code **)(*piVar1 + 0x50))(&local_34,apvStack_14 + -9);
    local_34 = &PTR_FUN_00fba6f4;
    if (((uint)puStack_2c & 4) != 0) {
      FUN_004f5760(&local_34,'\0');
    }
  }
  if ((1 < (int)puVar5 - (int)allocation) && (allocation != (undefined **)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  return unaff_ESI;
}

