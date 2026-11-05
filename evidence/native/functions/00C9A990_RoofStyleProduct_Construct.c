/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 roof catalog reader/lookup contract): ECX product, no physical stack
   arguments, plain RET; EAX returns same pointer. After common base constructor C93020, install
   vtable107D2C0, zero type+88, both16byte keys+90/+A0 and flags+B4. MOVSS original binary32
   bits3FDDB3D0 from107D2BC to+B0 (not decimal-rounded or interpreted as an angle). This establishes
   default field storage and actual reader dispatch; full base initialization and geometry/atlas
   generation remain separate. */

void * __thiscall RoofStyleProduct_Construct(void *this)

{
  undefined4 uVar1;
  
  CatalogProduct_ConstructCommonDefaults(this);
  uVar1 = DAT_0107d2bc;
  *(undefined4 *)((int)this + 0x88) = 0;
  *(undefined ***)this = &PTR_FUN_0107d2c0;
  *(undefined4 *)((int)this + 0x90) = 0;
  *(undefined4 *)((int)this + 0x94) = 0;
  *(undefined4 *)((int)this + 0x98) = 0;
  *(undefined4 *)((int)this + 0x9c) = 0;
  *(undefined4 *)((int)this + 0xa0) = 0;
  *(undefined4 *)((int)this + 0xa4) = 0;
  *(undefined4 *)((int)this + 0xa8) = 0;
  *(undefined4 *)((int)this + 0xac) = 0;
  *(undefined4 *)((int)this + 0xb4) = 0;
  *(undefined4 *)((int)this + 0xb0) = uVar1;
  return this;
}

