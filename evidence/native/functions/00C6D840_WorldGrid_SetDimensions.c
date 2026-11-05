/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXgrid+three signed-word carriers RET0C void. Multiply width*depth*levels modulo32; call
   physical virtual8 with ONE element-countDWORD (ECXgrid; calleeRET4), then store
   width4/depth8/levelsC. Explicit localcall overrideC6D862 prevents incorrect virtual ABI
   inference. Portable safe allocation bounds are separate from raw native word multiplication. */

void __thiscall WorldGrid_SetDimensions(void *this,int width,int depth,int levels)

{
  (**(code **)(*(int *)this + 8))(this,width * depth * levels);
  *(int *)((int)this + 4) = width;
  *(int *)((int)this + 8) = depth;
  *(int *)((int)this + 0xc) = levels;
  return;
}

