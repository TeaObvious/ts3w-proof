/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 mode-one wrapper. Forwards receiver and both original stack arguments to C2D7A0
   with an added byte value1. Leaves returned AL/EAX intact and returns with physical RET8. The
   inferred undefined/void result spelling does not replace the caller-observed low-byte success
   contract; no prototype or manual storage correction is asserted. */

void __thiscall TerrainData_LoadChunkMode(void *this,int *param_1,uint param_2)

{
  TerrainData_LoadForMode(this,param_1,param_2,'\x01');
  return;
}

