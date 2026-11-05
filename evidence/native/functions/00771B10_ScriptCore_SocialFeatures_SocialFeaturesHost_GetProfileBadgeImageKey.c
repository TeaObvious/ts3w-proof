/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00771bd2) */
/* WARNING: Removing unreachable block (ram,0x00771bd6) */
/* Verified PC 1.67 registration table at 0x011626b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeImageKey [assembly=ScriptCore
   token=0x06000AAF; nucleusID: System.Int64, badgeID: System.String;
   return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeImageKey
          (undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int *piVar4;
  LPCWSTR pWVar5;
  undefined4 *puVar6;
  undefined4 *unaff_retaddr;
  undefined4 auStack_1c [2];
  void *apvStack_14 [2];
  int iStack_c;
  
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar4 == (int *)0x0) {
    return param_1;
  }
  pWVar5 = (LPCWSTR)(**(code **)(*piVar4 + 0x58))(param_4);
  puVar6 = Utf_ConvertWideSpanToByteStorage(apvStack_14,pWVar5,0xffffffff,(char *)0x0);
  if (puVar6 != auStack_1c + -2) {
    FUN_00405910(auStack_1c + -2,(void *)*puVar6,(undefined1 *)puVar6[1]);
  }
  if ((1 < iStack_c - (int)apvStack_14[0]) && (apvStack_14[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(apvStack_14[0]);
  }
  puVar6 = FUN_00a256f0(apvStack_14,(int)param_1,param_2,&DAT_011c8e54);
  uVar1 = puVar6[1];
  *unaff_retaddr = *puVar6;
  uVar2 = puVar6[2];
  uVar3 = puVar6[3];
  unaff_retaddr[1] = uVar1;
  unaff_retaddr[2] = uVar2;
  unaff_retaddr[3] = uVar3;
  return unaff_retaddr;
}

