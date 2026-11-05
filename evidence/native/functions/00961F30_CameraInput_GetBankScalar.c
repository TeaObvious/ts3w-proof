/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Unchecked input bank scalar accessor: return
   float at inputState +bankIndex*0x100+fieldIndex*4. RET8. Main frame00976885 pushes bankIndex1 and
   fieldIndex2 for negative retained zoom+800, otherwise3. That read bounds zoom-rate magnitude
   before decay; it does not cap mouse yaw. */

float10 __thiscall CameraInput_GetBankScalar(void *param_1,int param_2,int fieldIndex)

{
  return (float10)*(float *)((int)param_1 + (param_2 * 0x40 + fieldIndex) * 4);
}

