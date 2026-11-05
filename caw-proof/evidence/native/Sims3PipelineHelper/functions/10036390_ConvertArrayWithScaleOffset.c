/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified CAW 1.22.10 Sims3PipelineHelper export ConvertArrayWithScaleOffset (ordinal 2), P/Invoke
   token 0x06000062 in Sims3Pipeline.MeshUtils. Managed signature adds ref Vector4 scale and ref
   Vector4 offset after count. Entry dispatches by destination NativeVertexElementType to per-type
   conversion routines; cases visible here are 1-10 and 12-19. Unsupported destination types return
   without conversion. The actual scale/offset math is in callees. */

void __cdecl
ConvertArrayWithScaleOffset
          (float *param_1,undefined4 param_2,float *param_3,undefined4 param_4,int param_5,
          float *param_6,float *param_7)

{
                    /* 0x36390  2  ConvertArrayWithScaleOffset */
  switch(param_2) {
  case 1:
    FUN_10032e80(param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 2:
    FUN_10033150(param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 3:
    FUN_10033420(param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 4:
    FUN_100336f0((int)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 5:
    FUN_100339c0(param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 6:
    FUN_10033c90((int)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 7:
    FUN_10035310((int)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 8:
    FUN_10033f60((int)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 9:
    FUN_10034230((undefined2 *)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 10:
    FUN_10034aa0((undefined2 *)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 0xc:
    FUN_10034500((undefined2 *)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 0xd:
    FUN_10034d70((undefined2 *)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 0xe:
    FUN_100347d0((undefined2 *)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 0xf:
    FUN_10035040((undefined2 *)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 0x10:
    FUN_100358b0((uint *)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 0x11:
    FUN_100355e0((uint *)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 0x12:
    FUN_10035b80((short *)param_1,param_3,param_5,param_4,param_6,param_7);
    return;
  case 0x13:
    FUN_10035e50((short *)param_1,param_3,param_5,param_4,param_6,param_7);
  }
  return;
}
