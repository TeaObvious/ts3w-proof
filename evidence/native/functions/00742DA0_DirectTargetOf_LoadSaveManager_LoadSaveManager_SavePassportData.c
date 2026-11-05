/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.LoadSaveManager::LoadSaveManager_SavePassportData at 0x00742eb0, bytes e9ebfeffff.
   This is a static control-flow link from the registered entry; the target may have other callers
   and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Physical XML-wide pointer, uint length
   and profile-wide pointer are three stack arguments although DB projects two. Host slot +58h
   converts string pointers; requires manager and nonempty XML, then calls 00AAEC80 with
   XML/length/profile. Failure path clears EAX after conversion checks. Called backend persistence
   policy is not established here. */

int __cdecl
DirectTargetOf_LoadSaveManager_LoadSaveManager_SavePassportData
          (undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  short *psVar2;
  wint_t *pwVar3;
  int iVar4;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  this = (void *)FUN_00aa99c0();
  if (this == (void *)0x0) {
    return 0;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((psVar2 != (short *)0x0) && (*psVar2 != 0)) {
    pwVar3 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_2);
    if (*psVar2 != 0) {
      iVar4 = FUN_00aaec80(this,psVar2,unaff_retaddr,pwVar3);
      return iVar4;
    }
  }
  return 0;
}

