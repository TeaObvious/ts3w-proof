/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Reads the unsigned 16-bit sample and multiplies by the
   owned height quantum. This is the per-component input for native sculpt operations.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

float10 __thiscall CAW_HeightRasterReadSample(int param_1,uint param_2,uint param_3)

{
  if ((param_2 < *(uint *)(param_1 + 0x14)) && (param_3 < *(uint *)(param_1 + 0x18))) {
    return (float10)*(ushort *)
                     (*(int *)(param_1 + 0x38) + (*(uint *)(param_1 + 0x14) * param_3 + param_2) * 2
                     ) * (float10)*(float *)(param_1 + 8);
  }
  return (float10)DAT_10ab3768;
}

