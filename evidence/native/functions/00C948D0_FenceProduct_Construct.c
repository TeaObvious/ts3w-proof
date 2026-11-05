/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECX storage, no
   stack arguments, plainRET, EAX returns same storage. Calls common/fence base C998E0; installs
   vtable0107CBC4. Four16-byte key slots+A8,+B8,+C8,+D8 zeroed. UInt32+E8=1;
   byte150=0,151=0,152=1,153=0. Raw constant0107CBA0 is3F800000, copied into+154/+158 (binary32
   1.0);+15C/+160=0. Preset vector+164/+168/+16C zero; label+170 is Lot/CTProductFence/Presets.
   Other base setters and bitmask(+90 AND FFFEF9C2 OR982) remain visible; their broader semantics
   are not inferred. Reader vtable slot+18 isC94C00; slot+C is QueryInterface, not serialization
   writer. */

void * __thiscall FenceProduct_Construct(void *this)

{
  undefined4 uVar1;
  
  PartitionProduct_Construct(this);
  uVar1 = DAT_0107cba0;
  *(undefined ***)this = &PTR_FUN_0107cbc4;
  *(undefined4 *)((int)this + 0xa8) = 0;
  *(undefined4 *)((int)this + 0xac) = 0;
  *(undefined4 *)((int)this + 0xb0) = 0;
  *(undefined4 *)((int)this + 0xb4) = 0;
  *(undefined4 *)((int)this + 0xb8) = 0;
  *(undefined4 *)((int)this + 0xbc) = 0;
  *(undefined4 *)((int)this + 0xc0) = 0;
  *(undefined4 *)((int)this + 0xc4) = 0;
  *(undefined4 *)((int)this + 200) = 0;
  *(undefined4 *)((int)this + 0xcc) = 0;
  *(undefined4 *)((int)this + 0xd0) = 0;
  *(undefined4 *)((int)this + 0xd4) = 0;
  *(undefined4 *)((int)this + 0xd8) = 0;
  *(undefined4 *)((int)this + 0xdc) = 0;
  *(undefined4 *)((int)this + 0xe0) = 0;
  *(undefined4 *)((int)this + 0xe4) = 0;
  *(undefined4 *)((int)this + 0x154) = uVar1;
  *(undefined4 *)((int)this + 0x158) = uVar1;
  *(undefined4 *)((int)this + 0xe8) = 1;
  *(undefined1 *)((int)this + 0x150) = 0;
  *(undefined1 *)((int)this + 0x151) = 0;
  *(undefined1 *)((int)this + 0x152) = 1;
  *(undefined1 *)((int)this + 0x153) = 0;
  *(undefined4 *)((int)this + 0x15c) = 0;
  *(undefined4 *)((int)this + 0x160) = 0;
  *(undefined4 *)((int)this + 0x164) = 0;
  *(undefined4 *)((int)this + 0x168) = 0;
  *(undefined4 *)((int)this + 0x16c) = 0;
  *(char **)((int)this + 0x170) = "Lot/CTProductFence/Presets";
  FUN_00c996d0(this,1);
  FUN_00c996e0(this,0);
  FUN_00c996f0(this,0xb);
  *(uint *)((int)this + 0x90) = *(uint *)((int)this + 0x90) & 0xfffef9c2 | 0x982;
  FUN_00513a90(this,3);
  FUN_00c99710(this,1);
  return this;
}

