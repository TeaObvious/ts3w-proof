/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_IsVisible;
   RoadSplineWrap_IsVisible. Export ordinal(s): 2064; 2079. Entry VA: 0x1098c2f0. Original managed
   P/Invoke MethodDef(s): CSHostWrap:0x060001DC. This is an export/declaration annotation only; ABI,
   behavior and runtime execution require the original instructions and caller evidence. */

bool __cdecl RoadObjectWrap_IsVisible(int *param_1)

{
  char cVar1;
  
                    /* 0x98c2f0  2064  RoadObjectWrap_IsVisible
                       0x98c2f0  2079  RoadSplineWrap_IsVisible */
  cVar1 = (**(code **)(*param_1 + 0x14))();
  return cVar1 != '\0';
}

