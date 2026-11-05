/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX context, RET 4: supplied wide-handle byte; EAX
   returns this. Initialize four 32-byte containers: key-to-handle +0, handle-to-key +20h, local
   UInt16 handle set +40h, old-to-new key map +60h. Original allocator tags identify
   ResourceTableIOContext. Version +80h starts at one; width +82h is the constructor argument. Older
   serialized versions preserve this configured width.
   
   Analyst note (PC1.67 construction persistence contract): Initialize original maps with
   load1,growth2,one sentinel bucket,count0,nextResize0; retain explicit width argument. Native
   ordinary lot save constructs a fresh narrow context instead of retaining unused source
   registrations. */

void * __thiscall ResourceReferences_ConstructContext(void *this,byte wideHandles)

{
  float fVar1;
  undefined4 uVar2;
  
  uVar2 = DAT_0103fd88;
  fVar1 = FLOAT_00f998f8;
  *(float *)((int)this + 0x10) = FLOAT_00f998f8;
  *(undefined4 *)((int)this + 0x14) = uVar2;
  *(char **)((int)this + 0x1c) = "ResourceLoad/ResourceTableIOContext/KeyToHandleMap";
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 8) = 1;
  *(undefined4 **)((int)this + 4) = &DAT_0114d900;
  *(float *)((int)this + 0x30) = fVar1;
  *(undefined4 *)((int)this + 0x34) = uVar2;
  *(char **)((int)this + 0x3c) = "ResourceLoad/ResourceTableIOContext/HandleToKeyMap";
  *(undefined4 **)((int)this + 0x24) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x28) = 1;
  *(float *)((int)this + 0x50) = fVar1;
  *(undefined4 *)((int)this + 0x54) = uVar2;
  *(char **)((int)this + 0x5c) = "ResourceLoad/ResourceTableIOContext/LocalKeyHandleSet";
  *(undefined4 **)((int)this + 0x44) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x4c) = 0;
  *(undefined4 *)((int)this + 0x58) = 0;
  *(undefined4 *)((int)this + 0x48) = 1;
  *(float *)((int)this + 0x70) = fVar1;
  *(undefined4 *)((int)this + 0x74) = uVar2;
  *(char **)((int)this + 0x7c) = "ResourceLoad/ResourceTableIOContext/RemapHashMap";
  *(undefined4 *)((int)this + 0x6c) = 0;
  *(undefined4 *)((int)this + 0x78) = 0;
  *(undefined4 **)((int)this + 100) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x68) = 1;
  *(undefined2 *)((int)this + 0x80) = 1;
  *(byte *)((int)this + 0x82) = wideHandles;
  return this;
}

