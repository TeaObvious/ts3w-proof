/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX camera, one32-bit stack word RET4; store mode
   at+8. Original thumbnail callers pass0perspective or1orthographic; do not reinterpret integer
   mode as numeric float. */

void __thiscall Camera_SetProjectionMode(void *this,undefined4 param_1)

{
  *(undefined4 *)((int)this + 8) = param_1;
  return;
}

