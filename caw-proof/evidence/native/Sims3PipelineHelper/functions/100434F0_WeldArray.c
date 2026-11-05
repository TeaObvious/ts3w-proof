/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified CAW 1.22.10 Sims3PipelineHelper export WeldArray (ordinal 8), P/Invoke token 0x0600006a
   in Sims3Pipeline.MeshUtils. Managed signature: void
   WeldArray(dstArray,srcArray,veType,groups,numElements,numGroups). Entry dispatches by
   NativeVertexElementType to per-type copy/weld routines (visible cases 1-10 and 12-19).
   Unsupported types return without a typed dispatch. Destination size and group mapping are
   supplied by the managed wrapper; actual element copying lives in callees. */

void __cdecl
WeldArray(float *param_1,float *param_2,undefined4 param_3,int param_4,uint param_5,float *param_6)

{
                    /* 0x434f0  8  WeldArray */
  switch(param_3) {
  case 1:
    FUN_1003ee00(param_1,param_2,param_4,param_5,(int)param_6);
    return;
  case 2:
    FUN_1003eed0(param_1,(int)param_2,param_4,param_5,(int)param_6);
    return;
  case 3:
    FUN_1003efc0(param_1,(int)param_2,param_4,param_5,(int)param_6);
    return;
  case 4:
    FUN_1003f100(param_1,(int)param_2,param_4,param_5,(int)param_6);
    return;
  case 5:
    FUN_1003f230(param_1,(int *)param_2,param_4,param_5,(int)param_6);
    return;
  case 6:
    FUN_1003f310(param_1,(int)param_2,param_4,param_5,param_6);
    return;
  case 7:
    FUN_10040220((undefined1 *)param_1,(int)param_2,param_4,param_5,param_6);
    return;
  case 8:
    FUN_1003f490((undefined1 *)param_1,(int)param_2,param_4,param_5,(int)param_6);
    return;
  case 9:
    FUN_1003f680((undefined2 *)param_1,(short *)param_2,param_4,param_5,(char *)param_6);
    return;
  case 10:
    FUN_1003fb30((undefined2 *)param_1,(int)param_2,param_4,param_5,param_6);
    return;
  case 0xc:
    FUN_1003f820((undefined2 *)param_1,(short *)param_2,param_4,param_5,(char *)param_6);
    return;
  case 0xd:
    FUN_1003fda0((undefined2 *)param_1,(int)param_2,param_4,param_5,param_6);
    return;
  case 0xe:
    FUN_1003f9d0((undefined2 *)param_1,(ushort *)param_2,param_4,param_5,(int)param_6);
    return;
  case 0xf:
    FUN_10040030((undefined2 *)param_1,(int)param_2,param_4,param_5,(int)param_6);
    return;
  case 0x10:
    FUN_100407b0((uint *)param_1,(uint *)param_2,param_4,param_5,(char *)param_6);
    return;
  case 0x11:
    FUN_100404e0((uint *)param_1,(uint *)param_2,param_4,param_5,(char *)param_6);
    return;
  case 0x12:
    FUN_10040ad0((short *)param_1,(ushort *)param_2,param_4,param_5,(int)param_6);
    return;
  case 0x13:
    FUN_10040c90((short *)param_1,(int)param_2,param_4,param_5,(int)param_6);
  }
  return;
}
