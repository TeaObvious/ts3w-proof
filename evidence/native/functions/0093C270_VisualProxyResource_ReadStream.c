/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 VPXY reader contract (not an original symbol). ECX resource, one stack stream;
   result is AL, upper EAX is not a status. Accepts unsigned version 1..4 only; no Medieval v5
   grammar is proved by this function. Versions1/2 read inline ITG keys; versions3/4 load a relative
   counted TGI table then bounds-check each index. Entry0 carries byte id/count and an ordered key
   vector; entry1 stores idFF and one key. A byte then six float-bit DWORDs populate bounds38..4C.
   Version4 adds DWORD60. Versions2..4 read modularBYTE and, if nonzero, one inline key(v2) or table
   index(v3/4) into50..5C. Borrowed decoder types and stack-slot aliases in the C are inferred.
   ReferenceTable_ReadResourceKeys supplies seek/restore and status; its extent is not an exact byte
   cap. Some stream errors accumulate status without a terminal status test here: do not equate AL1
   to fully validated bytes or atomic publication. Unsupported entry discriminators fall through the
   native switch; invalid key index jumps to cleanup/AL0. Frees temporary key storage and releases
   reader auxiliary state on both success/failure. Counts allocate and mutate the live resource
   before completion; no transactional rollback. Retail original execution and Medieval native
   decoding are not established by this static export. */

uint __thiscall VisualProxyResource_ReadStream(void *this,int *param_1)

