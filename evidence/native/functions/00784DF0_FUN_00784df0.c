/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * ECX six-byte destination plus two endpoint pointer stack words, RET8. Each planar Single is loaded through x87 FISTP Int32 then narrowed to low byte; endpoint+8 level low byte copied. No local control-word change, range/finite/identical-endpoint check. Inferred partial assignment to input pointer is stack aliasing, not modification of input point storage.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00784DF0_FUN_00784df0.asm
 */

void __thiscall FUN_00784df0(void *this,float *param_1,float *param_2)

{
  float *pfVar1;
  
  pfVar1 = param_1;
  param_1._0_1_ = (undefined1)(int)ROUND(*param_1);
  *(undefined1 *)this = param_1._0_1_;
  param_1._0_1_ = (undefined1)(int)ROUND(pfVar1[1]);
  *(undefined1 *)((int)this + 1) = param_1._0_1_;
  *(undefined1 *)((int)this + 2) = *(undefined1 *)(pfVar1 + 2);
  param_1._0_1_ = (undefined1)(int)ROUND(*param_2);
  *(undefined1 *)((int)this + 3) = param_1._0_1_;
  param_1._0_1_ = (undefined1)(int)ROUND(param_2[1]);
  *(undefined1 *)((int)this + 4) = param_1._0_1_;
  *(undefined1 *)((int)this + 5) = *(undefined1 *)(param_2 + 2);
  return;
}

