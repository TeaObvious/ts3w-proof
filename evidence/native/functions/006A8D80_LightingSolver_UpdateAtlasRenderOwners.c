/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX solver, stack+4 pointer and stack+8 float, RET8. If byte solver+280 is0
   calls6A7ED0. Updates nested virtual render owners and conditional resource/render state, without
   direct allocator offset/limit/stride stores. Listing reloads the same stack float before second
   virtual call; decompiler unaff_retaddr presentation is not a proven uninitialized read. Opaque
   descendants are not inferred initializers. */

void __thiscall LightingSolver_UpdateAtlasRenderOwners(void *this,uint *param_1,float param_2)

{
  undefined4 unaff_retaddr;
  
  if (*(char *)((int)this + 0x280) == '\0') {
    LightingSolver_RefreshRoomAtlasTiles(this);
  }
  if (-1 < *(int *)((int)this + 0x88)) {
    (**(code **)(*(int *)((int)this + 0x290) + 0xc))(param_1,param_2);
    (**(code **)(*(int *)((int)this + 0x2e8) + 0xc))(param_1,unaff_retaddr);
  }
  if (*(int *)((int)this + 0x23c) != 0) {
    FUN_006a47f0((int)this);
    FUN_006a8a90(this,param_1,param_2);
  }
  return;
}

