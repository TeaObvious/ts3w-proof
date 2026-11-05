/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_SetVisible;
   RoadSplineWrap_SetVisible. Export ordinal(s): 2067; 2083. Entry VA: 0x1098c2d0. Original managed
   P/Invoke MethodDef(s): CSHostWrap:0x060001DB. This is an export/declaration annotation only; ABI,
   behavior and runtime execution require the original instructions and caller evidence. */

void __cdecl RoadObjectWrap_SetVisible(int *param_1,int param_2)

{
                    /* 0x98c2d0  2067  RoadObjectWrap_SetVisible
                       0x98c2d0  2083  RoadSplineWrap_SetVisible */
  (**(code **)(*param_1 + 0x10))(param_2 != 0);
  return;
}

