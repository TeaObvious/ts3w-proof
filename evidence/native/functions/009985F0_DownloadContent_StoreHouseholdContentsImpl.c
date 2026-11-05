/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181768 (TS3W.exe PC1.67 identity recorded centrally).
   ScriptCore.DownloadContent::DownloadContent_StoreHouseholdContentsImpl [assembly=ScriptCore
   token=0x0600009E; lotId: System.UInt64, pKeyTable: System.Byte[], pIdTable: System.UInt64[],
   pScriptData: System.Byte[]; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 SACS migration contract): Registered original bridge, cdecl/plainRET, five
   physical words: UInt64 identity low/high plus managed key/object-ID/script array handles. AL
   Boolean only. Builds indexed references, handles object IDs and raw script payload, writes REFS
   group00283095 and versioned script resource via009AFB60, commits through native context and
   releases temporaries. This supports richer inventory/object state than current explicit
   nonempty-object refusal. Former one-byte body recovered from original flow with no overlap or
   byte patch. */

uint DownloadContent_StoreHouseholdContentsImpl
               (int param_1,undefined4 param_2,undefined4 param_3,void *param_4,undefined4 param_5)

{
  char cVar1;
  int *piVar2;
  undefined4 uVar3;
  uint extraout_EAX;
  uint extraout_EAX_00;
  uint extraout_EAX_01;
  uint extraout_EAX_02;
  uint uVar4;
  void *pvVar5;
  undefined4 extraout_EAX_03;
  char *pcStack_124;
  void *apvStack_120 [4];
  int *apiStack_110 [6];
  undefined **ppuStack_f8;
  int iStack_f0;
  undefined4 uStack_ec;
  void *apvStack_e8 [4];
  void *apvStack_d8 [4];
  undefined4 uStack_c8;
  int iStack_c4;
  int iStack_b8;
  undefined1 auStack_9c [24];
  undefined1 auStack_84 [132];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pcStack_124 = "Scratch/DownloadContent/IndexedKeyList";
  FUN_007d9500(apvStack_120,&pcStack_124);
  uVar3 = FUN_00994f40(piVar2,param_3);
  if ((char)uVar3 != '\0') {
    ResourceTableContext_Construct(auStack_84,0);
    uVar3 = FUN_0099f220(apvStack_120,auStack_84);
    pvVar5 = DAT_011ea6a4;
    if ((char)uVar3 != '\0') {
      FUN_007d7900(apiStack_110);
      uVar3 = FUN_009a16e0(pvVar5,apiStack_110);
      if ((char)uVar3 == '\0') {
        StreamReader_ReleaseAuxiliary(apiStack_110);
        FUN_007d6890((int)auStack_84);
        uVar4 = 0;
        if (apvStack_120[0] != (void *)0x0) {
          Memory_FreeIfNonNull(apvStack_120[0]);
          uVar4 = extraout_EAX_00;
        }
        return uVar4 & 0xffffff00;
      }
      ReferenceStore_WriteResource
                (auStack_84,apiStack_110,0x283095,CONCAT44(param_2,param_1),(void *)0x0);
      pcStack_124 = "Scratch/DownloadContent/ObjectIdList";
      FUN_007d9500(apvStack_e8,&pcStack_124);
      uVar3 = FUN_009979d0(piVar2,param_4);
      if ((char)uVar3 == '\0') {
        if (apvStack_e8[0] != (void *)0x0) {
          Memory_FreeIfNonNull(apvStack_e8[0]);
        }
        StreamReader_ReleaseAuxiliary(apiStack_110);
        FUN_007d6890((int)auStack_84);
        uVar4 = 0;
        if (apvStack_120[0] != (void *)0x0) {
          Memory_FreeIfNonNull(apvStack_120[0]);
          return extraout_EAX_01 & 0xffffff00;
        }
      }
      else {
        FUN_004df460(&uStack_c8,0,0,"Scratch/DownloadContent/MemoryStream");
        FUN_004dee40(&uStack_c8,1,1.0);
        StreamReader_Construct(auStack_9c,&uStack_c8,1);
        cVar1 = FUN_00994fb0(piVar2,param_5);
        if (cVar1 != '\0') {
          FUN_009afbf0(apvStack_d8);
          if (iStack_c4 == 0) {
            pvVar5 = (void *)0x0;
          }
          else {
            pvVar5 = *(void **)(iStack_c4 + 8);
          }
          FUN_009afcc0(apvStack_d8,pvVar5,iStack_b8);
          HouseholdScript_WriteVersionedResource(apvStack_d8,apiStack_110,0,param_1,param_2);
          ppuStack_f8 = &PTR_LAB_0104bf20;
          iStack_f0 = param_1;
          uStack_ec = param_2;
          FUN_007d9130(apiStack_110[0],*(int **)(DAT_011edbc4 + 0x84));
          ppuStack_f8 = &PTR_LAB_00fb3ccc;
          if (apvStack_d8[0] != (void *)0x0) {
            Memory_FreeIfNonNull(apvStack_d8[0]);
          }
          StreamReader_ReleaseAuxiliary(auStack_9c);
          FUN_00455b30(&uStack_c8);
          if (apvStack_e8[0] != (void *)0x0) {
            Memory_FreeIfNonNull(apvStack_e8[0]);
          }
          StreamReader_ReleaseAuxiliary(apiStack_110);
          FUN_007d6890((int)auStack_84);
          uVar3 = 0;
          if (apvStack_120[0] != (void *)0x0) {
            Memory_FreeIfNonNull(apvStack_120[0]);
            uVar3 = extraout_EAX_03;
          }
          return CONCAT31((int3)((uint)uVar3 >> 8),1);
        }
        StreamReader_ReleaseAuxiliary(auStack_9c);
        FUN_00455b30(&uStack_c8);
        if (apvStack_e8[0] != (void *)0x0) {
          Memory_FreeIfNonNull(apvStack_e8[0]);
        }
        StreamReader_ReleaseAuxiliary(apiStack_110);
        FUN_007d6890((int)auStack_84);
        uVar4 = 0;
        if (apvStack_120[0] != (void *)0x0) {
          Memory_FreeIfNonNull(apvStack_120[0]);
          uVar4 = extraout_EAX_02;
        }
      }
      return uVar4 & 0xffffff00;
    }
    FUN_007d6890((int)auStack_84);
  }
  uVar4 = 0;
  if (apvStack_120[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_120[0]);
    uVar4 = extraout_EAX;
  }
  return uVar4 & 0xffffff00;
}

