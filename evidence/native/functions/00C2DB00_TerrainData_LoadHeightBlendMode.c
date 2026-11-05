/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 mode-zero wrapper. Forwards receiver and both original stack arguments to C2D7A0
   with an added byte value0. Leaves returned AL/EAX intact and returns with physical RET8. C2D7A0
   selects height/blend-map loading for that mode. The inferred undefined/void result spelling is
   retained; no manual ABI or Boolean-width change is asserted. */

void __thiscall TerrainData_LoadHeightBlendMode(void *this,int *param_1,uint param_2)

{
  TerrainData_LoadForMode(this,param_1,param_2,'\0');
  return;
}

