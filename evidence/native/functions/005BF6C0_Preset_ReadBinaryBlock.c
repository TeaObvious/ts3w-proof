/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX preset plus reader/optional external key
   vector RET8. ReadUInt16magic42; UInt32 relative key offset/size; seek/read dense16-byte key
   vector. External vector overrides local table for complate005C2D90. Offset>4 means actual
   complate data begins after the key offset word. Return reader status inAL; temporary vector
   freed. */

undefined1 __thiscall Preset_ReadBinaryBlock(void *this,void *param_1,int *param_2)

{
  undefined1 uVar1;
  void *this_00;
  bool bVar2;
  char cVar3;
  int iVar4;
  undefined4 *puVar5;
  int iVar6;
  void **ppvVar7;
  uint local_20;
  char *local_1c;
  void *local_18;
  uint local_14;
  void *local_10 [4];
  
  this_00 = param_1;
  local_18 = this;
  bVar2 = Stream_ReadUInt16(*(void **)((int)param_1 + 8),(ushort *)&param_1,
                            *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  if ((short)param_1 != 0x42) {
    return 0;
  }
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_20,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  iVar4 = StreamContext_GetPositionAndMarkNegative(this_00);
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_14,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  StreamContext_SeekWithSignedAbsoluteGuard(this_00,iVar4 + local_20,0);
  local_1c = "CAS/DesignModePresetResource/ReadKeyList";
  FUN_007d9500(local_10,&local_1c);
  StreamContext_ReadResourceKeyVector(local_10,this_00);
  ppvVar7 = (void **)param_2;
  if (param_2 == (int *)0x0) {
    ppvVar7 = local_10;
  }
  if (4 < local_20) {
    puVar5 = FUN_005c0eb0();
    if (puVar5 == (undefined4 *)0x0) {
      iVar6 = 0;
    }
    else {
      iVar6 = FUN_005c0ff0(puVar5);
    }
    *(int *)((int)this + 0x28) = iVar6;
    if (iVar6 != 0) {
      iVar6 = StreamContext_GetPositionAndMarkNegative(this_00);
      StreamContext_SeekWithSignedAbsoluteGuard(this_00,iVar4 + 4,0);
      cVar3 = FUN_005c2d90(*(void **)((int)local_18 + 0x28),this_00,(int *)ppvVar7);
      if (cVar3 != '\0') {
        StreamContext_SeekWithSignedAbsoluteGuard(this_00,iVar6,0);
        goto LAB_005bf803;
      }
    }
    if (local_10[0] != (void *)0x0) {
      Memory_FreeIfNonNull(local_10[0]);
    }
    return 0;
  }
LAB_005bf803:
  uVar1 = *(undefined1 *)((int)this_00 + 0x14);
  if (local_10[0] != (void *)0x0) {
    Memory_FreeIfNonNull(local_10[0]);
  }
  return uVar1;
}

