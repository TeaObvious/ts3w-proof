/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX resource, stream arg RET4. ReadUInt16 version,
   reject0 but no exact==1 gate. Load reference table0099D570; readUInt16 kind at+38,UInt16 section
   count, reserve16-byte output vector at+28 and resolve eachUInt32 ordinal0099A660 in order. On
   failed ordinal returnsAL0 after cleanup. Duplicate/zero keys preserve positions. Current s3pi
   version1 policy is stricter. */

uint __thiscall ModularProduct_ReadOrderedSections(void *this,int *param_1)

{
  bool bVar1;
  char cVar2;
  uint extraout_EAX;
  uint uVar3;
  undefined4 extraout_EAX_00;
  uint extraout_EAX_01;
  int iVar4;
  int iVar5;
  uint local_30;
  char *local_2c;
  void *local_28 [4];
  char local_18 [8];
  void *local_10;
  uint local_8;
  
  StreamReader_Construct(local_18,param_1,1);
  bVar1 = Stream_ReadUInt16(local_10,(ushort *)&param_1,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  if ((short)param_1 != 0) {
    local_2c = "Lot/CTCatalog/ModularObjectResource/KeyTable";
    FUN_007d9500(local_28,&local_2c);
    cVar2 = ReferenceTable_ReadResourceKeys(local_18,local_28);
    if (cVar2 != '\0') {
      bVar1 = Stream_ReadUInt16(local_10,(ushort *)((int)this + 0x38),local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      local_30 = 0;
      bVar1 = Stream_ReadUInt16(local_10,(ushort *)&local_30,local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      FUN_007998a0((int *)((int)this + 0x28),local_30 & 0xffff);
      iVar4 = 0;
      if ((short)local_30 != 0) {
        iVar5 = 0;
        do {
          uVar3 = ReferenceTable_ReadKeyByOrdinal
                            (local_18,(int *)local_28,
                             (undefined4 *)(*(int *)((int)this + 0x28) + iVar5));
          if ((char)uVar3 == '\0') {
            if (local_28[0] != (void *)0x0) {
              Memory_FreeIfNonNull(local_28[0]);
            }
            StreamReader_ReleaseAuxiliary(local_18);
            return extraout_EAX_01 & 0xffffff00;
          }
          iVar4 = iVar4 + 1;
          iVar5 = iVar5 + 0x10;
        } while (iVar4 < (int)(local_30 & 0xffff));
      }
      if (local_28[0] != (void *)0x0) {
        Memory_FreeIfNonNull(local_28[0]);
      }
      StreamReader_ReleaseAuxiliary(local_18);
      return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
    }
    if (local_28[0] != (void *)0x0) {
      Memory_FreeIfNonNull(local_28[0]);
    }
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return extraout_EAX & 0xffffff00;
}

