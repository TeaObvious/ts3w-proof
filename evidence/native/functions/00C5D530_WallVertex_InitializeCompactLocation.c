/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX destination, stack+4 Float32X/Z+Int32level tuple, RET4; stored inferred return
   metadata remains unchanged. Stores ID FFFFFFFF; X and Z each pass Float32 FLD/FISTP Int32 under
   inherited x87 control then low byte to+4/+5; copies level low byte to+6; clears DWORD+8/+C. No
   local control-word change. Normal original writer supplies signed-byte integral X/Z; other FP
   rounding/exception modes remain separate, not inferred nearest parity. */

void __thiscall WallVertex_InitializeCompactLocation(void *this,float *param_1)

{
  float *pfVar1;
  
  pfVar1 = param_1;
  *(undefined4 *)this = 0xffffffff;
  param_1._0_1_ = (undefined1)(int)ROUND(*param_1);
  *(undefined1 *)((int)this + 4) = param_1._0_1_;
  param_1._0_1_ = (undefined1)(int)ROUND(pfVar1[1]);
  *(undefined1 *)((int)this + 5) = param_1._0_1_;
  *(undefined1 *)((int)this + 6) = *(undefined1 *)(pfVar1 + 2);
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  return;
}

