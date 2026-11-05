/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 004718b0: Load third physical stack input (allocator), save EBX, then zero EBX.
 * 004718b7: Fall through directly into separately owned718B9 with EAX allocator, EBX0 and allocator-comparison flags live. Do not merge owned boundaries.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role XmlCursor_ConstructEntry.
   Physical ABI: ECX cursor; stack+4 stream,+8 optional UTF16 label,+C allocator; returns EAX cursor
   through owned continuation RETC. This owned body has no RET. */

void * __thiscall
XmlCursor_ConstructEntry(void *this,void *stream,ushort *sourceLabel,void *allocator)

{
  void *pvVar1;
  
  *(undefined4 *)this = 0;
  *(undefined1 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  if (allocator == (void *)0x0) {
    allocator = (void *)FUN_0092f9c0();
  }
  *(void **)((int)this + 0x14) = allocator;
  FUN_004e8cb0((void *)((int)this + 0x18),0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
  *(void **)((int)this + 0x3c) = stream;
  if (stream != (void *)0x0) {
    (**(code **)(*(int *)stream + 4))();
  }
  *(undefined4 *)((int)this + 0x40) = 0;
  *(undefined4 *)((int)this + 0x44) = 0;
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined4 *)((int)this + 0x4c) = 0;
  *(undefined4 *)((int)this + 0x50) = 0;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined4 *)((int)this + 0x58) = 0;
  *(undefined4 *)((int)this + 0x5c) = 0;
  FUN_004df460((void *)((int)this + 0x60),0,0,0);
  pvVar1 = XmlParser_CreateWithoutNamespace((ushort *)0x0);
  *(void **)this = pvVar1;
  XmlCursor_InstallHandlers(this,sourceLabel);
  return this;
}

