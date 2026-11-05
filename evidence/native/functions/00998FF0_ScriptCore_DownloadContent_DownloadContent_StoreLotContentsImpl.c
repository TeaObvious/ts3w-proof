/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181670 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_StoreLotContentsImpl [assembly=ScriptCore
   token=0x060000A2; lotId: System.UInt64, pKeyTable: System.Byte[], pIdTable: System.UInt64[],
   pScriptData: System.Byte[], exportDateTime: System.Int64; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

longlong ScriptCore_DownloadContent__DownloadContent_StoreLotContentsImpl
                   (undefined4 param_1,undefined4 param_2,uint param_3,uint param_4)

{
  void *this;
  bool bVar1;
  byte bVar2;
  byte bVar3;
  int *piVar4;
  undefined4 uVar5;
  uint arg0;
  uint arg1;
  longlong lVar6;
  undefined1 *puVar7;
  char **ppcVar8;
  char *pcStack_d8;
  undefined1 auStack_d4 [8];
  void *pvStack_cc;
  char acStack_c8 [24];
  void *apvStack_b0 [3];
  undefined1 auStack_a4 [4];
  longlong lStack_a0;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined1 auStack_90 [136];
  int iStack_8;
  int iStack_4;
  
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pcStack_d8 = "Scratch/DownloadContent/IndexedKeyList";
  FUN_007d9500(&pvStack_cc,&pcStack_d8);
  uVar5 = FUN_00994f40(piVar4,param_3);
  if ((char)uVar5 == '\0') {
    if (pvStack_cc != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_cc);
    }
    return 0;
  }
  pcStack_d8 = "Scratch/DownloadContent/ObjectIdList";
  FUN_007d9500(auStack_a4,&pcStack_d8);
  ppcVar8 = &pcStack_d8;
  puVar7 = auStack_d4;
  (**(code **)(*piVar4 + 0x68))(param_4);
  if (0 < (int)puVar7) {
    FUN_007def60(apvStack_b0,ppcVar8,(int)(ppcVar8 + (int)puVar7 * 2));
  }
  this = DAT_011ec4f8;
  if (DAT_011ec4f8 == (void *)0x0) {
    if (apvStack_b0[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_b0[0]);
    }
    if (pcStack_d8 != (char *)0x0) {
      Memory_FreeIfNonNull(pcStack_d8);
    }
    return 0;
  }
  FUN_007d7900((undefined4 *)acStack_c8);
  lVar6 = FUN_00ad4fd0(this,iStack_8,iStack_4,acStack_c8,apvStack_b0,param_3,param_4);
  if (lVar6 != 0) {
    ResourceReferences_ConstructContext(auStack_90,0);
    uVar5 = FUN_0099f220(&pcStack_d8,auStack_90);
    if ((char)uVar5 != '\0') {
      uStack_98 = 0x94ec4b54;
      uStack_94 = 0;
      lStack_a0 = lVar6;
      bVar1 = ResourceStreamContext_OpenWrite(acStack_c8,&lStack_a0,1);
      if (bVar1) {
        arg0 = Stream_BeginSizedBlock(acStack_c8);
        bVar2 = FUN_00994fb0(piVar4,param_2);
        arg1 = StreamContext_GetPositionAndMarkNegative(acStack_c8);
        Stream_BackpatchUInt32(acStack_c8,arg0,arg1);
        bVar3 = FUN_007d8a00(&pcStack_d8,(int)acStack_c8);
        ResourceStreamContext_Close(acStack_c8);
        if ((bVar2 & 1 & bVar3) != 0) {
          FUN_007d6890((int)auStack_90);
          StreamReader_ReleaseAuxiliary(acStack_c8);
          if (apvStack_b0[0] != (void *)0x0) {
            Memory_FreeIfNonNull(apvStack_b0[0]);
          }
          if (pcStack_d8 != (char *)0x0) {
            Memory_FreeIfNonNull(pcStack_d8);
          }
          return lVar6;
        }
      }
    }
    FUN_007d6890((int)auStack_90);
  }
  StreamReader_ReleaseAuxiliary(acStack_c8);
  if (apvStack_b0[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_b0[0]);
  }
  if (pcStack_d8 != (char *)0x0) {
    Memory_FreeIfNonNull(pcStack_d8);
  }
  return 0;
}

