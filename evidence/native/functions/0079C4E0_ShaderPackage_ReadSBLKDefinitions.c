/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: SHDS definition-block reader. The package parser passes a capability mask; the low and
   second bytes select SBLK groups by intersection, with zero meaning unrestricted. Accepted blocks
   instantiate ShaderDefinition objects; rejected blocks seek to their recorded end. Low AL/reader
   state governs failure. */

void __thiscall ShaderPackage_ReadSBLKDefinitions(void *this,void *param_1,void *param_2)

{
  undefined4 *puVar1;
  void *this_00;
  uint uVar2;
  bool bVar3;
  void *pvVar4;
  uint uVar5;
  uint local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  uint local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  this_00 = param_1;
  bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_1c,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  local_18 = (uint)param_2 & 0xff;
  local_14 = (uint)param_2 & 0xff00;
  local_20 = 0;
  if (local_1c != 0) {
    while (uVar2 = local_14, uVar5 = local_18, *(char *)((int)this_00 + 0x14) != '\0') {
      bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_10,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar3);
      bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_4,*(uint *)((int)this_00 + 0x10)
                               );
      StreamReader_AccumulateStatus(this_00,bVar3);
      bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar3);
      bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_c,*(uint *)((int)this_00 + 0x10)
                               );
      StreamReader_AccumulateStatus(this_00,bVar3);
      if ((*(char *)((int)this_00 + 0x14) == '\0') || (local_10 != 0x4b4c4253)) {
        StreamReader_AccumulateStatus(this_00,0);
        *(undefined1 *)((int)this_00 + 0x14) = 0;
        return;
      }
      if (((uVar5 == 0) || ((uVar5 & (uint)param_1) != 0)) &&
         ((uVar2 == 0 || ((uVar2 & (uint)param_1) != 0)))) {
        bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_24,
                                  *(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,bVar3);
        uVar5 = 0;
        if (local_24 != 0) {
          do {
            if (*(char *)((int)this_00 + 0x14) == '\0') break;
            bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_8,
                                      *(uint *)((int)this_00 + 0x10));
            StreamReader_AccumulateStatus(this_00,bVar3);
            pvVar4 = (void *)FUN_004e4500(0x38,"Shader/Shader",0);
            if (pvVar4 == (void *)0x0) {
              pvVar4 = (void *)0x0;
            }
            else {
              pvVar4 = (void *)FUN_0079a660(pvVar4,local_4,local_8);
            }
            *(void **)((int)pvVar4 + 0x28) = param_1;
            param_2 = pvVar4;
            ShaderDefinition_ReadBody(pvVar4,this_00,*(void **)this);
            if (*(char *)((int)this_00 + 0x14) == '\0') {
              FUN_0079aa40(pvVar4);
              Memory_FreeIfNonNull(pvVar4);
              break;
            }
            puVar1 = *(undefined4 **)((int)this + 0x20);
            if (puVar1 < *(undefined4 **)((int)this + 0x24)) {
              *(undefined4 **)((int)this + 0x20) = puVar1 + 1;
              if (puVar1 != (undefined4 *)0x0) {
                *puVar1 = pvVar4;
              }
            }
            else {
              FUN_00982420((void *)((int)this + 0x1c),puVar1,&param_2);
            }
            uVar5 = uVar5 + 1;
          } while (uVar5 < local_24);
        }
      }
      else {
        StreamContext_SeekWithSignedAbsoluteGuard(this_00,local_c,1);
      }
      local_20 = local_20 + 1;
      if (local_1c <= local_20) {
        return;
      }
    }
  }
  return;
}

