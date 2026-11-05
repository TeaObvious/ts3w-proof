/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=load/growth/threshold policy, output growth
   record,bucketCount,currentCount,increment UInt32 RET16. Inputs are INTEGER DWORDs. Argument stack
   slots are then REUSED for IEEE float bits and saved x87 control words: numeric uint/float casts
   in actual C at these overwrites are TYPE-PUNNING ARTIFACTS, not original CVT instructions. ROUND
   at FISTP is governed by the temporary truncation control word. Wrapped current+increment compared
   unsigned against threshold. If exceeded, bucketCount1 is treated as0; required=count/load uses
   x87; growth branch selects max(Float32(growth*Float32(oldBuckets)),storedFloat32(required)),
   truncates positive selection via temporary x87 round-toward-zero control, lower_bound UInt32
   prime tableFB9580..FB9980, then threshold=ceil(selectedPrime*load). Original uses mixed x87/SSE
   rounding and restores control word. Fixed selected path load1/growth2, at most256 keys, yields
   bucket counts2,5,11,23,47,97,199,409 with exact small integer thresholds; this does not prove
   general large-count/NaN policy or bound safety at table end. Output byte0 grow and DWORD4 new
   bucket count; no-growth writes false/0.
   
   Analyst note (PC1.67 construction persistence contract): Complete256 UInt32 prime capacities
   atFB9580..FB9980, first2,lastFFFFFFFB; lower_bound uses full range. Existing x87/SSE,
   truncation-control and unsigned-input annotations describe growth. Native end-of-table
   dereference has no local guard. */

void __thiscall
HashGrowth_SelectPrimeCapacity
          (void *this,void *outputGrowth,uint bucketCount,uint currentCount,uint increment)

{
  float fVar1;
  float fVar2;
  uint uVar3;
  float *pfVar4;
  uint *puVar5;
  ushort in_FPUControlWord;
  double dVar6;
  uint local_8;
  
  uVar3 = increment + currentCount;
  if (*(uint *)((int)this + 8) < uVar3) {
    if (bucketCount == 1) {
      bucketCount = 0;
    }
    fVar1 = *(float *)this;
    fVar2 = (float)(int)uVar3;
    if ((int)uVar3 < 0) {
      fVar2 = fVar2 + 4.2949673e+09;
    }
    increment = (uint)(fVar2 / fVar1);
                    /* FST stores binary32 REQUIRED bits into a reused integer input slot.
                       Decompiler uint cast is bit-storage/type-punning, NOT numeric float-to-uint
                       conversion. */
    currentCount = (uint)(float)(int)bucketCount;
    if ((int)bucketCount < 0) {
      currentCount = (uint)((float)currentCount + 4.2949673e+09);
    }
                    /* FST stores float oldBucketCount into reused count slot. Later integer/float
                       casts of that slot are alias artifacts. */
    if ((float)currentCount < (float)increment) {
      currentCount = (uint)(*(float *)((int)this + 4) * (float)currentCount);
      pfVar4 = (float *)&currentCount;
      if ((float)currentCount <= (float)increment) {
        pfVar4 = (float *)&increment;
      }
      increment = (uint)in_FPUControlWord;
      currentCount = increment | 0xc00;
                    /* FISTP QWORD under temporary round-toward-zero x87 control; low DWORD becomes
                       integer lower_bound key. FST/FLDCW alias casts are not numeric conversions.
                        */
      local_8 = (uint)(longlong)ROUND(*pfVar4);
      increment = local_8;
      puVar5 = UInt32Range_LowerBound((uint *)&DAT_00fb9580,(uint *)&DAT_00fb9980,&increment);
      uVar3 = *puVar5;
      fVar2 = (float)(int)uVar3;
      if ((int)uVar3 < 0) {
        fVar2 = fVar2 + 4.2949673e+09;
      }
      increment = uVar3;
      dVar6 = ceil((double)(fVar2 * fVar1));
      *(uint *)((int)outputGrowth + 4) = uVar3;
      *(undefined1 *)outputGrowth = 1;
      local_8 = (uint)(longlong)ROUND(dVar6);
      *(uint *)((int)this + 8) = local_8;
      return;
    }
    dVar6 = ceil((double)((float)currentCount * fVar1));
    local_8 = (uint)(longlong)ROUND(dVar6);
    *(uint *)((int)this + 8) = local_8;
  }
  *(undefined4 *)((int)outputGrowth + 4) = 0;
  *(undefined1 *)outputGrowth = 0;
  return;
}

