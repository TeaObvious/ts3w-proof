/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 floor geometry preparation comparison.
   For edge types0..5 selects a directed pair among tile boundary endpoints and tile center,
   reversing direction according to the record orientation byte, then adds integer tile X/Z to the
   four float outputs. Two six-entry switch tables begin at AF7B38 and AF7B50.
   Physical cdecl record pointer and four output float pointers, caller cleanup. Unknown edge type
   reaches coordinate addition with prior output values; it is not newly validated or zero-filled.
   This records the actual codec, not an independent material/UV normal or topology admission
   policy.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

void __cdecl
FloorEdge_ComputeDirectedEndpoints
          (int *param_1,float *param_2,float *param_3,float *param_4,float *param_5)

{
  float fVar1;
  
  if ((char)param_1[3] != '\0') {
    switch(param_1[2]) {
    case 0:
      *param_4 = 1.0;
      *param_5 = 0.0;
      *param_2 = 0.0;
      *param_3 = 0.0;
      break;
    case 1:
      *param_4 = 0.0;
      *param_5 = 0.0;
      *param_2 = 0.0;
      *param_3 = 1.0;
      break;
    case 2:
      *param_4 = 0.0;
      *param_5 = 0.0;
      *param_2 = 0.5;
      *param_3 = 0.5;
      break;
    case 3:
      *param_4 = 1.0;
      *param_5 = 0.0;
      *param_2 = 0.5;
      *param_3 = 0.5;
      break;
    case 4:
      *param_4 = 1.0;
      *param_5 = 1.0;
      *param_2 = 0.5;
      *param_3 = 0.5;
      break;
    case 5:
      *param_4 = 0.0;
      *param_5 = 1.0;
      *param_2 = 0.5;
      *param_3 = 0.5;
    }
    goto switchD_00af799d_default;
  }
  switch(param_1[2]) {
  case 0:
    *param_2 = 1.0;
    fVar1 = 0.0;
    *param_3 = 0.0;
    goto LAB_00af7afa;
  case 1:
    *param_2 = 0.0;
    *param_3 = 0.0;
    *param_4 = 0.0;
    fVar1 = 1.0;
    goto LAB_00af7afe;
  case 2:
    fVar1 = 0.0;
    *param_2 = 0.0;
    break;
  case 3:
    *param_2 = 1.0;
    fVar1 = 0.0;
    break;
  case 4:
    fVar1 = 1.0;
    *param_2 = 1.0;
    break;
  case 5:
    *param_2 = 0.0;
    fVar1 = 1.0;
    break;
  default:
    goto switchD_00af799d_default;
  }
  *param_3 = fVar1;
  fVar1 = 0.5;
LAB_00af7afa:
  *param_4 = fVar1;
LAB_00af7afe:
  *param_5 = fVar1;
switchD_00af799d_default:
  *param_2 = (float)*param_1 + *param_2;
  *param_3 = (float)param_1[1] + *param_3;
  *param_4 = (float)*param_1 + *param_4;
  *param_5 = (float)param_1[1] + *param_5;
  return;
}

