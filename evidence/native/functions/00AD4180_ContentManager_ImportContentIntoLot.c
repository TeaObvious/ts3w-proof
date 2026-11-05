/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 supplied lot identity/import counterpart): Analyst role, not recovered
   symbol. ECX content manager plus eight DWORD stack words, RET20hex; only AL Boolean result.
   C03D70 searches contentID in tree at+14 and compares output node against sentinel this+18. C03D70
   physically returns output iterator address in EAX (C03DC5/C03DCF); its existing void prototype
   produces extraout_EAX artifact here, not uninitialized machine behavior. Do not infer new tree
   key semantics beyond selected existing full lookup. Acquire stream context, resolve supplied
   destination GUID via C62810 with null counter, open0611B0E7/group0 at supplied contentID and read
   objectID vector; close before status-gated ACD610 on resolved lot. Null manager lookup/typed
   destination/read status produces false. Supplied identity/resource path is not current heuristic
   correspondence score; placement and manager/object child semantics remain their own authorities.
    */

byte __thiscall
ContentManager_ImportContentIntoLot
          (void *this,uint contentIdLow,uint contentIdHigh,uint destinationLotIdLow,
          uint destinationLotIdHigh,ushort *rotation,ushort *position,void *streamContext,
          void *objectIdVector)

{
  void *pvVar1;
  uint contentIdLow_00;
  void *this_00;
  bool bVar2;
  char cVar3;
  byte bVar4;
  int *extraout_EAX;
  undefined4 uVar5;
  undefined1 local_14 [4];
  uint local_10;
  uint local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  LotRoomSeedTree_FindGuidNode((void *)((int)this + 0x14),local_14,(ulonglong *)&contentIdLow);
  this_00 = streamContext;
  pvVar1 = DAT_011edbc4;
  if (*extraout_EAX == (int)this + 0x18) {
    return 0;
  }
  uVar5 = FUN_009a16e0(DAT_011ea6a4,streamContext);
  if ((char)uVar5 != '\0') {
    streamContext =
         WorldObjects_FindLotByGuid(pvVar1,destinationLotIdLow,destinationLotIdHigh,(uint *)0x0);
    contentIdLow_00 = contentIdLow;
    if (streamContext != (int *)0x0) {
      local_c = contentIdHigh;
      local_10 = contentIdLow;
      local_8 = 0x611b0e7;
      local_4 = 0;
      bVar2 = ResourceStreamContext_OpenWrite(this_00,&local_10,0);
      pvVar1 = objectIdVector;
      if (bVar2) {
        cVar3 = Inventory_ReadObjectIdVector(objectIdVector,this_00);
        ResourceStreamContext_Close(this_00);
        if (cVar3 != '\0') {
          bVar4 = LotImport_ImportManagersAndObjects
                            (streamContext,this_00,contentIdLow_00,contentIdHigh,rotation,position,
                             pvVar1);
          return bVar4;
        }
      }
      return 0;
    }
  }
  return 0;
}

