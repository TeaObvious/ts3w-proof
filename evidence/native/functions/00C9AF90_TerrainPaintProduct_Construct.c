/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role. Physical ECX storage, no stack
   arguments, plain RET; EAX returns receiver. Calls TerrainBrushProduct_Construct C93600, installs
   vtable0107D348. Full brush key+C0/+C4/+C8/+CC=0; category+D4=0. This constructor does not
   initialize terrain+D0; reader supplies either zero or a wire value. Factory C8CD90 selects this
   constructor for resource04ED4BB2, allocationD8. Vtable+C QueryInterface C9AE80, +18 reader
   C9AEA0. */

void * __thiscall TerrainPaintProduct_Construct(void *this)

{
  TerrainBrushProduct_Construct(this);
  *(undefined ***)this = &PTR_FUN_0107d348;
  *(undefined4 *)((int)this + 0xc0) = 0;
  *(undefined4 *)((int)this + 0xc4) = 0;
  *(undefined4 *)((int)this + 200) = 0;
  *(undefined4 *)((int)this + 0xcc) = 0;
  *(undefined4 *)((int)this + 0xd4) = 0;
  return this;
}

