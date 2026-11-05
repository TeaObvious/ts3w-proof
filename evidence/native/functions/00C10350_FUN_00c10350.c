/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: Physical ECX baseobject plus rawF32override, voidRET4. Existing helper at21C/74 supplies receiver; nullreturns. COMISSoverride,zero thenJA accepts only positiveordered override. Otherwise asks6FAA90 then6E8740, x87 FMUL102AF6C/narrowF32, or0 when absent. Thus0/negative/unordered override usesclock, not explicitmidnight. Remaining daylight remap/effectiveangle984→C159B0 retained; original child clockunits, interpolation, exceptional FP and full timeline not generalized. */

void __thiscall FUN_00c10350(void *this,float param_1)

{
  void *this_00;
  int iVar1;
  float10 fVar2;
  float fVar3;
  float fVar4;
  
  this_00 = (void *)FUN_004b3790(*(int *)(*(int *)((int)this + 0x21c) + 0x74));
  if (this_00 != (void *)0x0) {
    if (param_1 <= 0.0) {
      iVar1 = FUN_006faa90((int)this);
      if (iVar1 == 0) {
        param_1 = 0.0;
      }
      else {
        fVar2 = FUN_006e8740(iVar1);
        param_1 = (float)(fVar2 * (float10)0.00027777778);
      }
    }
    fVar4 = *(float *)((int)this + 0x9c4) + *(float *)((int)this + 0x974);
    fVar3 = (*(float *)((int)this + 0x9c0) + *(float *)((int)this + 0x978)) - fVar4;
    fVar4 = param_1 - fVar4;
    if (fVar4 < 0.0) {
      fVar4 = fVar4 + 24.0;
    }
    if (fVar3 <= fVar4) {
      fVar4 = (fVar4 - fVar3) / (24.0 - fVar3);
      param_1 = fVar4 * 12.0 + 18.0;
      if (24.0 < param_1) {
        param_1 = param_1 - 24.0;
      }
      fVar4 = fVar4 + 1.0;
    }
    else {
      fVar4 = fVar4 / fVar3;
      param_1 = fVar4 * 12.0 + 6.0;
    }
    *(float *)((int)this + 0x984) = fVar4 * 3.1415927;
    FUN_00c159b0(this_00,param_1);
  }
  return;
}
