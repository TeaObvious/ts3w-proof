/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00771d68) */
/* WARNING: Removing unreachable block (ram,0x00771d6c) */
/* Verified PC 1.67 registration table at 0x01162568 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeImageKey [assembly=ScriptCore
   token=0x06000ABF; badgeID: System.String; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeImageKey
          (undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int *piVar3;
  LPCWSTR pWVar4;
  undefined4 *puVar5;
  undefined4 *unaff_retaddr;
  undefined4 auStack_1c [2];
  void *apvStack_14 [2];
  int iStack_c;
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar3 == (int *)0x0) {
    return param_1;
  }
  pWVar4 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))(param_2);
  puVar5 = Utf_ConvertWideSpanToByteStorage(apvStack_14,pWVar4,0xffffffff,(char *)0x0);
  if (puVar5 != auStack_1c + -2) {
    FUN_00405910(auStack_1c + -2,(void *)*puVar5,(undefined1 *)puVar5[1]);
  }
  if ((1 < iStack_c - (int)apvStack_14[0]) && (apvStack_14[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(apvStack_14[0]);
  }
  puVar5 = FUN_00a25850(apvStack_14,&DAT_011c8e54);
  uVar1 = puVar5[1];
  *unaff_retaddr = *puVar5;
  uVar2 = puVar5[2];
  unaff_retaddr[1] = uVar1;
  uVar1 = puVar5[3];
  unaff_retaddr[2] = uVar2;
  unaff_retaddr[3] = uVar1;
  return unaff_retaddr;
}

