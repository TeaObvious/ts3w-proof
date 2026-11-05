/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetBadgeDescription. Export
   ordinal(s): 809. Entry VA: 0x10566cd0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060008F4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SocialFeaturesHost_GetBadgeDescription(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined ***pppuVar3;
  void *pvVar4;
  undefined *puVar5;
  undefined4 unaff_ESI;
  undefined **ppuVar6;
  undefined **ppuStack_34;
  undefined *puStack_30;
  undefined *puStack_2c;
  char *pcStack_28;
  int aiStack_14 [2];
  int iStack_c;
  
  ppuStack_34 = (undefined **)0x0;
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
    pcStack_28 = "Scripting/ScriptFunctions/SocialFeaturesHost";
    ppuStack_34 = (undefined **)&_Dst_10ca8244;
    puStack_30 = &_Dst_10ca8244;
    puStack_2c = &DAT_10ca8245;
    pppuVar3 = FUN_10926f20(aiStack_14,pWVar2,0xffffffff,(char *)0x0);
    puVar5 = &DAT_10ca8245;
    ppuVar6 = (undefined **)&_Dst_10ca8244;
    if (pppuVar3 != &ppuStack_34) {
      FUN_1000e8a0(&ppuStack_34,*pppuVar3,(undefined1 *)pppuVar3[1]);
      puVar5 = puStack_2c;
      ppuVar6 = ppuStack_34;
    }
    if ((1 < iStack_c - aiStack_14[0]) && (aiStack_14[0] != 0)) {
      FUN_10918e90(aiStack_14[0]);
    }
    pWVar2 = (LPCWSTR)FUN_1080fa10((byte *)ppuVar6);
    if (pWVar2 != (LPCWSTR)0x0) {
      pvVar4 = FUN_10926db0(aiStack_14,pWVar2,0xffffffff,(char *)0x0);
      ppuStack_34 = &PTR_FUN_10aca5b4;
      puStack_2c = (undefined *)0x13000b;
      FUN_10928b90(&ppuStack_34,0x13,9,pvVar4,0x10,1);
      if ((2 < (int)(iStack_c - aiStack_14[0] & 0xfffffffeU)) && (aiStack_14[0] != 0)) {
        FUN_10918e90(aiStack_14[0]);
      }
      (**(code **)(*piVar1 + 0x50))(&ppuStack_34,&stack0xffffffc8);
      ppuStack_34 = &PTR_FUN_10aca5b4;
      if (((uint)puStack_2c & 4) != 0) {
        FUN_10928a90(&ppuStack_34,'\0');
      }
    }
    if ((1 < (int)puVar5 - (int)ppuVar6) && (ppuVar6 != (undefined **)0x0)) {
      FUN_10918e90((int)ppuVar6);
    }
    return unaff_ESI;
  }
  return ppuStack_34;
}

