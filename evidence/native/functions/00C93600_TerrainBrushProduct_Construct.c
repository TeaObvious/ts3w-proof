/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role. Physical ECX storage, no stack
   arguments, plain RET; EAX returns receiver. Calls common C93020 and installs vtable0107CA94.
   Byte+88=0; UInt32 operation+90,opposite+94 and full profile-key words+98/+9C/+A0/+A4=0. This body
   does not initialize orientation+A8,width+AC,strength+B0,base byte+B4,wiggle+B8; do not invent
   defaults for them. Vtable+18 selects C93470. */

void * __thiscall TerrainBrushProduct_Construct(void *this)

{
  CatalogProduct_ConstructCommonDefaults(this);
  *(undefined1 *)((int)this + 0x88) = 0;
  *(undefined ***)this = &PTR_FUN_0107ca94;
  *(undefined4 *)((int)this + 0x90) = 0;
  *(undefined4 *)((int)this + 0x94) = 0;
  *(undefined4 *)((int)this + 0x98) = 0;
  *(undefined4 *)((int)this + 0x9c) = 0;
  *(undefined4 *)((int)this + 0xa0) = 0;
  *(undefined4 *)((int)this + 0xa4) = 0;
  return this;
}

