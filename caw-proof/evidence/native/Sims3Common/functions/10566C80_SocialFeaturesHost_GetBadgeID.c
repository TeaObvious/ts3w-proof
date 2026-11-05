/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetBadgeID. Export ordinal(s):
   812. Entry VA: 0x10566c80. Original managed P/Invoke MethodDef(s): ScriptCore:0x060008ED. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SocialFeaturesHost_GetBadgeID(int param_1)

{
  LPCWSTR pWVar1;
  int *piVar2;
  void *pvVar3;
  undefined4 uStack_34;
  int aiStack_30 [2];
  int iStack_28;
  undefined **appuStack_20 [2];
  ushort uStack_18;
  undefined2 uStack_16;
  
  pWVar1 = (LPCWSTR)FUN_1080f820(param_1);
  uStack_34 = 0;
  piVar2 = (int *)FUN_1055b120();
  if ((piVar2 != (int *)0x0) && (pWVar1 != (LPCWSTR)0x0)) {
    pvVar3 = FUN_10926db0(aiStack_30,pWVar1,0xffffffff,(char *)0x0);
    appuStack_20[0] = &PTR_FUN_10aca5b4;
    uStack_16 = 0x13;
    uStack_18 = 0xb;
    FUN_10928b90(appuStack_20,0x13,9,pvVar3,0x10,1);
    if ((2 < (int)(iStack_28 - aiStack_30[0] & 0xfffffffeU)) && (aiStack_30[0] != 0)) {
      FUN_10918e90(aiStack_30[0]);
    }
    (**(code **)(*piVar2 + 0x50))(appuStack_20,&uStack_34);
    appuStack_20[0] = &PTR_FUN_10aca5b4;
    if ((uStack_18 & 4) != 0) {
      FUN_10928a90(appuStack_20,'\0');
    }
  }
  return uStack_34;
}

