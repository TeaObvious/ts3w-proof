/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_GetFeaturedItemsListImpl. Export
   ordinal(s): 1191. Entry VA: 0x102bfb30. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A98. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UserToolUtils_GetFeaturedItemsListImpl(undefined4 param_1)

{
  void *this;
  int *piVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uStack_38;
  int *piStack_34;
  int iStack_30;
  int iStack_2c;
  undefined4 uStack_28;
  char *pcStack_24;
  undefined **appuStack_20 [2];
  ushort uStack_18;
  undefined2 uStack_16;
  
  this = DAT_10c70534;
  if (DAT_10c70534 != (void *)0x0) {
    uStack_38 = 0;
    piStack_34 = (int *)FUN_1055b120();
    if (piStack_34 != (int *)0x0) {
      iStack_30 = 0;
      iStack_2c = 0;
      uStack_28 = 0;
      pcStack_24 = "Scratch/UserToolHost/FeaturedItems";
      FUN_10267e50(this,param_1,&iStack_30);
      uVar3 = iStack_2c - iStack_30 >> 3;
      piVar1 = FUN_1091b810(DAT_10cabc54,uVar3 * 8,0);
      if (piVar1 != (int *)0x0) {
        uVar2 = 0;
        if (uVar3 != 0) {
          do {
            piVar1[uVar2 * 2] = *(int *)(iStack_30 + uVar2 * 8);
            piVar1[uVar2 * 2 + 1] = *(int *)(iStack_30 + 4 + uVar2 * 8);
            uVar2 = uVar2 + 1;
          } while (uVar2 < uVar3);
        }
        appuStack_20[0] = &PTR_FUN_10aca5b4;
        uStack_18 = 0;
        uStack_16 = 0;
        if (uVar3 == 0) {
          uVar3 = 0;
          uVar2 = 0x20;
        }
        else {
          uVar2 = 0x18;
        }
        FUN_10928b90(appuStack_20,0xc,uVar2,piVar1,8,uVar3);
        (**(code **)(*piStack_34 + 0x50))(appuStack_20,&uStack_38);
        FUN_1091a760(DAT_10cabc54,(int)piVar1);
        appuStack_20[0] = &PTR_FUN_10aca5b4;
        if ((uStack_18 & 4) != 0) {
          FUN_10928a90(appuStack_20,'\0');
        }
      }
      if (iStack_30 != 0) {
        FUN_10918e90(iStack_30);
      }
    }
    return uStack_38;
  }
  return 0;
}

