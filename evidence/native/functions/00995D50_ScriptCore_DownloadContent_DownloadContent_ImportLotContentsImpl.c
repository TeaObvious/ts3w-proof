/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181678 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_ImportLotContentsImpl [assembly=ScriptCore
   token=0x060000A3; id: System.UInt64, lotId: System.UInt64, rot: System.UInt16&, pos:
   System.UInt16&, pKeyTable: System.Byte[]&, pIdTable: System.UInt64[]&, pScriptData:
   System.Byte[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 supplied lot identity/import counterpart): Registered
   ScriptCore.DownloadContent hook identity and pristine managed metadata retained; no hook rename.
   Physical cdecl nine DWORD stack slots: contentID low/high, destinationLotID low/high, UInt16
   rotation/position references, key/objectID/script output handles. Plain RET, caller cleanup; only
   AL Boolean status. Ninth incoming slot+24hex is physically MOV ECX,[ESP+84hex] at995EBA after
   frame+60hex;995EC5 PUSH ECX,995EC6 SUB EAX,ESI,995EC8 PUSH EAX,995EC9 PUSH EDX,995ECA PUSH
   EBP,995ECB CALL994FF0,995ED0 ADD ESP,10hex. This supplies scriptOut to
   Inventory_CopyScriptTail(host,stream,byteCount,scriptOut); former in_stack_00000024 was a missing
   prototype argument, not an extra local. Require global content manager, call AD4180 with supplied
   IDs and rotation/position pointers, then open94EC4B54/group0 at contentID, read key-vector/tail
   and publish managed output arrays through existing host helpers. False branches cleanup; final AL
   is preserved key-vector read status AND1, not unconditional success. Upper return bits and
   indirect host stack expressions are artifacts. This concrete import path is distinct from current
   curated SHA256 signatures/path caches/fuzzy scores, without asserting global absence of original
   hashing/matching. */

byte __cdecl
ScriptCore.DownloadContent::DownloadContent_ImportLotContentsImpl
          (uint contentIdLow,uint contentIdHigh,uint destinationLotIdLow,uint destinationLotIdHigh,
          ushort *rotation,ushort *position,void *outKeyTable,void *outObjectIds,void *outScriptData
          )

{
  void *this;
  byte bVar1;
  bool bVar2;
  byte bVar3;
  int *host;
  int offset;
  undefined4 uVar4;
  uint local_50;
  char *local_4c;
  void *local_48 [4];
  void *local_38 [4];
  uint local_28;
  uint local_24;
  undefined4 local_20;
  undefined4 local_1c;
  int *local_18 [2];
  undefined *local_10;
  uint local_8;
  
  host = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = DAT_011ec4f8;
  if (DAT_011ec4f8 == (void *)0x0) {
    return 0;
  }
  local_4c = "Scratch/LotExport/ObjectIdList";
  FUN_007d9500(local_48,&local_4c);
  FUN_007d7900(local_18);
  bVar1 = ContentManager_ImportContentIntoLot
                    (this,contentIdLow,contentIdHigh,destinationLotIdLow,destinationLotIdHigh,
                     rotation,position,local_18,local_48);
  if (bVar1 != 0) {
    local_28 = contentIdLow;
    local_24 = contentIdHigh;
    local_20 = 0x94ec4b54;
    local_1c = 0;
    bVar2 = ResourceStreamContext_OpenWrite(local_18,&local_28,0);
    if (bVar2) {
      bVar2 = Stream_ReadUInt32(local_10,&local_50,local_8);
      StreamReader_AccumulateStatus(local_18,bVar2);
      offset = StreamContext_GetPositionAndMarkNegative(local_18);
      StreamContext_SeekWithSignedAbsoluteGuard(local_18,local_50,0);
      local_4c = "Scratch/LotExport/ResourceKeyList";
      FUN_007d9500(local_38,&local_4c);
      bVar1 = StreamContext_ReadResourceKeyVector(local_38,local_18);
      uVar4 = FUN_0099a9f0((int *)local_38,local_18[0]);
      if ((char)uVar4 == '\0') {
        if (local_38[0] != (void *)0x0) {
          Memory_FreeIfNonNull(local_38[0]);
        }
        StreamReader_ReleaseAuxiliary(local_18);
        if (local_48[0] == (void *)0x0) {
          return 0;
        }
        Memory_FreeIfNonNull(local_48[0]);
        return 0;
      }
      StreamContext_SeekWithSignedAbsoluteGuard(local_18,offset,0);
      bVar3 = Inventory_CopyScriptTail((undefined *)host,local_10,local_50 - offset,outScriptData);
      if (bVar3 == 0) {
        if (local_38[0] != (void *)0x0) {
          Memory_FreeIfNonNull(local_38[0]);
        }
        StreamReader_ReleaseAuxiliary(local_18);
        if (local_48[0] == (void *)0x0) {
          return 0;
        }
        Memory_FreeIfNonNull(local_48[0]);
        return 0;
      }
      uVar4 = FUN_00995750(host,(int *)local_38,outKeyTable);
      if ((char)uVar4 == '\0') {
        if (local_38[0] != (void *)0x0) {
          Memory_FreeIfNonNull(local_38[0]);
        }
        StreamReader_ReleaseAuxiliary(local_18);
        if (local_48[0] == (void *)0x0) {
          return 0;
        }
        Memory_FreeIfNonNull(local_48[0]);
        return 0;
      }
      uVar4 = FUN_00995830(host,(int *)local_48,outObjectIds);
      if ((char)uVar4 != '\0') {
        ResourceStreamContext_Close(local_18);
        if (local_38[0] != (void *)0x0) {
          Memory_FreeIfNonNull(local_38[0]);
        }
        StreamReader_ReleaseAuxiliary(local_18);
        if (local_48[0] != (void *)0x0) {
          Memory_FreeIfNonNull(local_48[0]);
        }
        return bVar1 & 1;
      }
      if (local_38[0] != (void *)0x0) {
        Memory_FreeIfNonNull(local_38[0]);
      }
    }
  }
  StreamReader_ReleaseAuxiliary(local_18);
  if (local_48[0] != (void *)0x0) {
    Memory_FreeIfNonNull(local_48[0]);
  }
  return 0;
}

