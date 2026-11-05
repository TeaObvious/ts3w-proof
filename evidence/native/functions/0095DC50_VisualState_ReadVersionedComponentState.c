/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 VisualState producer contract. Analyst-assigned name; ECX component, reader
   pointer and versionDescriptor pointer on stack, RET8; returns reader byte14 in AL. Descriptor
   version is UNSIGNED UInt16 at+4. v<7 reads BYTE then OR100; v>=7 reads UInt16 with reader endian
   word10. These primitive reads reuse the caller reader stack slot as scalar output; saved EDI
   still holds reader: decompiler pointer-to-integer casts are stack-slot reuse, NOT pointer-valued
   flags. Store UInt32 flags atcomponent8; apply (flags&FFE8991B)|8, optional owner
   component-mask11EA0FC bit40, always20, v<8 bit800, v<3 bit10. Catalog lookup11EE034
   viaC8EBB0(owner+18), catalog9C bit2000 controls component flag100000, otherwise clear it. v>=2
   reads UInt32 geometryState directly into component14, else stores0. v>=5 reads UInt32 componentC;
   older versions leave C untouched. Accumulate read status after EACH primitive, but no local
   rollback or early failure exit; writes already performed remain. No render command/callback
   invocation in this reader. Complete vtable/manager phase, writer and malformed/truncated-input
   effects of children remain separate. */

uchar __thiscall
VisualState_ReadVersionedComponentState(void *this,void *reader,void *versionDescriptor)

{
  ushort uVar1;
  void *this_00;
  bool bVar2;
  uint uVar3;
  int iVar4;
  
  this_00 = reader;
  uVar1 = *(ushort *)((int)versionDescriptor + 4);
  if (uVar1 < 7) {
    bVar2 = Stream_ReadByte(*(void **)((int)reader + 8),(byte *)&reader);
    StreamReader_AccumulateStatus(this_00,bVar2);
                    /* Stack slot originally held reader pointer; saved EDI is real reader. MOVZX
                       BYTE scalar output here, not pointer-valued serialized flags. */
    *(uint *)((int)this + 8) = (uint)reader & 0xff | 0x100;
  }
  else {
    bVar2 = Stream_ReadUInt16(*(void **)((int)reader + 8),(ushort *)&reader,
                              *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar2);
    *(uint *)((int)this + 8) = (uint)reader & 0xffff;
  }
  uVar3 = *(uint *)((int)this + 8) & 0xffe8991b;
  *(uint *)((int)this + 8) = uVar3 | 8;
  if ((*(uint *)(*(int *)((int)this + 4) + 0x2c) & DAT_011ea0fc) != 0) {
    *(uint *)((int)this + 8) = uVar3 | 0x48;
  }
  *(uint *)((int)this + 8) = *(uint *)((int)this + 8) | 0x20;
  uVar3 = *(uint *)((int)this + 8);
  if ((uVar1 < 8) && (*(uint *)((int)this + 8) = uVar3 | 0x800, uVar1 < 3)) {
    *(uint *)((int)this + 8) = uVar3 | 0x810;
  }
  if (DAT_011ee034 != (void *)0x0) {
    iVar4 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)(*(int *)((int)this + 4) + 0x18));
    if ((iVar4 != 0) && ((*(uint *)(iVar4 + 0x9c) >> 0xd & 1) != 0)) {
      *(uint *)((int)this + 8) = *(uint *)((int)this + 8) | 0x100000;
      goto LAB_0095dd2c;
    }
  }
  *(uint *)((int)this + 8) = *(uint *)((int)this + 8) & 0xffefffff;
LAB_0095dd2c:
                    /* Unsigned UInt16 version: v>=2 reads geometryStateUInt32; v<2 writes0. Status
                       accumulates after read; no transaction rollback. */
  if (uVar1 < 2) {
    *(undefined4 *)((int)this + 0x14) = 0;
  }
  else {
    bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x14),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar2);
  }
  if (4 < uVar1) {
    bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0xc),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar2);
  }
  return *(uchar *)((int)this_00 + 0x14);
}

