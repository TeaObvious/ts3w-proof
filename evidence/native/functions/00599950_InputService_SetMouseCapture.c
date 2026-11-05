/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Global input-service011CF2C0 guard, then
   UpdateMouseCapture(enable,keepCurrentAnchor). Physical gameplay MMB and script SetRotating
   use(1,1) onpress and(0,0) onrelease. */

void __cdecl InputService_SetMouseCapture(char param_1,char param_2)

{
  if (DAT_011cf2c0 != (void *)0x0) {
    InputService_UpdateMouseCapture(DAT_011cf2c0,param_1,param_2);
  }
  return;
}

