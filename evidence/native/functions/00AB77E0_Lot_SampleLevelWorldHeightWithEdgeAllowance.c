/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67. ECX lot; world X/Z and signed floor level are three stack words, RET0x0C, result
   x87ST0 from a binary32 local. Inverse-transforms X/Z, applies sequential binary32 +0.01 below
   zero and -0.01 above each extent, then inclusive bounds. Admitted point calls FloorManager+0x290
   local-level sampler and adds lot origin Y before binary32 store; miss returns -100. */

float10 __thiscall
Lot_SampleLevelWorldHeightWithEdgeAllowance(void *param_1,float param_2,float param_3,int param_4)

{
  float10 fVar1;
  float local_40;
  float local_3c;
  float local_38 [3];
  LotXZLevel local_2c [3];
  
  local_40 = DAT_01065d40;
  Lot_WorldXZToLocalXZ(param_1,param_2,param_3,&local_3c,local_38);
  if (local_3c < 0.0) {
    local_3c = DAT_01183e8c + local_3c;
  }
  if ((float)*(int *)((int)param_1 + 0x174) < local_3c) {
    local_3c = local_3c - DAT_01183e8c;
  }
  if (local_38[0] < 0.0) {
    local_38[0] = DAT_01183e8c + local_38[0];
  }
  if ((float)*(int *)((int)param_1 + 0x178) < local_38[0]) {
    local_38[0] = local_38[0] - DAT_01183e8c;
  }
  if ((((0.0 <= local_3c) && (local_3c <= (float)*(int *)((int)param_1 + 0x174))) &&
      (0.0 <= local_38[0])) && (local_38[0] <= (float)*(int *)((int)param_1 + 0x178))) {
    local_2c[0].level = param_4;
    local_2c[0].x = local_3c;
    local_2c[0].z = local_38[0];
    fVar1 = LotLevelHeight_SampleLocalPosition(*(void **)((int)param_1 + 0x290),local_2c);
    local_40 = (float)(fVar1 + (float10)*(float *)((int)param_1 + 0x194));
  }
  return (float10)local_40;
}

