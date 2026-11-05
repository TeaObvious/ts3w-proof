/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_GetProductSetImpl. Export
   ordinal(s): 1205. Entry VA: 0x102c31a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A83. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UserToolUtils_GetProductSetImpl(uint param_1,int param_2)

{
  undefined4 uVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  int iStack_24;
  int iStack_20;
  int *piStack_1c;
  int *piStack_18;
  char *pcStack_14;
  int *piStack_10;
  int *piStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  if ((0x14 < param_1) && (param_1 != 0x17)) {
    return 0;
  }
  if (DAT_10c70534 == (void *)0x0) {
    return 0;
  }
  pcStack_4 = "World/Catalog/ProductVector";
  pcStack_14 = "World/Catalog/ProductVector";
  piVar3 = (int *)0x0;
  piStack_10 = (int *)0x0;
  piStack_c = (int *)0x0;
  uStack_8 = 0;
  iStack_20 = 0;
  piStack_1c = (int *)0x0;
  piStack_18 = (int *)0x0;
  FUN_10267b10(DAT_10c70534,param_1,&piStack_10);
  piVar2 = piStack_10;
  iVar5 = 0;
  if (piStack_10 != piStack_c) {
    do {
      iStack_24 = *piVar2;
      piVar4 = piVar3;
      if (((iStack_24 != 0) && (param_2 != 0)) && (param_2 == *(int *)(iStack_24 + 0x80))) {
        if (piVar3 < piStack_18) {
          piStack_1c = piVar3 + 1;
          piVar4 = piStack_1c;
          if (piVar3 != (int *)0x0) {
            *piVar3 = iStack_24;
          }
        }
        else {
          FUN_105ee480(&iStack_20,piVar3,&iStack_24);
          piVar4 = piStack_1c;
        }
      }
      piVar2 = piVar2 + 1;
      piVar3 = piVar4;
      iVar5 = iStack_20;
    } while (piVar2 != piStack_c);
  }
  uVar1 = FUN_102c2510(&iStack_20,param_1,0);
  if (iVar5 != 0) {
    FUN_10918e90(iVar5);
  }
  if (piStack_10 != (int *)0x0) {
    FUN_10918e90((int)piStack_10);
  }
  return uVar1;
}

