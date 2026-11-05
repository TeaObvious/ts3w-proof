/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: Compare signed Int32 level before X then Z floating comparisons. Finite
   ordering is level/X/Z; NaN/unordered branches are not ordinary finite lexicographic arithmetic.
   Do not infer packed point field types from float-pointer decompiler spelling. Descriptive analyst
   role, not a recovered original symbol. */

undefined4 __thiscall GridPoint_CompareLevelThenXZ(void *this,float *param_1)

{
  float fVar1;
  float fVar2;
  bool bVar3;
  bool bVar4;
  
  fVar2 = *(float *)((int)this + 8);
  if (fVar2 != param_1[2]) {
    return CONCAT31((int3)((uint)fVar2 >> 8),(int)fVar2 < (int)param_1[2]);
  }
  fVar2 = *(float *)this;
  fVar1 = *param_1;
  if (fVar2 == fVar1) {
    bVar4 = param_1[1] == *(float *)((int)this + 4);
    bVar3 = param_1[1] < *(float *)((int)this + 4);
  }
  else {
    bVar4 = fVar1 == fVar2;
    bVar3 = fVar1 < fVar2;
  }
  if (!bVar3 && !bVar4) {
    return 1;
  }
  return 0;
}

