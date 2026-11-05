/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_Translate;
   RoadSplineWrap_Translate. Export ordinal(s): 2068; 2084. Entry VA: 0x1098c420. Original managed
   P/Invoke MethodDef(s): CSHostWrap:0x060001DD. This is an export/declaration annotation only; ABI,
   behavior and runtime execution require the original instructions and caller evidence. */

void __cdecl
RoadObjectWrap_Translate(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x98c420  2068  RoadObjectWrap_Translate
                       0x98c420  2084  RoadSplineWrap_Translate */
  local_20 = param_2;
  uStack_1c = param_3;
  uStack_18 = param_2;
  uStack_14 = param_2;
  (**(code **)(*param_1 + 0x18))(&local_20,param_4);
  return;
}

