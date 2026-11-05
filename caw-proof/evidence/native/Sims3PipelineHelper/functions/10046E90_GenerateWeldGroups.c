/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified CAW 1.22.10 Sims3PipelineHelper export GenerateWeldGroups (ordinal 5), P/Invoke token
   0x06000068 in Sims3Pipeline.MeshUtils. Managed signature: uint
   GenerateWeldGroups(dstArray,srcArray,srcVEType,count,weldTolerance). Entry dispatches by source
   NativeVertexElementType to per-type grouping routines (cases 1-10 and 12-19); default routes to
   FUN_10046480. WARNING: Ghidra labels this dispatcher void despite the managed uint return. Check
   the selected callee and raw instructions for the return contract. */

void __cdecl
GenerateWeldGroups(int param_1,int param_2,undefined4 param_3,char *param_4,float param_5)

{
                    /* 0x46e90  5  GenerateWeldGroups */
  switch(param_3) {
  case 1:
    FUN_100437c0(param_1,param_2,param_4,param_5);
    return;
  case 2:
    FUN_100439b0(param_1,param_2,param_4,param_5);
    return;
  case 3:
    FUN_10043be0(param_1,param_2,param_4,param_5);
    return;
  case 4:
    FUN_10043e80(param_1,param_2,param_4,param_5);
    return;
  case 5:
    FUN_10044120(param_1,param_2,param_4,param_5);
    return;
  case 6:
    FUN_100442f0(param_1,param_2,param_4,param_5);
    return;
  case 7:
    FUN_10045830(param_1,param_2,param_4,param_5);
    return;
  case 8:
    FUN_10044590(param_1,param_2,param_4,param_5);
    return;
  case 9:
    FUN_10044880(param_1,param_2,param_4,param_5);
    return;
  case 10:
    FUN_10044f40(param_1,param_2,param_4,param_5);
    return;
  default:
    FUN_10046480(param_1,param_2,param_4,param_5);
    return;
  case 0xc:
    FUN_10044aa0(param_1,param_2,param_4,param_5);
    return;
  case 0xd:
    FUN_10045210(param_1,param_2,param_4,param_5);
    return;
  case 0xe:
    FUN_10044cf0(param_1,param_2,param_4,param_5);
    return;
  case 0xf:
    FUN_10045520(param_1,param_2,param_4,param_5);
    return;
  case 0x10:
    FUN_10046af0(param_1,param_2,param_4,param_5);
    return;
  case 0x11:
    FUN_100467c0(param_1,param_2,param_4,param_5);
    return;
  case 0x12:
    FUN_10045ac0(param_1,param_2,param_4,param_5);
    return;
  case 0x13:
    FUN_10045ed0(param_1,param_2,param_4,param_5);
    return;
  }
}
