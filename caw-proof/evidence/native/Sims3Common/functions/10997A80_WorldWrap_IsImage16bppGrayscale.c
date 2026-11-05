/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_IsImage16bppGrayscale. Export
   ordinal(s): 2673. Entry VA: 0x10997a80. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004A8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl WorldWrap_IsImage16bppGrayscale(wchar_t *param_1)

{
  bool bVar1;
  byte bVar2;
  undefined4 uVar3;
  int iVar4;
  undefined1 uVar5;
  int local_240;
  undefined4 local_23c [5];
  int local_228 [138];
  
                    /* 0x997a80  2673  WorldWrap_IsImage16bppGrayscale */
  uVar5 = 0;
  FUN_10910830(local_228,param_1);
  FUN_10910240((int)local_228);
  bVar1 = FUN_10910380(local_228,1,6,1,0);
  if (bVar1) {
    FUN_1087aa60(local_23c);
    bVar2 = FUN_1087aa80(local_23c,local_228);
    if ((bVar2 == 0) || (uVar3 = FUN_1087ad10(local_23c,4), (char)uVar3 == '\0')) {
      FUN_1087acd0(local_23c);
      FUN_10910890(local_228);
      return 0;
    }
    if (local_240 == 1) {
      iVar4 = FUN_1087ab20(local_23c,0);
      if ((((*(int *)(iVar4 + 0x1c) == 0x10) && (*(int *)(iVar4 + 0x43c) == 0x10)) &&
          (*(int *)(iVar4 + 0x438) == 0)) &&
         ((*(int *)(iVar4 + 0x440) == 0 && (*(int *)(iVar4 + 0x444) == 0)))) {
        uVar5 = 1;
      }
      thunk_FUN_1087d1c0(iVar4);
    }
    FUN_1087aae0((int)local_23c);
    FUN_1087acd0(local_23c);
  }
  FUN_10910890(local_228);
  return uVar5;
}