{
  byte *this_00;
  bool bVar1;
  char cVar2;
  undefined4 uVar3;
  uint extraout_EAX;
  undefined4 *puVar4;
  undefined4 extraout_EAX_00;
  undefined4 *puVar5;
  uint extraout_EAX_01;
  uint extraout_EAX_02;
  byte bVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  byte *pbVar10;
  byte local_3b;
  byte local_3a;
  byte local_39;
  uint local_38;
  uint local_34;
  void *local_30;
  char *local_2c;
  void *local_28;
  int local_24;
  char local_18 [8];
  void *local_10;
  uint local_8;
  char local_4;
  
  local_30 = this;
  StreamReader_Construct(local_18,param_1,1);
  uVar3 = FUN_00932de0(local_18);
  if ((char)uVar3 == '\0') {
    StreamReader_ReleaseAuxiliary(local_18);
    return extraout_EAX & 0xffffff00;
  }
  local_38 = 0;
  local_2c = "Objects/VisualProxyResource/KeyTable";
  FUN_007d9500(&local_28,&local_2c);
  bVar1 = Stream_ReadUInt32(local_10,&local_38,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
                    /* Unsigned (version-1)<=3: exact supported versions1,2,3,4. Version5 is
                       rejected. */
  if ((local_38 - 1 < 4) &&
     ((local_38 < 3 || (cVar2 = ReferenceTable_ReadResourceKeys(local_18,&local_28), cVar2 != '\0'))
     )) {
    param_1 = (int *)((uint)param_1 & 0xffffff00);
    bVar1 = Stream_ReadByte(local_10,(byte *)&param_1);
    StreamReader_AccumulateStatus(local_18,bVar1);
    if (local_4 != '\0') {
      FUN_0093c1d0((void *)((int)this + 0x28),(uint)param_1 & 0xff);
      uVar7 = 0;
      uVar8 = local_24 - (int)local_28 >> 4;
      local_3b = 0;
      local_34 = 0;
      local_3a = 0;
      if ((byte)param_1 != '\0') {
        do {
          bVar6 = (byte)uVar7;
          pbVar10 = (byte *)(*(int *)((int)this + 0x28) + uVar7 * 0x14);
          bVar1 = Stream_ReadByte(local_10,&local_39);
          StreamReader_AccumulateStatus(local_18,bVar1);
          if (local_39 == 0) {
            bVar1 = Stream_ReadByte(local_10,pbVar10);
            StreamReader_AccumulateStatus(local_18,bVar1);
            bVar1 = Stream_ReadByte(local_10,&local_3b);
            StreamReader_AccumulateStatus(local_18,bVar1);
            pbVar10 = pbVar10 + 4;
            FUN_007998a0(pbVar10,(uint)local_3b);
            uVar7 = 0;
            if (local_3b != 0) {
              do {
                if (local_38 < 3) {
                  iVar9 = uVar7 * 0x10;
                  bVar1 = Stream_ReadUInt64(local_10,(ulonglong *)(*(int *)pbVar10 + iVar9),local_8)
                  ;
                  StreamReader_AccumulateStatus(local_18,bVar1);
                  bVar1 = Stream_ReadUInt32(local_10,(uint *)(iVar9 + 8 + *(int *)pbVar10),local_8);
                  StreamReader_AccumulateStatus(local_18,bVar1);
                  bVar1 = Stream_ReadUInt32(local_10,(uint *)(iVar9 + 0xc + *(int *)pbVar10),local_8
                                           );
                  StreamReader_AccumulateStatus(local_18,bVar1);
                  this = local_30;
                }
                else {
                  bVar1 = Stream_ReadUInt32(local_10,&local_34,local_8);
                  StreamReader_AccumulateStatus(local_18,bVar1);
                  if (uVar8 <= local_34) goto LAB_0093c759;
                  puVar4 = (undefined4 *)(local_34 * 0x10 + (int)local_28);
                  puVar5 = (undefined4 *)(uVar7 * 0x10 + *(int *)pbVar10);
                  *puVar5 = *puVar4;
                  puVar5[1] = puVar4[1];
                  puVar5[2] = puVar4[2];
                  puVar5[3] = puVar4[3];
                }
                bVar6 = (char)uVar7 + 1;
                uVar7 = (uint)bVar6;
              } while (bVar6 < local_3b);
            }
            bVar6 = local_3a;
          }
          else if (local_39 == 1) {
            this_00 = pbVar10 + 4;
            *pbVar10 = 0xff;
            FUN_007998a0(this_00,1);
            if (local_38 < 3) {
              FUN_005fe990(local_18,*(uint **)this_00);
              StreamReader_ReadUInt32Into(local_18,(uint *)(*(int *)this_00 + 8));
              StreamReader_ReadUInt32Into(local_18,(uint *)(*(int *)this_00 + 0xc));
              this = local_30;
            }
            else {
              StreamReader_ReadUInt32Into(local_18,&local_34);
              if (uVar8 <= local_34) goto LAB_0093c759;
              puVar5 = *(undefined4 **)this_00;
              puVar4 = (undefined4 *)(local_34 * 0x10 + (int)local_28);
              *puVar5 = *puVar4;
              puVar5[1] = puVar4[1];
              puVar5[2] = puVar4[2];
              puVar5[3] = puVar4[3];
              this = local_30;
            }
          }
          local_3a = bVar6 + 1;
          uVar7 = (uint)local_3a;
        } while (local_3a < (byte)param_1);
      }
      bVar1 = Stream_ReadByte(local_10,&local_39);
      StreamReader_AccumulateStatus(local_18,bVar1);
      bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0x38),local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0x3c),local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0x40),local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0x44),local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0x48),local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0x4c),local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
                    /* Only version4 among admitted versions reads the additional DWORD at
                       resource+60. */
      if (3 < local_38) {
        bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0x60),local_8);
        StreamReader_AccumulateStatus(local_18,bVar1);
      }
                    /* Version1 has no modular suffix. Versions2..4 read one byte and optionally one
                       key. */
      if (1 < local_38) {
        local_3a = 0;
        bVar1 = Stream_ReadByte(local_10,&local_3a);
        StreamReader_AccumulateStatus(local_18,bVar1);
        if (local_3a != 0) {
          if (local_38 < 3) {
            FUN_005fe990(local_18,(uint *)((int)this + 0x50));
            StreamReader_ReadUInt32Into(local_18,(uint *)((int)this + 0x58));
            StreamReader_ReadUInt32Into(local_18,(uint *)((int)this + 0x5c));
          }
          else {
            StreamReader_ReadUInt32Into(local_18,&local_34);
            if (uVar8 <= local_34) {
LAB_0093c759:
              if (local_28 != (void *)0x0) {
                Memory_FreeIfNonNull(local_28);
              }
              StreamReader_ReleaseAuxiliary(local_18);
              return extraout_EAX_01 & 0xffffff00;
            }
            puVar5 = (undefined4 *)(local_34 * 0x10 + (int)local_28);
            *(undefined4 *)((int)this + 0x50) = *puVar5;
            *(undefined4 *)((int)this + 0x54) = puVar5[1];
            *(undefined4 *)((int)this + 0x58) = puVar5[2];
            *(undefined4 *)((int)this + 0x5c) = puVar5[3];
          }
        }
      }
      FUN_00731be0(this,((uint)param_1 & 0xff) * 0x14 + 0x68);
      if (local_28 != (void *)0x0) {
        Memory_FreeIfNonNull(local_28);
      }
      StreamReader_ReleaseAuxiliary(local_18);
      return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
    }
  }
  if (local_28 != (void *)0x0) {
    Memory_FreeIfNonNull(local_28);
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return extraout_EAX_02 & 0xffffff00;
}

