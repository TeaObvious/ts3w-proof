/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * PC1.67 TONE resource reader. ECX owner, stack4 stream, RET4. Version minus2 unsigned<=4 admits2..6. Version2 skips reference table and reads full keys directly;3+ uses ReferenceTable_ReadKeyByOrdinal. Added texture slots serialize at+50 then+40 then+60 forversions4/5/6. Return success/failure is AL, not normalized fullEAX; stored undefined4 prototype is incomplete. Shader rows append to flags-selected owner vectors, texture sets use two flags. Stream/allocator/table/duplicate/ordering and actual call+consumer/lifetime remain separate questions. No finite/strict body extent/count-cap equivalence is inferred.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 005F3560_FUN_005f3560.asm
 */

int __thiscall FUN_005f3560(void *this,int *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int *stream;
  char cVar3;
  uint3 extraout_var;
  uint3 extraout_var_00;
  uint3 uVar5;
  void *this_00;
  uint uVar4;
  uint extraout_EAX;
  ulonglong *outUInt64;
  undefined4 extraout_EAX_00;
  int local_50;
  void *local_4c;
  char *local_48;
  uint local_44;
  uint local_40;
  uint local_3c;
  void *local_38;
  uint local_34;
  undefined4 local_30;
  undefined4 local_2c;
  void *local_28 [4];
  char local_18 [24];
  
  stream = param_1;
  local_4c = this;
  Stream_ReadUInt32(param_1,(uint *)&param_1,1);
  uVar5 = extraout_var;
  if ((int)param_1 - 2U < 5) {
    StreamReader_Construct(local_18,stream,1);
    local_48 = "CAS/SkinToneResource/keyList";
    FUN_007d9500(local_28,&local_48);
    if ((param_1 < (int *)0x3) ||
       (cVar3 = ReferenceTable_ReadResourceKeys(local_18,local_28), cVar3 != '\0')) {
      local_50 = 0;
      Stream_ReadUInt32(stream,&local_44,1);
      local_48 = (char *)0x0;
      if (0 < (int)local_44) {
        do {
          Stream_ReadUInt32(stream,&local_3c,1);
          this_00 = (void *)FUN_005f3400((void *)((int)this + 0x4c),&local_3c);
          puVar1 = *(undefined4 **)((int)this_00 + 4);
          local_38 = (void *)0x0;
          local_34 = 0;
          local_30 = 0;
          local_2c = 0;
          if (puVar1 < *(undefined4 **)((int)this_00 + 8)) {
            *(undefined4 **)((int)this_00 + 4) = puVar1 + 4;
            this = local_4c;
            if (puVar1 != (undefined4 *)0x0) {
              *puVar1 = 0;
              puVar1[1] = 0;
              puVar1[2] = 0;
              puVar1[3] = 0;
            }
          }
          else {
            FUN_00cca0b0(this_00,puVar1,&local_38);
          }
          iVar2 = *(int *)((int)this_00 + 4);
          Stream_ReadUInt32(stream,(uint *)(iVar2 + -0xc),1);
          Stream_ReadUInt32(stream,(uint *)(iVar2 + -0x10),1);
          Stream_ReadUInt32(stream,(uint *)(iVar2 + -8),1);
          Stream_ReadBoolean(stream,(void *)(iVar2 + -4));
          local_50 = local_50 + 0x10;
          local_48 = local_48 + 1;
        } while ((int)local_48 < (int)local_44);
      }
      if (param_1 < (int *)0x3) {
        Stream_ReadUInt64(stream,(ulonglong *)((int)this + 0x28),1);
        Stream_ReadUInt32(stream,(uint *)((int)this + 0x34),1);
        Stream_ReadUInt32(stream,(uint *)((int)this + 0x30),1);
        Stream_ReadUInt64(stream,(ulonglong *)((int)this + 0x38),1);
        Stream_ReadUInt32(stream,(uint *)((int)this + 0x44),1);
        Stream_ReadUInt32(stream,(uint *)((int)this + 0x40),1);
      }
      else {
        uVar4 = ReferenceTable_ReadKeyByOrdinal
                          (local_18,(int *)local_28,(undefined4 *)((int)this + 0x28));
        if (((char)uVar4 == '\0') ||
           (uVar4 = ReferenceTable_ReadKeyByOrdinal
                              (local_18,(int *)local_28,(undefined4 *)((int)this + 0x38)),
           (char)uVar4 == '\0')) {
LAB_005f3702:
          if (local_28[0] != (void *)0x0) {
            Memory_FreeIfNonNull(local_28[0]);
          }
          StreamReader_ReleaseAuxiliary(local_18);
          return extraout_EAX & 0xffffff00;
        }
      }
      Stream_ReadUInt32(stream,&local_40,1);
      local_48 = (char *)0x0;
      if (0 < (int)local_40) {
        do {
          Stream_ReadUInt32(stream,(uint *)&local_4c,1);
          Stream_ReadUInt32(stream,&local_3c,1);
          local_38 = local_4c;
          local_34 = local_3c;
          outUInt64 = (ulonglong *)FUN_005f31b0((void *)((int)this + 0x6c),(uint *)&local_38);
          if (param_1 < (int *)0x3) {
            Stream_ReadUInt64(stream,outUInt64,1);
            Stream_ReadUInt32(stream,(uint *)((int)outUInt64 + 0xc),1);
            Stream_ReadUInt32(stream,(uint *)(outUInt64 + 1),1);
            Stream_ReadUInt64(stream,outUInt64 + 2,1);
            Stream_ReadUInt32(stream,(uint *)((int)outUInt64 + 0x1c),1);
            Stream_ReadUInt32(stream,(uint *)(outUInt64 + 3),1);
            Stream_ReadUInt64(stream,outUInt64 + 4,1);
            Stream_ReadUInt32(stream,(uint *)((int)outUInt64 + 0x2c),1);
            Stream_ReadUInt32(stream,(uint *)(outUInt64 + 5),1);
            Stream_ReadUInt64(stream,outUInt64 + 6,1);
            Stream_ReadUInt32(stream,(uint *)((int)outUInt64 + 0x3c),1);
            Stream_ReadUInt32(stream,(uint *)(outUInt64 + 7),1);
          }
          else {
            uVar4 = ReferenceTable_ReadKeyByOrdinal
                              (local_18,(int *)local_28,(undefined4 *)outUInt64);
            if (((((((char)uVar4 == '\0') ||
                   (uVar4 = ReferenceTable_ReadKeyByOrdinal
                                      (local_18,(int *)local_28,(undefined4 *)(outUInt64 + 2)),
                   (char)uVar4 == '\0')) ||
                  (uVar4 = ReferenceTable_ReadKeyByOrdinal
                                     (local_18,(int *)local_28,(undefined4 *)(outUInt64 + 4)),
                  (char)uVar4 == '\0')) ||
                 (uVar4 = ReferenceTable_ReadKeyByOrdinal
                                    (local_18,(int *)local_28,(undefined4 *)(outUInt64 + 6)),
                 (char)uVar4 == '\0')) ||
                ((((int *)0x3 < param_1 &&
                  (uVar4 = ReferenceTable_ReadKeyByOrdinal
                                     (local_18,(int *)local_28,(undefined4 *)(outUInt64 + 10)),
                  (char)uVar4 == '\0')) ||
                 ((&DAT_00000004 < param_1 &&
                  (uVar4 = ReferenceTable_ReadKeyByOrdinal
                                     (local_18,(int *)local_28,(undefined4 *)(outUInt64 + 8)),
                  (char)uVar4 == '\0')))))) ||
               ((&DAT_00000005 < param_1 &&
                (uVar4 = ReferenceTable_ReadKeyByOrdinal
                                   (local_18,(int *)local_28,(undefined4 *)(outUInt64 + 0xc)),
                (char)uVar4 == '\0')))) goto LAB_005f3702;
          }
          local_48 = local_48 + 1;
        } while ((int)local_48 < (int)local_40);
      }
      Stream_ReadBoolean(stream,(void *)((int)this + 0x48));
      FUN_00731be0(this,*(int *)((int)this + 0x78) * 0x80 + local_50 +
                        (*(int *)((int)this + 0x58) + 6) * 0x18);
      if (local_28[0] != (void *)0x0) {
        Memory_FreeIfNonNull(local_28[0]);
      }
      StreamReader_ReleaseAuxiliary(local_18);
      return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
    }
    if (local_28[0] != (void *)0x0) {
      Memory_FreeIfNonNull(local_28[0]);
    }
    StreamReader_ReleaseAuxiliary(local_18);
    uVar5 = extraout_var_00;
  }
  return (uint)uVar5 << 8;
}

