/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x007713b5) */
/* WARNING: Removing unreachable block (ram,0x007713b9) */
/* Verified PC 1.67 registration table at 0x01162440 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_SendPost [assembly=ScriptCore token=0x06000A83;
   nucleusID: System.Int64, text: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_SendPost
          (int param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  int unaff_retaddr;
  undefined4 auStack_1c [2];
  void *apvStack_14 [2];
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_3);
  puVar3 = Utf_ConvertWideSpanToByteStorage(apvStack_14,pWVar2,0xffffffff,(char *)0x0);
  if (puVar3 != auStack_1c + -2) {
    FUN_00405910(auStack_1c + -2,(void *)*puVar3,(undefined1 *)puVar3[1]);
  }
  if ((1 < iStack_c - (int)apvStack_14[0]) && (apvStack_14[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(apvStack_14[0]);
  }
  uVar4 = FUN_00a237b0(unaff_retaddr,param_1,&DAT_011c8e54);
  return uVar4;
}

