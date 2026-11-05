/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: samples the lot level height at LotXZLevel {float x at0; float z at4; signed int level
   at8}. Original integer load at 00a8c7be and signed compares/FILD establish level type; Ghidra
   input was corrected from float*. Returns height in x87 ST0 (nominal source return type remains
   inferred). A recursion guard at this+116 returns zero; outside-lot X/Z can forward through a
   guarded world height query. Below/above stored min/max it samples the boundary level recursively
   and extrapolates by 3.0 per level. In range it floors X/Z, clamps the top cell index, uses a
   vertex fast path within 0.001 of both cell origins, otherwise reads four float corner heights and
   performs triangle interpolation. Height sums choose the diagonal, then fractional X/Z choose the
   triangle. Original arithmetic is authoritative; this is not bilinear interpolation.
   
   PC1.67 original static instructions. Flatness closure: centre+.5/+.5 uses actualfloor-grid
   sampler, not objectpivot nor bilinear surface. Native A8C900..91B does two ADDSS binary32diagonal
   sums then COMISS/JBE; strict sum00+11>sum10+01 chooses00/11 diagonal, rounded tie chooses01/10.
   Subsequent triangle interpolation is x87 and returnsST0. A host max of binary64sums can select a
   different diagonal afterfloatroundedtie. Exact finite exampleh00=1,h01=0,h10=1,h11=2^-24:
   sumsroundtie1, nativecentre.5 while unrounded-maxmean is.5000000298023224. Fullreturn
   precision/specialfloor/outside/level-extrapolation remains existing sampler contract.
   
   Numerical domain: the finite rounded-tie centre example assumes ordinary nearest-even SSE
   rounding. Process MXCSR initialization and all ambient x87 controls are not established by these
   selected bodies; the ADDSS/COMISS/JBE decision itself is instruction-backed. */

/* Instruction-qualified outside branch supplement: A8C69D guard byte116 already set returns
   x87 zero/RET4. Out-of-lot with null world also returns zero. With world, sets guard1 before
   AB16E0 transform call. A8C72D/732 converts signed level to binary32 then MULSS constant3.0.
   C6A090 receives converted X/Z and seven zero stackwords. Returned x87 height is rounded by
   FSTP to binary32, lot virtual64 supplies position vector, FSUB subtracts itsY then FSTP rounds.
   MOVSS from ESP+20 retains level*3 term, ADDPS atA8C7A9 adds rounded local terrain and FLD
   returns that float via ST0. Guard resets0 on this normal path atA8C79E, not an exception-safe
   finally guarantee. fStack_54/fStack_64 in the genuine C are stack alias artifacts, not hidden
   inputs or a different formula. In-range extrapolation instead uses signed integer subtraction,
   FILD/FMUL/FADDP-or-FSUBP with x87 intermediate precision. World/provider/raw fallback and full
   transform internals, exceptional floats, ambient CW/MXCSR and reentrant/thread lifetime remain
   separate original questions; a CLR terrain cache clamp is not established by this branch. */

float10 __thiscall LotLevelHeight_SampleLocalPosition(void *param_1,LotXZLevel *param_2)

