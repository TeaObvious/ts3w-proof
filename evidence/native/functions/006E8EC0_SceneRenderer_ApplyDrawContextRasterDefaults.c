/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. Shared scene bucket raster defaults, not a
   mirror-only draw. ECX scene owner, one draw-context pointer stack word, RET4;
   full162bytes59instructions. Context+4 bit08 set: indexed state0060FFE0 gets2, cull
   index(context+10!=0)+1. Bit clear: first indexed state2-(owner+25C!=0); cull0 if owner+263 is
   zero, otherwise(context+10!=0)+1; color maskF only on this branch. Both branches then depth
   enabled1, depth compare index3, depth write1, alpha test0, alpha blend0. Cull table maps0/1/2 to
   NONE/CW/CCW. Context+10 is an orientation selector: mirror path sets it and ordered buckets also
   temporarily invert/restore it, so it is not a unique mirror tag. Owner-field producers and first
   indexed-state semantics are outside this selected review. No source prototype retyping or bytes
   changed. */

void __thiscall SceneRenderer_ApplyDrawContextRasterDefaults(void *this,int param_1)

{
  void *this_00;
  int iVar1;
  
  this_00 = (void *)Graphics_GetManagerSingleton();
  if ((*(uint *)(param_1 + 4) >> 3 & 1) == 0) {
    FUN_0060ffe0(this_00,2 - (uint)(*(char *)((int)this + 0x25c) != '\0'));
    iVar1 = 0;
    if (*(char *)((int)this + 0x263) != '\0') {
      iVar1 = (*(char *)(param_1 + 0x10) != '\0') + 1;
    }
    RenderDevice_SetCullModeFromIndex(this_00,iVar1);
    FUN_0060fda0(this_00,0xf);
  }
  else {
    FUN_0060ffe0(this_00,2);
    RenderDevice_SetCullModeFromIndex(this_00,(*(char *)(param_1 + 0x10) != '\0') + 1);
  }
  RenderDevice_SetDepthEnabled(this_00,'\x01');
  RenderDevice_SetDepthCompareIndex(this_00,3);
  RenderDevice_SetDepthWriteByte(this_00,1);
  RenderDevice_SetAlphaTestByte(this_00,0);
  RenderDevice_SetAlphaBlendByte(this_00,0);
  return;
}

