/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x009a84e1) */
/* WARNING: Removing unreachable block (ram,0x009a8508) */
/* WARNING: Removing unreachable block (ram,0x009a84f1) */
/* WARNING: Removing unreachable block (ram,0x009a84fb) */
/* WARNING: Removing unreachable block (ram,0x009a8525) */
/* WARNING: Removing unreachable block (ram,0x009a84cb) */
/* WARNING: Removing unreachable block (ram,0x009a8595) */
/* Analyst role, original PC1.67. ECX export resource, one stream word/RET4, AL status. UInt16
   version<=4, UInt16 key count with IGT keys, UInt16 object-ID count then UInt64 IDs; pre2 UTF16
   legacy name, UInt32 property-stream byte count<=02000000, bytes, v3+ Boolean byte, v4+ UTF16
   source. Actual instructions include key-loop9A84CB..9595 that current decompiler incorrectly
   removes as unreachable, plus several stack aliases. Do not use the absent pseudocode loop to
   infer a missing table or signed counts. Whole native stream reader does not impose managed
   exact-end/safety policy. */

uint __thiscall SimExport_ReadContainer(void *this,int *param_1)

{
  undefined4 *this_00;
  undefined4 *puVar1;
  bool bVar2;
  uint extraout_EAX;
  void *destination;
  undefined4 extraout_EAX_00;
  ushort unaff_retaddr;
  uint uStack_38;
  uint uStack_34;
  int *piStack_30;
  int *local_2c;
  undefined1 *puStack_28;
  undefined2 *puStack_24;
  char *pcStack_20;
  undefined1 auStack_1c [4];
  undefined1 local_18 [4];
  void *pvStack_14;
  uint uStack_c;
  
  StreamReader_Construct(local_18,param_1,1);
  *(undefined4 *)((int)this + 0x2c) = *(undefined4 *)((int)this + 0x28);
  this_00 = (undefined4 *)((int)this + 0x38);
  local_2c = (int *)((int)this + 0x48);
  *(undefined4 *)((int)this + 0x3c) = *(undefined4 *)((int)this + 0x38);
  (**(code **)(*local_2c + 0x20))(0);
  bVar2 = Stream_ReadUInt16(pvStack_14,(ushort *)&stack0x00000000,uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  if (unaff_retaddr < 5) {
    bVar2 = Stream_ReadUInt16(pvStack_14,(ushort *)&stack0xffffffc4,uStack_c);
    StreamReader_AccumulateStatus(auStack_1c,bVar2);
    uStack_38 = 0;
    bVar2 = Stream_ReadUInt16(pvStack_14,(ushort *)&uStack_38,uStack_c);
    StreamReader_AccumulateStatus(auStack_1c,bVar2);
    if ((short)uStack_38 != 0) {
      FUN_0059ef20(this_00,uStack_38 & 0xffff);
      while ((short)uStack_38 != 0) {
        puVar1 = *(undefined4 **)((int)this + 0x3c);
        uStack_38 = uStack_38 + 0xffff;
        if (puVar1 < *(undefined4 **)((int)this + 0x40)) {
          *(undefined4 **)((int)this + 0x3c) = puVar1 + 2;
          if (puVar1 != (undefined4 *)0x0) {
            *puVar1 = 0;
            puVar1[1] = 0;
          }
        }
        else {
          local_2c = (int *)0x0;
          puStack_28 = (undefined1 *)0x0;
          FUN_00572360(this_00,puVar1,&local_2c);
        }
        bVar2 = Stream_ReadUInt64(pvStack_14,(ulonglong *)(*(int *)((int)this + 0x3c) + -8),uStack_c
                                 );
        StreamReader_AccumulateStatus(auStack_1c,bVar2);
      }
      uStack_38 = uStack_38 + 0xffff;
    }
    if (unaff_retaddr < 2) {
      pcStack_20 = "Scratch/DownloadContent/BaseExportResource/simName";
      local_2c = (int *)&DAT_011c8e54;
      puStack_28 = &DAT_011c8e54;
      puStack_24 = &DAT_011c8e56;
      StreamContext_ReadUtf16String(auStack_1c,&local_2c);
      if ((2 < (int)((int)puStack_24 - (int)local_2c & 0xfffffffeU)) && (local_2c != (int *)0x0)) {
        Memory_FreeIfNonNull(local_2c);
      }
    }
    bVar2 = Stream_ReadUInt32(pvStack_14,&uStack_34,uStack_c);
    StreamReader_AccumulateStatus(auStack_1c,bVar2);
    if (uStack_34 < 0x2000001) {
      if (uStack_34 != 0) {
        destination = (void *)FUN_004e4500(uStack_34,
                                           "Scratch/DownloadContent/BaseExportResource/pSimData",0);
        bVar2 = Stream_ReadExactBytes(pvStack_14,destination,uStack_34);
        StreamReader_AccumulateStatus(auStack_1c,bVar2);
        FUN_009a5ab0((int)this);
        Memory_FreeIfNonNull(destination);
      }
      if (2 < unaff_retaddr) {
        bVar2 = Stream_ReadBoolean(pvStack_14,(void *)((int)this + 0x88));
        StreamReader_AccumulateStatus(auStack_1c,bVar2);
      }
      if (3 < unaff_retaddr) {
        StreamContext_ReadUtf16String(auStack_1c,(undefined4 *)((int)this + 0x78));
      }
      (**(code **)(*(int *)this + 0x1c))();
      StreamReader_ReleaseAuxiliary(auStack_1c);
      return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
    }
    *(undefined4 *)((int)this + 0x2c) = *(undefined4 *)((int)this + 0x28);
    *(undefined4 *)((int)this + 0x3c) = *this_00;
    (**(code **)(*piStack_30 + 0x20))(0);
  }
  StreamReader_ReleaseAuxiliary(auStack_1c);
  return extraout_EAX & 0xffffff00;
}

