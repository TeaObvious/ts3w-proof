/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role. Physical ECX storage, no stack
   arguments, plain RET; EAX returns receiver. Calls common C93020 and installs vtable0107D270.
   Initializes pattern+88=0, full key+90/+94/+98/+9C=0, sort+A0=0; string storage+A4/+A8 points
   to011C8E54,+AC to011C8E55,+B0 label Lot/CTCatalog/ProductPattern/SurfaceType. Terrain+B4=0; raw
   color+B8=00E0E0E0; vector+C0/+C4/+C8=0, label+CC Lot/CTCatalog/ProductPattern/Presets. Does not
   establish all intervening bytes zero, notably+8C. Factory C8CD90 selects this constructor for
   resource515CA4CD and allocationD0. Vtable+C is QueryInterface C99950, +18 is reader C9A220. */

void * __thiscall CatalogPattern_Construct(void *this)

{
  CatalogProduct_ConstructCommonDefaults(this);
  *(undefined ***)this = &PTR_FUN_0107d270;
  *(undefined4 *)((int)this + 0x88) = 0;
  *(undefined4 *)((int)this + 0x90) = 0;
  *(undefined4 *)((int)this + 0x94) = 0;
  *(undefined4 *)((int)this + 0x98) = 0;
  *(undefined4 *)((int)this + 0x9c) = 0;
  *(undefined4 *)((int)this + 0xa0) = 0;
  *(char **)((int)this + 0xb0) = "Lot/CTCatalog/ProductPattern/SurfaceType";
  *(undefined **)((int)this + 0xac) = &DAT_011c8e55;
  *(undefined1 **)((int)this + 0xa4) = &DAT_011c8e54;
  *(undefined1 **)((int)this + 0xa8) = &DAT_011c8e54;
  *(undefined4 *)((int)this + 0xb4) = 0;
  *(undefined4 *)((int)this + 0xb8) = 0xe0e0e0;
  *(undefined4 *)((int)this + 0xc0) = 0;
  *(undefined4 *)((int)this + 0xc4) = 0;
  *(undefined4 *)((int)this + 200) = 0;
  *(char **)((int)this + 0xcc) = "Lot/CTCatalog/ProductPattern/Presets";
  return this;
}

