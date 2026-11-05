/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181660 (TS3W.exe PC1.67 identity recorded centrally).
   ScriptCore.DownloadContent::DownloadContent_ImportInventoryImpl [assembly=ScriptCore
   token=0x0600009C; id: System.UInt64, pKeyTable: System.Byte[]&, pIdTable: System.UInt64[]&,
   pScriptData: System.Byte[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 SACS migration contract): Original managed binding entry; five physical
   stack words:64-bit content id plus three output references. Four UInt32 offsets, save post-header
   stream position, seek/read key vectors and UInt64 IDs, seek back to object state, import live
   objects, remap local keys, then seek script tail and copy length-minus-offset into managed
   output. AL success only; high EAX bits incidental. All stages required before output success, not
   merely metadata parsing. */

byte __cdecl
ScriptCore.DownloadContent::DownloadContent_ImportInventoryImpl
          (ulonglong contentId,undefined *keyOutput,undefined *idOutput,undefined *scriptOutput)

{
  char cVar1;
  bool bVar2;
  byte bVar3;
  int *host;
  void *pvVar4;
  int iVar5;
  undefined4 uVar6;
  uint local_5c;
  uint local_58;
  char *local_54;
  uint local_50;
  uint local_4c;
  void *local_48 [4];
  void *local_38 [4];
  void *local_28 [4];
  int *local_18 [2];
  int *local_10;
  uint local_8;
  char local_4;
  
  host = (int *)GetGlobalInterfacePointer_11D5BBC();
  pvVar4 = DownloadContent_GetOwnerFromGlobalLink();
  FUN_00982c40((int)pvVar4);
  FUN_007d7900(local_18);
  cVar1 = FUN_009aff40((undefined4)contentId,contentId._4_4_,local_18);
  if (cVar1 != '\0') {
    bVar2 = Stream_ReadUInt32(local_10,&local_58,local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    bVar2 = Stream_ReadUInt32(local_10,&local_50,local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    bVar2 = Stream_ReadUInt32(local_10,&local_4c,local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    bVar2 = Stream_ReadUInt32(local_10,&local_5c,local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    if (local_4 != '\0') {
      iVar5 = StreamContext_GetPositionAndMarkNegative(local_18);
      StreamContext_SeekWithSignedAbsoluteGuard(local_18,local_58,0);
      local_54 = "Scratch/DownloadContent/IndexedKeyList";
      FUN_007d9500(local_48,&local_54);
      cVar1 = StreamContext_ReadResourceKeyVector(local_48,local_18);
      if (cVar1 != '\0') {
        StreamContext_SeekWithSignedAbsoluteGuard(local_18,local_50,0);
        local_54 = "Scratch/DownloadContent/LocalIndexedKeyList";
        FUN_007d9500(local_38,&local_54);
        cVar1 = StreamContext_ReadResourceKeyVector(local_38,local_18);
        if (cVar1 == '\0') {
          if (local_38[0] != (void *)0x0) {
            Memory_FreeIfNonNull(local_38[0]);
          }
        }
        else {
          StreamContext_SeekWithSignedAbsoluteGuard(local_18,local_4c,0);
          local_54 = "Scratch/DownloadContent/ObjectIdList";
          FUN_007d9500(local_28,&local_54);
          cVar1 = Inventory_ReadObjectIdVector(local_28,local_18);
          if (cVar1 == '\0') {
            if (local_28[0] != (void *)0x0) {
              Memory_FreeIfNonNull(local_28[0]);
            }
            if (local_38[0] != (void *)0x0) {
              Memory_FreeIfNonNull(local_38[0]);
            }
          }
          else {
            StreamContext_SeekWithSignedAbsoluteGuard(local_18,iVar5,0);
            pvVar4 = ObjectRegistry_GetGlobal();
            iVar5 = Inventory_ImportObjectRecords
                              (pvVar4,local_18,(int *)local_48,local_38,(int *)local_28);
            if (iVar5 == 0) {
              if (local_28[0] != (void *)0x0) {
                Memory_FreeIfNonNull(local_28[0]);
              }
              if (local_38[0] != (void *)0x0) {
                Memory_FreeIfNonNull(local_38[0]);
              }
            }
            else {
              uVar6 = FUN_0099a9f0((int *)local_38,local_18[0]);
              if ((char)uVar6 == '\0') {
                if (local_28[0] != (void *)0x0) {
                  Memory_FreeIfNonNull(local_28[0]);
                }
                if (local_38[0] != (void *)0x0) {
                  Memory_FreeIfNonNull(local_38[0]);
                }
              }
              else {
                StreamContext_SeekWithSignedAbsoluteGuard(local_18,local_5c,0);
                iVar5 = (**(code **)(*local_10 + 0x1c))();
                bVar3 = Inventory_CopyScriptTail
                                  ((undefined *)host,(undefined *)local_10,iVar5 - local_5c,
                                   scriptOutput);
                if (bVar3 == 0) {
                  if (local_28[0] != (void *)0x0) {
                    Memory_FreeIfNonNull(local_28[0]);
                  }
                  if (local_38[0] != (void *)0x0) {
                    Memory_FreeIfNonNull(local_38[0]);
                  }
                }
                else {
                  uVar6 = FUN_00995750(host,(int *)local_48,keyOutput);
                  if ((char)uVar6 == '\0') {
                    if (local_28[0] != (void *)0x0) {
                      Memory_FreeIfNonNull(local_28[0]);
                    }
                    if (local_38[0] != (void *)0x0) {
                      Memory_FreeIfNonNull(local_38[0]);
                    }
                  }
                  else {
                    uVar6 = FUN_00995830(host,(int *)local_28,idOutput);
                    if ((char)uVar6 != '\0') {
                      ResourceStreamContext_Close(local_18);
                      if (local_28[0] != (void *)0x0) {
                        Memory_FreeIfNonNull(local_28[0]);
                      }
                      if (local_38[0] != (void *)0x0) {
                        Memory_FreeIfNonNull(local_38[0]);
                      }
                      if (local_48[0] != (void *)0x0) {
                        Memory_FreeIfNonNull(local_48[0]);
                      }
                      StreamReader_ReleaseAuxiliary(local_18);
                      return 1;
                    }
                    if (local_28[0] != (void *)0x0) {
                      Memory_FreeIfNonNull(local_28[0]);
                    }
                    if (local_38[0] != (void *)0x0) {
                      Memory_FreeIfNonNull(local_38[0]);
                    }
                  }
                }
              }
            }
          }
        }
      }
      if (local_48[0] != (void *)0x0) {
        Memory_FreeIfNonNull(local_48[0]);
      }
    }
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return 0;
}