{
  void *this;
  void *pvVar1;
  int iVar2;
  int iVar3;
  float10 fVar4;
  float fVar5;
  float fVar6;
  float fStack_64;
  undefined4 local_60;
  float local_5c;
  float local_58;
  float fStack_54;
  float local_50;
  LotXZLevel local_48;
  LotXZLevel local_3c;
  float local_30;
  float local_2c;
  float local_28;
  float local_24;
  undefined1 local_20 [28];
  
  pvVar1 = DAT_011edbc4;
  if (*(char *)((int)param_1 + 0x116) != '\0') {
    return (float10)0;
  }
  local_48.x = param_2->x;
  this = *(void **)((int)param_1 + 4);
  local_48.z = param_2->z;
  if ((((local_48.x < 0.0) || ((float)*(int *)((int)this + 0x174) < local_48.x)) ||
      (local_48.z < 0.0)) || ((float)*(int *)((int)this + 0x178) < local_48.z)) {
    fVar4 = (float10)0;
    if (DAT_011edbc4 != (void *)0x0) {
      local_58 = (float)fVar4;
      local_5c = (float)fVar4;
      *(undefined1 *)((int)param_1 + 0x116) = 1;
      FUN_00ab16e0(this,param_2->x,param_2->z,&local_58,&local_5c);
      local_50 = (float)param_2->level * 3.0;
      fVar4 = WorldSurface_QueryHeight
                        (pvVar1,local_58,local_5c,0,'\0','\0',(undefined1 *)0x0,(undefined1 *)0x0,
                         '\0','\0');
      local_60 = (float)fVar4;
      iVar2 = (**(code **)(**(int **)((int)param_1 + 4) + 100))(local_20);
      fVar5 = *(float *)(iVar2 + 4);
      *(undefined1 *)((int)param_1 + 0x116) = 0;
      return (float10)(fStack_54 + (fStack_64 - fVar5));
    }
  }
  else {
    iVar2 = param_2->level;
    local_48.level = *(int *)((int)param_1 + 0x10);
    if (iVar2 < local_48.level) {
      fVar4 = LotLevelHeight_SampleLocalPosition(param_1,&local_48);
      return fVar4 - (float10)(*(int *)((int)param_1 + 0x10) - iVar2) * (float10)3.0;
    }
    local_3c.level = *(int *)((int)param_1 + 0x14);
    if (local_3c.level < iVar2) {
      local_3c.x = local_48.x;
      local_3c.z = local_48.z;
      fVar4 = LotLevelHeight_SampleLocalPosition(param_1,&local_3c);
      return (float10)(iVar2 - *(int *)((int)param_1 + 0x14)) * (float10)3.0 + fVar4;
    }
    local_48.x = param_2->x;
    local_48.z = param_2->z;
    local_48.level = iVar2;
    local_5c = (float)FUN_004067a0(local_48.x);
    iVar3 = FUN_004067a0(local_48.z);
    if (*(int *)((int)param_1 + 8) <= (int)local_5c) {
      local_5c = (float)(*(int *)((int)param_1 + 8) + -1);
    }
    if (*(int *)((int)param_1 + 0xc) <= iVar3) {
      iVar3 = *(int *)((int)param_1 + 0xc) + -1;
    }
    fVar5 = local_48.x - (float)(int)local_5c;
    fVar6 = local_48.z - (float)iVar3;
    if ((fVar5 < 0.001) && (fVar6 < 0.001)) {
      local_60._3_1_ = (undefined1)((uint)fVar6 >> 0x18);
      local_60._0_3_ = CONCAT12((char)iVar2,CONCAT11((char)iVar3,SUB41(local_5c,0)));
      local_5c = fVar5;
      fVar4 = LotLevelHeight_ReadVertex(param_1,(char *)&local_60);
      return fVar4;
    }
    local_60 = fVar6;
    fVar6 = local_5c;
    local_5c = fVar5;
    HeightGrid_ReadFourCorners
              (*(void **)((int)param_1 + 0x24),(int)fVar6,iVar3,
               iVar2 - *(int *)((int)param_1 + 0x10),&local_30);
    if (local_28 + local_2c < local_30 + local_24) {
      if (0.0 < local_5c - local_60) {
        return ((float10)local_28 - (float10)local_30) * (float10)local_5c +
               ((float10)local_24 - (float10)local_28) * (float10)local_60 + (float10)local_30;
      }
      return ((float10)local_2c - (float10)local_30) * (float10)local_60 +
             ((float10)local_24 - (float10)local_2c) * (float10)local_5c + (float10)local_30;
    }
    if (local_60 + local_5c < 1.0) {
      fVar4 = (float10)local_30;
      return ((float10)local_28 - fVar4) * (float10)local_5c +
             ((float10)local_2c - fVar4) * (float10)local_60 + fVar4;
    }
    fVar4 = (float10)local_2c +
            ((float10)local_24 - (float10)local_2c) * (float10)local_5c +
            ((float10)1 - (float10)local_60) * ((float10)local_28 - (float10)local_24);
  }
  return fVar4;
}

