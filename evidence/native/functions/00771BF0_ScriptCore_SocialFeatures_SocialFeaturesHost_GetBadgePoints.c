/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00771c8d) */
/* WARNING: Removing unreachable block (ram,0x00771c91) */
/* Verified PC 1.67 registration table at 0x011625a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgePoints [assembly=ScriptCore
   token=0x06000AC6; badgeID: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_SocialFeatures__SocialFeaturesHost_GetBadgePoints(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 auStack_1c [2];
  void *apvStack_14 [2];
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  puVar3 = Utf_ConvertWideSpanToByteStorage(apvStack_14,pWVar2,0xffffffff,(char *)0x0);
  if (puVar3 != auStack_1c + -2) {
    FUN_00405910(auStack_1c + -2,(void *)*puVar3,(undefined1 *)puVar3[1]);
  }
  if ((1 < iStack_c - (int)apvStack_14[0]) && (apvStack_14[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(apvStack_14[0]);
  }
  uVar4 = FUN_00a249c0(&DAT_011c8e54);
  return uVar4;
}

