/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXmanager + context/lotIDlow/lotIDhigh/group RET10hex, AL context status. Clears old map
   first; consumes version DWORD WITHOUT comparing; group count32 then key32/count8/directGUID64
   array. Existing duplicate key is found after insert-if-absent; vector resized and overwritten so
   LAST loaded vector wins. Zero keys, empty vectors and duplicate IDs survive. No EOF requirement.
   Do not confuse normal direct-ID read with A76720 import indices. */

bool __thiscall
FireplaceGroups_LoadDirectIds(void *this,undefined *context,ulonglong lotId,uint group)

{
  undefined *this_00;
  undefined *puVar1;
  bool bVar2;
  void *_Size;
  int iVar3;
  undefined4 *this_01;
  uint in_stack_00000008;
  uint local_44;
  uint local_40;
  uint local_3c;
  int local_38 [2];
  undefined local_30 [12];
  uint local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined *local_14;
  void *local_10;
  void *local_c;
  void *local_8;
  char *local_4;
  
  FUN_00b7a260(*(int *)((int)this + 8),*(uint *)((int)this + 0xc));
  this_00 = context;
  local_24 = in_stack_00000008;
  local_18 = lotId._4_4_;
  *(undefined4 *)((int)this + 0x10) = 0;
  local_20 = (undefined4)lotId;
  local_1c = 0x4f66bcc;
  bVar2 = ResourceStreamContext_OpenWrite(context,&local_24,0);
  if (bVar2) {
    bVar2 = Stream_ReadUInt32(*(void **)(this_00 + 8),&local_3c,*(uint *)(this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar2);
    in_stack_00000008 = 0;
    bVar2 = Stream_ReadUInt32(*(void **)(this_00 + 8),&stack0x00000008,*(uint *)(this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar2);
    local_44 = 0;
    if (in_stack_00000008 != 0) {
      do {
        context = (undefined *)0x0;
        bVar2 = Stream_ReadUInt32(*(void **)(this_00 + 8),(uint *)&context,*(uint *)(this_00 + 0x10)
                                 );
        StreamReader_AccumulateStatus(this_00,bVar2);
        lotId._4_4_ = lotId._4_4_ & 0xffffff00;
        bVar2 = Stream_ReadByte(*(void **)(this_00 + 8),(byte *)((int)&lotId + 4));
        StreamReader_AccumulateStatus(this_00,bVar2);
        puVar1 = context;
        _Size = memmove((void *)0x0,(void *)0x0,0);
        local_14 = puVar1;
        iVar3 = (int)_Size >> 3;
        local_4 = "Lot/ObjectIDs";
        if (iVar3 == 0) {
          local_10 = (void *)0x0;
        }
        else {
          local_10 = (void *)FUN_004e4500(iVar3 * 8,"Lot/ObjectIDs",0);
        }
        local_8 = (void *)((int)local_10 + iVar3 * 8);
        local_c = memmove(local_10,(void *)0x0,(size_t)_Size);
        local_c = (void *)((int)local_c + iVar3 * 8);
        local_40 = local_40 & 0xffffff00;
        FireplaceGroups_InsertIfAbsent
                  ((void *)((int)this + 4),local_30,(undefined *)&local_14,local_40);
        if (local_10 != (void *)0x0) {
          Memory_FreeIfNonNull(local_10);
        }
        FUN_004b0f80((void *)((int)this + 4),local_38,(uint *)&context);
        this_01 = (undefined4 *)(local_38[0] + 4);
        *(char **)(local_38[0] + 0x10) = "Lot/FireplaceManager/Load/ObjectArray";
        FUN_0059f220(this_01,lotId._4_4_ & 0xff);
        bVar2 = Stream_ReadUInt64ArrayByByteOrder
                          (*(undefined **)(this_00 + 8),(undefined *)*this_01,lotId._4_4_ & 0xff,
                           *(uint *)(this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,bVar2);
        local_44 = local_44 + 1;
      } while (local_44 < in_stack_00000008);
    }
    ResourceStreamContext_Close(this_00);
  }
  return (bool)this_00[0x14];
}

