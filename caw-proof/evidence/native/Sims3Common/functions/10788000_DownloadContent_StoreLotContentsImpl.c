/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_StoreLotContentsImpl. Export
   ordinal(s): 413. Entry VA: 0x10788000. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001183. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

longlong __cdecl
DownloadContent_StoreLotContentsImpl
          (undefined4 param_1,undefined4 param_2,uint param_3,uint param_4)

{
  void *this;
  char cVar1;
  byte bVar2;
  byte bVar3;
  int *piVar4;
  undefined4 uVar5;
  longlong lVar6;
  undefined1 *puVar7;
  char **ppcVar8;
  char *local_d8;
  undefined1 local_d4 [8];
  int local_cc;
  char acStack_c8 [24];
  int aiStack_b0 [3];
  undefined1 local_a4 [4];
  longlong lStack_a0;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined1 auStack_90 [136];
  int iStack_8;
  int iStack_4;
  
                    /* 0x788000  413  DownloadContent_StoreLotContentsImpl */
  piVar4 = (int *)FUN_1055b120();
  local_d8 = "Scratch/DownloadContent/IndexedKeyList";
  FUN_10727810(&local_cc,&local_d8);
  uVar5 = FUN_10784010(piVar4,param_3);
  if ((char)uVar5 == '\0') {
    if (local_cc != 0) {
      FUN_10918e90(local_cc);
    }
    return 0;
  }
  local_d8 = "Scratch/DownloadContent/ObjectIdList";
  FUN_10727810(local_a4,&local_d8);
  ppcVar8 = &local_d8;
  puVar7 = local_d4;
  (**(code **)(*piVar4 + 0x68))(param_4);
  if (0 < (int)puVar7) {
    FUN_107a2c60(aiStack_b0,ppcVar8,(int)(ppcVar8 + (int)puVar7 * 2));
  }
  this = DAT_10c6e9d8;
  if (DAT_10c6e9d8 == (void *)0x0) {
    if (aiStack_b0[0] != 0) {
      FUN_10918e90(aiStack_b0[0]);
    }
    if (local_d8 != (char *)0x0) {
      FUN_10918e90((int)local_d8);
    }
    return 0;
  }
  FUN_105ca870((undefined4 *)acStack_c8);
  lVar6 = FUN_1009b750(this,iStack_8,iStack_4,acStack_c8,aiStack_b0,param_3,param_4);
  if (lVar6 != 0) {
    FUN_105c9b50(auStack_90,0);
    uVar5 = FUN_1078e350(&local_d8,auStack_90);
    if ((char)uVar5 != '\0') {
      uStack_98 = 0x94ec4b54;
      uStack_94 = 0;
      lStack_a0 = lVar6;
      cVar1 = FUN_105cb380(acStack_c8,&lStack_a0,'\x01');
      if (cVar1 != '\0') {
        FUN_1006ca00(acStack_c8);
        bVar2 = FUN_10784080(piVar4,param_2);
        FUN_105cb330((int)acStack_c8);
        FUN_1006ca40(acStack_c8);
        bVar3 = FUN_105cb8c0(&local_d8,(int)acStack_c8);
        FUN_105ca9e0((int)acStack_c8);
        if ((bVar2 & 1 & bVar3) != 0) {
          FUN_105c9800((int)auStack_90);
          FUN_105ca900((int)acStack_c8);
          if (aiStack_b0[0] != 0) {
            FUN_10918e90(aiStack_b0[0]);
          }
          if (local_d8 != (char *)0x0) {
            FUN_10918e90((int)local_d8);
          }
          return lVar6;
        }
      }
    }
    FUN_105c9800((int)auStack_90);
  }
  FUN_105ca900((int)acStack_c8);
  if (aiStack_b0[0] != 0) {
    FUN_10918e90(aiStack_b0[0]);
  }
  if (local_d8 != (char *)0x0) {
    FUN_10918e90((int)local_d8);
  }
  return 0;
}

