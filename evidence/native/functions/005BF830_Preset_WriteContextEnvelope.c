/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Cdecl reader,preset,key context. Require live
   status/non-null objects; writeversion2 and preset+5Csubsort, outer size placeholder. Binary
   block005BF560 collects keys, then UInt8 count and ordered UInt16 context handles. Native count
   truncates tolowbyte; current checked byte count rejects256 instead. Empty native preset takes
   zero outer-size path. Actual source key table is not a REFS18-byte row.
   
   Saved envelope header: physical cdecl three stack words stream,preset,key-context; selected
   instructions005BF879..005BF8A4 write UInt32 version2 then exact preset+5C UInt32. Body size
   follows. This field is outside the complate body/XML and must survive save/load even when its
   value is0 or body size is0. Lot Section2 separately prepends a UInt16 handle. No CLR weak
   metadata table or first-value cache policy is implied by this native serializer. */

undefined1 __cdecl Preset_WriteContextEnvelope(char *param_1,void *param_2,void *param_3)

{
  char cVar1;
  char *arg0;
  void *this;
  void *this_00;
  byte bVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  void *local_10;
  int local_c;
  
  this_00 = param_3;
  this = param_2;
  arg0 = param_1;
  if (((param_1[0x14] != '\0') && (param_2 != (void *)0x0)) && (param_3 != (void *)0x0)) {
    param_1 = "CAS/DesignModePresetResource/SaveToStream";
    FUN_007d9500(&local_10,&param_1);
    bVar2 = Stream_WriteUInt32(*(void **)(arg0 + 8),2,*(uint *)(arg0 + 0x10));
    StreamReader_AccumulateStatus(arg0,bVar2);
    bVar2 = Stream_WriteUInt32(*(void **)(arg0 + 8),*(uint *)((int)this + 0x5c),
                               *(uint *)(arg0 + 0x10));
    StreamReader_AccumulateStatus(arg0,bVar2);
    uVar3 = Stream_BeginSizedBlock(arg0);
    if (*(int *)((int)this + 0x28) == 0) {
      Stream_BackpatchUInt32(arg0,uVar3,0);
    }
    else {
      bVar2 = Preset_WriteBinaryBlock(this,arg0,(undefined *)&local_10);
      if (bVar2 == 0) {
        if (local_10 != (void *)0x0) {
          Memory_FreeIfNonNull(local_10);
        }
        return 0;
      }
      Stream_FinishSizedBlock(arg0,uVar3);
      uVar3 = local_c - (int)local_10 >> 4;
      bVar2 = (byte)uVar3;
      param_1 = (char *)CONCAT31(param_1._1_3_,bVar2);
      StreamContext_WriteByte(arg0,bVar2);
      if (bVar2 != 0) {
        iVar5 = 0;
        uVar3 = uVar3 & 0xff;
        do {
          uVar4 = ResourceReferences_RegisterKey(this_00,(uint *)(iVar5 + (int)local_10),0);
          bVar2 = Stream_WriteUInt16(*(void **)(arg0 + 8),(ushort)uVar4,*(uint *)(arg0 + 0x10));
          StreamReader_AccumulateStatus(arg0,bVar2);
          iVar5 = iVar5 + 0x10;
          uVar3 = uVar3 - 1;
        } while (uVar3 != 0);
      }
    }
    cVar1 = arg0[0x14];
    if (local_10 != (void *)0x0) {
      Memory_FreeIfNonNull(local_10);
    }
    return cVar1;
  }
  return 0;
}

