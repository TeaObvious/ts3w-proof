/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_GetCookieValueByKey. Export
   ordinal(s): 497. Entry VA: 0x10539b40. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600059A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 * __cdecl OnlineFeaturesHost_GetCookieValueByKey(int param_1)

{
  int *piVar1;
  void *pvVar2;
  int unaff_ESI;
  undefined1 *puVar3;
  undefined1 auStack_44 [4];
  undefined *puStack_40;
  undefined *puStack_3c;
  undefined *puStack_38;
  char *pcStack_34;
  int aiStack_30 [2];
  undefined **appuStack_28 [2];
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  piVar1 = (int *)FUN_1055b120();
  puStack_40 = &_Dst_10ca8244;
  puStack_3c = &_Dst_10ca8244;
  pcStack_34 = "Services/OnlineFeaturesHost";
  puStack_38 = &DAT_10ca8245;
  if ((DAT_10c788dc != 0) && (DAT_10c788dc != 8)) {
    FUN_10537b70(*(void **)(DAT_10c788dc + 0x114),param_1,&puStack_40);
  }
  pvVar2 = FUN_10926ef0(aiStack_30,&puStack_40);
  appuStack_20[0] = &PTR_FUN_10aca5b4;
  uStack_16 = 0x13;
  uStack_18 = 0xb;
  FUN_10928b90(appuStack_20,0x13,9,pvVar2,0x10,1);
  if ((2 < (int)((int)appuStack_28[0] - aiStack_30[0] & 0xfffffffeU)) && (aiStack_30[0] != 0)) {
    FUN_10918e90(aiStack_30[0]);
  }
  puVar3 = auStack_44;
  (**(code **)(*piVar1 + 0x50))(appuStack_20);
  appuStack_28[0] = &PTR_FUN_10aca5b4;
  if (((uint)appuStack_20[0] & 4) != 0) {
    FUN_10928a90(appuStack_28,'\0');
  }
  if ((1 < (int)puStack_40 - unaff_ESI) && (unaff_ESI != 0)) {
    FUN_10918e90(unaff_ESI);
  }
  return puVar3;
}

