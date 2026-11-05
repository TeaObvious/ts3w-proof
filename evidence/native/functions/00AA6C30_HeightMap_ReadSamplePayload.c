/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  void *pvVar1;
  ushort *puVar2;
  uint uVar3;
  int iVar4;
  float10 fVar5;
  float fVar6;
  uint local_8;
  uint local_4;
  
  uVar3 = streamMode;
  pvVar1 = stream;
  FUN_004dd980(stream,&local_8);
  FUN_004dd980(pvVar1,&local_4);
  *(uint *)((int)this + 0x14) = local_8;
  *(uint *)((int)this + 0x18) = local_4;
  *(uint *)((int)this + 0x1c) = local_8 - 1;
  *(uint *)((int)this + 0x20) = local_4 - 1;
  FUN_004dd980(pvVar1,(uint *)((int)this + 8));
  FUN_004dd980(pvVar1,(uint *)&stream);
  fVar5 = (float10)fptan((float10)_DAT_010650a0);
  fVar6 = DAT_00f998f8 / (float)stream;
  *(void **)((int)this + 0xc) = stream;
  *(float *)((int)this + 0x10) = fVar6;
  streamMode = 0;
  *(float *)((int)this + 0x24) = (float)(fVar5 * (float10)(float)stream);
  *(float *)((int)this + 0x28) = (float)(fVar5 * (float10)(float)stream * (float10)_DAT_0106509c);
  FUN_004dd980(pvVar1,&streamMode);
  iVar4 = *(int *)((int)this + 0x18) * *(int *)((int)this + 0x14);
  puVar2 = (ushort *)FUN_004e6f20(DAT_011cc864,iVar4 * 2,0);
  *(ushort **)((int)this + 0x38) = puVar2;
  if (puVar2 == (ushort *)0x0) {
    return false;
  }
  FUN_00aa68f0(pvVar1,uVar3,puVar2,iVar4);
  if ((3 < selector) && (uVar3 = 1, 1 < streamMode)) {
    do {
      (**(code **)(*(int *)pvVar1 + 0x28))
                ((*(uint *)((int)this + 0x18) >> ((byte)uVar3 & 0x1f)) *
                 (*(uint *)((int)this + 0x14) >> ((byte)uVar3 & 0x1f)) * 2,1);
      uVar3 = uVar3 + 1;
    } while (uVar3 < streamMode);
  }
  return true;
}

