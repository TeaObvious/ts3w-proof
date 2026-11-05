/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall ECX texture; five stack slots
   mip,source,sourcePitch,optionalBaseWidth,optionalBaseHeight; RET14hex verifies ABI. Native
   vtable+4C locks, negative HRESULT fails; dimensions logical-shift and clamp1, optional dimensions
   bound copy. memcpy each block row using descriptor tight bytes; independent native destination
   pitch and supplied source pitch. Unlock+50 HRESULT controls AL success. Does not swap channels or
   derive pitch from DDS header. */

bool __thiscall
Texture_CopyMipRows2D
          (void *this,uint mip,void *source,uint sourcePitch,uint optionalBaseWidth,
          uint optionalBaseHeight)

{
  int iVar1;
  undefined *this_00;
  size_t _Size;
  byte bVar2;
  uint uVar3;
  uint uVar4;
  uint uStack_14;
  uint uStack_10;
  int local_8;
  void *pvStack_4;
  
  uVar3 = 0;
  if ((*(byte *)((int)this + 0x20) & 4) != 0) {
    uVar3 = 0x2000;
  }
  iVar1 = (**(code **)(**(int **)((int)this + 0x30) + 0x4c))
                    (*(int **)((int)this + 0x30),mip,&local_8,(void *)0x0,uVar3);
  if (iVar1 < 0) {
    return false;
  }
  bVar2 = (byte)mip;
  uStack_14 = *(uint *)((int)this + 0x14) >> (bVar2 & 0x1f);
  uStack_10 = *(uint *)((int)this + 0x18) >> (bVar2 & 0x1f);
  if (uStack_14 == 0) {
    uStack_14 = 1;
  }
  if (uStack_10 == 0) {
    uStack_10 = 1;
  }
  if (optionalBaseWidth != 0) {
    uVar3 = optionalBaseWidth >> (bVar2 & 0x1f);
    uVar4 = optionalBaseHeight >> (bVar2 & 0x1f);
    if (uVar3 == 0) {
      uVar3 = 1;
    }
    if (uVar4 == 0) {
      uVar4 = 1;
    }
    if (uVar3 < uStack_14) {
      uStack_14 = uVar3;
    }
    if (uVar4 < uStack_10) {
      uStack_10 = uVar4;
    }
  }
  this_00 = TextureFormat_FindDescriptor(*(uint *)((int)this + 0x28));
  _Size = TextureFormat_TightRowBytes(this_00,uStack_14);
  iVar1 = TextureFormat_BlockRowCount(this_00,uStack_10);
  for (; iVar1 != 0; iVar1 = iVar1 + -1) {
    memcpy(pvStack_4,source,_Size);
    pvStack_4 = (void *)((int)pvStack_4 + local_8);
    source = (void *)((int)source + sourcePitch);
  }
  iVar1 = (**(code **)(**(int **)((int)this + 0x30) + 0x50))(*(int **)((int)this + 0x30),mip);
  return -1 < iVar1;
}

