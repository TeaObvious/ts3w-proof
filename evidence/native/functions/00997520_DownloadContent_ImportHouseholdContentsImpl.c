/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181770 (TS3W.exe PC1.67 identity recorded centrally).
   ScriptCore.DownloadContent::DownloadContent_ImportHouseholdContentsImpl [assembly=ScriptCore
   token=0x0600009F; id: System.UInt64, pKeyTable: System.Byte[]&, pIdTable: System.UInt64[]&,
   pScriptData: System.Byte[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 SACS migration contract): Registered original bridge,cdecl/plainRET,five
   physical words:64-bit identity plus three managed output-array handles. Reads REFS group00283095,
   exports key list, loads script bytes, creates object-ID output and performs native
   remap/finalization through00AD4920. AL status, upper EAX incidental; inferred pointer types for
   identity halves are wrong. Former one-byte body recovered from original flow with no original
   bytes changed. */

uint DownloadContent_ImportHouseholdContentsImpl
               (ushort *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5)

{
  void *this;
  bool bVar1;
  char cVar2;
  int *piVar3;
  undefined4 uVar4;
  uint extraout_EAX;
  uint extraout_EAX_00;
  uint extraout_EAX_01;
  uint extraout_EAX_02;
  uint extraout_EAX_03;
  uint extraout_EAX_04;
  uint extraout_EAX_05;
  undefined4 extraout_EAX_06;
  char *pcStack_d4;
  undefined4 uStack_d0;
  void *apvStack_cc [4];
  int *apiStack_bc [6];
  void *pvStack_a4;
  int iStack_a0;
  void *apvStack_94 [4];
  undefined1 auStack_84 [132];
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = DAT_011ea6a4;
  FUN_007d7900(apiStack_bc);
  uVar4 = FUN_009a16e0(this,apiStack_bc);
  if ((char)uVar4 == '\0') {
    StreamReader_ReleaseAuxiliary(apiStack_bc);
    return extraout_EAX & 0xffffff00;
  }
  ResourceTableContext_Construct(auStack_84,0);
  bVar1 = ReferenceStore_ReadResource(auStack_84,apiStack_bc,0x283095,CONCAT44(param_2,param_1),0);
  if (!bVar1) {
    FUN_007d6890((int)auStack_84);
    StreamReader_ReleaseAuxiliary(apiStack_bc);
    return extraout_EAX_00 & 0xffffff00;
  }
  pcStack_d4 = "Scratch/DownloadContent/IndexedKeyListImport";
  FUN_007d9500(apvStack_cc,&pcStack_d4);
  FUN_007d7600(auStack_84,(int *)apvStack_cc);
  uVar4 = FUN_0099a9f0((int *)apvStack_cc,apiStack_bc[0]);
  if ((char)uVar4 == '\0') {
    if (apvStack_cc[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_cc[0]);
    }
    FUN_007d6890((int)auStack_84);
    StreamReader_ReleaseAuxiliary(apiStack_bc);
    return extraout_EAX_01 & 0xffffff00;
  }
  uVar4 = FUN_00995750(piVar3,(int *)apvStack_cc,param_3);
  if ((char)uVar4 == '\0') {
    if (apvStack_cc[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_cc[0]);
    }
    FUN_007d6890((int)auStack_84);
    StreamReader_ReleaseAuxiliary(apiStack_bc);
    return extraout_EAX_02 & 0xffffff00;
  }
  FUN_009afbf0(&pvStack_a4);
  cVar2 = FUN_009afc10(&pvStack_a4,apiStack_bc,0,param_1,param_2);
  if (cVar2 == '\0') {
    if (pvStack_a4 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_a4);
    }
    if (apvStack_cc[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_cc[0]);
    }
    FUN_007d6890((int)auStack_84);
    StreamReader_ReleaseAuxiliary(apiStack_bc);
    return extraout_EAX_03 & 0xffffff00;
  }
  uVar4 = FUN_00995070(piVar3,pvStack_a4,iStack_a0 - (int)pvStack_a4,param_5);
  if ((char)uVar4 == '\0') {
    if (pvStack_a4 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_a4);
    }
    if (apvStack_cc[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_cc[0]);
    }
    FUN_007d6890((int)auStack_84);
    StreamReader_ReleaseAuxiliary(apiStack_bc);
    return extraout_EAX_04 & 0xffffff00;
  }
  pcStack_d4 = "Scratch/DownloadContent/ObjectIdList";
  FUN_007d9500(apvStack_94,&pcStack_d4);
  pcStack_d4 = (char *)0x0;
  uStack_d0 = 0;
  FUN_00572500(apvStack_94,&pcStack_d4);
  uVar4 = FUN_00995830(piVar3,(int *)apvStack_94,param_4);
  if ((char)uVar4 == '\0') {
    if (apvStack_94[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_94[0]);
    }
    if (pvStack_a4 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_a4);
    }
    if (apvStack_cc[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_cc[0]);
    }
    FUN_007d6890((int)auStack_84);
    StreamReader_ReleaseAuxiliary(apiStack_bc);
    return extraout_EAX_05 & 0xffffff00;
  }
  FUN_00ad4920(param_1,param_2,(uint *)apiStack_bc);
  if (apvStack_94[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_94[0]);
  }
  if (pvStack_a4 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_a4);
  }
  if (apvStack_cc[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_cc[0]);
  }
  FUN_007d6890((int)auStack_84);
  StreamReader_ReleaseAuxiliary(apiStack_bc);
  return CONCAT31((int3)((uint)extraout_EAX_06 >> 8),1);
}

