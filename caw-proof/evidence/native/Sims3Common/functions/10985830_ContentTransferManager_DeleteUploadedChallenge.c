/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentTransferManager_DeleteUploadedChallenge.
   Export ordinal(s): 1792. Entry VA: 0x10985830. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000919. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ContentTransferManager_DeleteUploadedChallenge(undefined4 param_1)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined *local_129c;
  undefined *local_1298;
  undefined *local_1294;
  char *local_1290;
  char local_128c [512];
  undefined **local_108c [7];
  int local_1070;
  undefined1 local_14 [16];
  undefined4 uStack_4;
  
                    /* 0x985830  1792  ContentTransferManager_DeleteUploadedChallenge */
  uStack_4 = 0x1098583a;
  FUN_105befd0(local_108c,2);
  local_129c = &_Dst_10ca8244;
  local_1298 = &_Dst_10ca8244;
  local_108c[0] = &PTR_LAB_10b2892c;
  local_1290 = "SIGS/UploadThread/exchangeAuthToken";
  local_1294 = &DAT_10ca8245;
  if (DAT_10c788dc == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = DAT_10c788dc + -8;
  }
  FUN_10537b70(*(void **)(iVar2 + 0x11c),1,&local_129c);
  if (DAT_10c788dc == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = DAT_10c788dc + -8;
  }
  sprintf(local_128c,"%s/api/dynamicchallenges/delete/%s",*(undefined4 *)(iVar2 + 0xe68),param_1);
  uVar3 = FUN_107dfa20(local_108c,(int)local_128c);
  if ((char)uVar3 != '\0') {
    FUN_107df980(local_14,0x10b403f8,(int)local_129c);
    bVar1 = FUN_107df4a0(local_108c,(int *)0x0,0,0,0);
    if ((bVar1) && (local_1070 == 200)) {
      if ((1 < (int)local_1294 - (int)local_129c) && (local_129c != (undefined *)0x0)) {
        FUN_10918e90((int)local_129c);
      }
      local_108c[0] = &PTR_LAB_10b2892c;
      uVar3 = FUN_105bf070(local_108c);
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
  }
  if ((1 < (int)local_1294 - (int)local_129c) && (local_129c != (undefined *)0x0)) {
    FUN_10918e90((int)local_129c);
  }
  local_108c[0] = &PTR_LAB_10b2892c;
  uVar4 = FUN_105bf070(local_108c);
  return uVar4 & 0xffffff00;
}

