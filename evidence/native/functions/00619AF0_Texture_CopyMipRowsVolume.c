/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall ECX texture;
   mip,source,sourcePitch,sourceSlicePitch, RET10hex. Native lock+4C negative HRESULT fails. Logical
   shifted clamped depth and descriptor block rows; memcpy advances separate row and slice strides.
   Unlock result ignored and AL1 returned. Serialized body bounds are caller's responsibility. */

bool __thiscall
Texture_CopyMipRowsVolume(void *this,uint mip,void *source,uint sourcePitch,uint sourceSlicePitch)

{
  int iVar1;
  void *_Dst;
  void *_Src;
  int iVar2;
  undefined *this_00;
  size_t _Size;
  byte bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int local_c;
  int iStack_8;
  void *pvStack_4;
  
  iVar2 = (**(code **)(**(int **)((int)this + 0x30) + 0x4c))
                    (*(int **)((int)this + 0x30),mip,&local_c,(void *)0x0,0);
  if (-1 < iVar2) {
    bVar3 = (byte)mip;
    uVar6 = *(uint *)((int)this + 0x14) >> (bVar3 & 0x1f);
    uVar5 = *(uint *)((int)this + 0x18) >> (bVar3 & 0x1f);
    if (uVar6 == 0) {
      uVar6 = 1;
    }
    if (uVar5 == 0) {
      uVar5 = 1;
    }
    uVar4 = *(uint *)((int)this + 0x24) >> (bVar3 & 0x1f);
    if (uVar4 == 0) {
      uVar4 = 1;
    }
    this_00 = TextureFormat_FindDescriptor(*(uint *)((int)this + 0x28));
    _Size = TextureFormat_TightRowBytes(this_00,uVar6);
    iVar2 = TextureFormat_BlockRowCount(this_00,uVar5);
    for (; iVar1 = iVar2, _Dst = pvStack_4, _Src = source, uVar4 != 0; uVar4 = uVar4 - 1) {
      for (; iVar1 != 0; iVar1 = iVar1 + -1) {
        memcpy(_Dst,_Src,_Size);
        _Dst = (void *)((int)_Dst + local_c);
        _Src = (void *)((int)_Src + sourcePitch);
      }
      source = (void *)((int)source + sourceSlicePitch);
      pvStack_4 = (void *)((int)pvStack_4 + iStack_8);
    }
    (**(code **)(**(int **)((int)this + 0x30) + 0x50))(*(int **)((int)this + 0x30),mip);
    return true;
  }
  return false;
}

