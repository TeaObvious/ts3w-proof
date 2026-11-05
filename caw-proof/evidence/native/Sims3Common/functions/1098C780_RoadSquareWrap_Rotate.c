/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified CAW 1.22.10 Sims3Common.dll PE export RoadSquareWrap_Rotate (RVA 0x98C780). Pristine
   CSHostWrap declares void RoadSquareWrap_Rotate(IntPtr roadSquare, float deltaRadians, bool
   isStillMoving). Raw x86 passes the pointer in ECX, the float and boolean as stack words to
   0x1013B5A0. That method skips when a byte lock flag is set, adds deltaRadians to a stored
   rotation, invokes a virtual update, and performs a boundary operation when isStillMoving is
   false. Exact lifetime/undo ownership is outside this wrapper. */

void __cdecl RoadSquareWrap_Rotate(void *param_1,float param_2,char param_3)

{
                    /* 0x98c780  2089  RoadSquareWrap_Rotate */
  CAW_RoadSquareRotateInternal(param_1,param_2,param_3);
  return;
}

