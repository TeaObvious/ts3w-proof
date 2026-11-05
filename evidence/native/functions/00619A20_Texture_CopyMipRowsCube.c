/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall ECX texture; face,mip,source,sourcePitch,
   RET10hex. Native lock+4C negative HRESULT fails. Copy descriptor tight block rows with separate
   source/destination pitch; null source or mapped pointer skips copy, then unlock result ignored
   and AL1 returned. Payload caller also ignores this Boolean. No complete face-mask validation
   here. */

bool __thiscall Texture_CopyMipRowsCube(void *this,uint face,uint mip,void *source,uint sourcePitch)

{
  void *_Dst;
  int iVar1;
  undefined *this_00;
  size_t _Size;
  uint uVar2;
  uint uVar3;
  int local_8;
  void *pvStack_4;
  
  iVar1 = (**(code **)(**(int **)((int)this + 0x30) + 0x4c))
                    (*(int **)((int)this + 0x30),face,mip,&local_8,(void *)0x0,0);
  if (-1 < iVar1) {
    uVar3 = *(uint *)((int)this + 0x14) >> ((byte)mip & 0x1f);
    uVar2 = *(uint *)((int)this + 0x18) >> ((byte)mip & 0x1f);
    if (uVar3 == 0) {
      uVar3 = 1;
    }
    if (uVar2 == 0) {
      uVar2 = 1;
    }
    this_00 = TextureFormat_FindDescriptor(*(uint *)((int)this + 0x28));
    _Size = TextureFormat_TightRowBytes(this_00,uVar3);
    iVar1 = TextureFormat_BlockRowCount(this_00,uVar2);
    if ((source != (void *)0x0) && (_Dst = pvStack_4, pvStack_4 != (void *)0x0)) {
      for (; iVar1 != 0; iVar1 = iVar1 + -1) {
        memcpy(_Dst,source,_Size);
        source = (void *)((int)source + sourcePitch);
        _Dst = (void *)((int)_Dst + local_8);
      }
    }
    (**(code **)(**(int **)((int)this + 0x30) + 0x50))(*(int **)((int)this + 0x30),face,mip);
    return true;
  }
  return false;
}

