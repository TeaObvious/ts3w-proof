/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECX storage, no
   stack arguments, plainRET, EAX returns receiver. Calls common C93020, installs vtable0107CF8C.
   Three16-byte model key slots+88/+98/+A8 zeroed. Preset vector+E0/+E4/+E8 zero; label+EC literally
   says Lot/CTProductModularStairs/Presets despite this being the CRAL factory branch. Do not
   classify the type from that reused label. Reader slot+18 isC96530; QueryInterface slot+C
   isC95EE0. */

void * __thiscall RailingProduct_Construct(void *this)

{
  CatalogProduct_ConstructCommonDefaults(this);
  *(undefined ***)this = &PTR_FUN_0107cf8c;
  *(undefined4 *)((int)this + 0x88) = 0;
  *(undefined4 *)((int)this + 0x8c) = 0;
  *(undefined4 *)((int)this + 0x90) = 0;
  *(undefined4 *)((int)this + 0x94) = 0;
  *(undefined4 *)((int)this + 0x98) = 0;
  *(undefined4 *)((int)this + 0x9c) = 0;
  *(undefined4 *)((int)this + 0xa0) = 0;
  *(undefined4 *)((int)this + 0xa4) = 0;
  *(undefined4 *)((int)this + 0xa8) = 0;
  *(undefined4 *)((int)this + 0xac) = 0;
  *(undefined4 *)((int)this + 0xb0) = 0;
  *(undefined4 *)((int)this + 0xb4) = 0;
  *(undefined4 *)((int)this + 0xe0) = 0;
  *(undefined4 *)((int)this + 0xe4) = 0;
  *(undefined4 *)((int)this + 0xe8) = 0;
  *(char **)((int)this + 0xec) = "Lot/CTProductModularStairs/Presets";
  return this;
}

