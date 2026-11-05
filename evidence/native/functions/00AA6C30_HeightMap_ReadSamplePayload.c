/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst: PC 1.67 heightmap lifecycle. Producer of image+38 uint16 backing allocation: reads
   width+14,height+18 and header scalars; allocates2*width*height bytes and calls00aa68f0 to decode.
   Conditional subsequent mip skipping follows selector>3 and original count. Full
   compression/malformed resource contract remains outside this lifecycle proof. Decompiled reused
   pointer/header temporaries are type-recovery artifacts; dimension/sample allocation and AL result
   verified in original instructions. The last selector's original semantic name/version domain is
   not established. */

bool __thiscall HeightMap_ReadSamplePayload(void *this,void *stream,uint streamMode,ushort selector)

{
  void *stream_00;
  ushort *puVar1;
  uint uVar2;
  int iVar3;
  float10 fVar4;
  uint local_8;
  uint local_4;
  
  uVar2 = streamMode;
  stream_00 = stream;
  Stream_ReadUInt32(stream,&local_8,streamMode);
  Stream_ReadUInt32(stream_00,&local_4,uVar2);
  *(uint *)((int)this + 0x14) = local_8;
  *(uint *)((int)this + 0x18) = local_4;
  *(uint *)((int)this + 0x1c) = local_8 - 1;
  *(uint *)((int)this + 0x20) = local_4 - 1;
  Stream_ReadUInt32(stream_00,(uint *)((int)this + 8),uVar2);
  Stream_ReadUInt32(stream_00,(uint *)&stream,uVar2);
  fVar4 = (float10)fptan((float10)0.3499999940395355);
  *(void **)((int)this + 0xc) = stream;
  *(float *)((int)this + 0x10) = 1.0 / (float)stream;
  streamMode = 0;
  *(float *)((int)this + 0x24) = (float)(fVar4 * (float10)(float)stream);
  *(float *)((int)this + 0x28) = (float)(fVar4 * (float10)(float)stream * (float10)1.414);
  Stream_ReadUInt32(stream_00,&streamMode,uVar2);
  iVar3 = *(int *)((int)this + 0x18) * *(int *)((int)this + 0x14);
  puVar1 = (ushort *)FUN_004e6f20(DAT_011cc864,iVar3 * 2,0);
  *(ushort **)((int)this + 0x38) = puVar1;
  if (puVar1 == (ushort *)0x0) {
    return false;
  }
  FUN_00aa68f0(stream_00,uVar2,puVar1,iVar3);
  if ((3 < selector) && (uVar2 = 1, 1 < streamMode)) {
    do {
      (**(code **)(*(int *)stream_00 + 0x28))
                ((*(uint *)((int)this + 0x18) >> ((byte)uVar2 & 0x1f)) *
                 (*(uint *)((int)this + 0x14) >> ((byte)uVar2 & 0x1f)) * 2,1);
      uVar2 = uVar2 + 1;
    } while (uVar2 < streamMode);
  }
  return true;
}

