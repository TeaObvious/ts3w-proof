/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: SHDB LINK/DBUF database reader. Reads per-stage bytecode records, applies the same
   capability-byte mask, skips rejected byte ranges, builds vertex or pixel shader objects for
   accepted records and retains DBUF defaults. Decompiler reuses param_1 for unrelated stack
   variables; instruction 0x0079aedb tests the byte read at [esp+0x34] to choose pixel versus
   vertex, not the reader pointer. */

undefined1 __thiscall
ShaderDatabase_ReadLINKAndDBUF(void *this,void *param_1,uint param_2,undefined4 param_3)

{
  void *this_00;
  uint uVar1;
  bool bVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 *this_01;
  undefined4 *local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  uint local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  this_00 = param_1;
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_14,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  if (local_14 != 0x4b4e494c) {
    return 0;
  }
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_18,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  local_10 = param_2 & 0xff;
  local_c = param_2 & 0xff00;
  local_20 = 0;
  if (local_18 != 0) {
    do {
      uVar1 = local_10;
      bVar2 = Stream_ReadBoolean(*(void **)((int)this_00 + 8),&param_1);
      StreamReader_AccumulateStatus(this_00,bVar2);
      bVar2 = Stream_ReadUInt16(*(void **)((int)this_00 + 8),(ushort *)&param_2,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar2);
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_8,*(uint *)((int)this_00 + 0x10)
                               );
      StreamReader_AccumulateStatus(this_00,bVar2);
      if (*(char *)((int)this_00 + 0x14) == '\0') {
        return 0;
      }
      if (((uVar1 == 0) || ((uVar1 & param_2 & 0xffff) != 0)) &&
         ((local_c == 0 || ((local_c & param_2 & 0xffff) != 0)))) {
        if ((char)param_1 == '\0') {
          puVar4 = (undefined4 *)FUN_004e4500(0x14,"Shader/VertexShader",0);
          if (puVar4 == (undefined4 *)0x0) goto LAB_0079af26;
          this_01 = (undefined4 *)FUN_00799b30(puVar4);
        }
        else {
          puVar4 = (undefined4 *)FUN_004e4500(0x14,"Shader/PixelShader",0);
          if (puVar4 == (undefined4 *)0x0) {
LAB_0079af26:
            this_01 = (undefined4 *)0x0;
          }
          else {
            this_01 = (undefined4 *)FUN_00799bb0(puVar4);
          }
        }
        *(undefined2 *)((int)this_01 + 6) = (undefined2)param_2;
        local_24 = this_01;
        uVar3 = ShaderBytecode_ReadAndMaybeCreate(this_01,this_00,(char)param_3);
        if ((char)uVar3 == '\0') {
          (**(code **)*this_01)(1);
          return 0;
        }
        *(short *)(this_01 + 1) = (short)local_20 + 1;
        puVar4 = *(undefined4 **)((int)this + 4);
        if (puVar4 < *(undefined4 **)((int)this + 8)) {
          *(undefined4 **)((int)this + 4) = puVar4 + 1;
          if (puVar4 != (undefined4 *)0x0) {
            *puVar4 = this_01;
          }
        }
        else {
LAB_0079af67:
          FUN_00982420(this,puVar4,&local_24);
        }
      }
      else {
        StreamContext_SeekWithSignedAbsoluteGuard(this_00,local_8,1);
        puVar4 = *(undefined4 **)((int)this + 4);
        local_24 = (undefined4 *)0x0;
        if (*(undefined4 **)((int)this + 8) <= puVar4) goto LAB_0079af67;
        *(undefined4 **)((int)this + 4) = puVar4 + 1;
        if (puVar4 != (undefined4 *)0x0) {
          *puVar4 = 0;
        }
      }
      local_20 = local_20 + 1;
    } while (local_20 < local_18);
  }
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_4,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  if (local_4 == 0x46554244) {
    bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_1c,*(uint *)((int)this_00 + 0x10))
    ;
    StreamReader_AccumulateStatus(this_00,bVar2);
    bVar2 = StreamReader_CheckArrayBytes(this_00,local_1c,4);
    if (bVar2) {
      FUN_00c221f0((undefined4 *)((int)this + 0x10),local_1c);
      uVar3 = Stream_ReadUInt32ArrayByByteOrder
                        (*(int **)((int)this_00 + 8),*(uint **)((int)this + 0x10),local_1c,
                         *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,(byte)uVar3);
      return *(undefined1 *)((int)this_00 + 0x14);
    }
  }
  return 0;
}

