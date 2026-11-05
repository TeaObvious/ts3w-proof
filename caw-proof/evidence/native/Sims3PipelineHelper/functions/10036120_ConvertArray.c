/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified CAW 1.22.10 Sims3PipelineHelper export ConvertArray (ordinal 1), P/Invoke token
   0x06000061 in Sims3Pipeline.MeshUtils. Managed signature: void
   ConvertArray(dst,dstVEType,src,srcVEType,count). Entry dispatches by destination
   NativeVertexElementType to per-type conversion routines; cases visible here are 1-10 and 12-19.
   Unsupported destination types return without conversion. Per-type numeric conversion details live
   in the callees, not this dispatcher. */

void __cdecl
ConvertArray(float *param_1,undefined4 param_2,float *param_3,undefined4 param_4,int param_5)

{
                    /* 0x36120  1  ConvertArray */
  switch(param_2) {
  case 1:
    FUN_10030840(param_1,(ushort *)param_3,param_5,param_4);
    return;
  case 2:
    FUN_10030a60(param_1,(uint *)param_3,param_5,param_4);
    return;
  case 3:
    FUN_10030c80(param_1,(uint *)param_3,param_5,param_4);
    return;
  case 4:
    FUN_10030ea0((int)param_1,(uint *)param_3,param_5,param_4);
    return;
  case 5:
    FUN_100310c0(param_1,param_3,param_5,param_4);
    return;
  case 6:
    FUN_100312e0((int)param_1,param_3,param_5,param_4);
    return;
  case 7:
    FUN_100323e0((int)param_1,param_3,param_5,param_4);
    return;
  case 8:
    FUN_10031500((int)param_1,param_3,param_5,param_4);
    return;
  case 9:
    FUN_10031720((undefined2 *)param_1,param_3,param_5,param_4);
    return;
  case 10:
    FUN_10031d80((undefined2 *)param_1,param_3,param_5,param_4);
    return;
  case 0xc:
    FUN_10031940((undefined2 *)param_1,param_3,param_5,param_4);
    return;
  case 0xd:
    FUN_10031fa0((undefined2 *)param_1,param_3,param_5,param_4);
    return;
  case 0xe:
    FUN_10031b60((undefined2 *)param_1,param_3,param_5,param_4);
    return;
  case 0xf:
    FUN_100321c0((undefined2 *)param_1,param_3,param_5,param_4);
    return;
  case 0x10:
    FUN_10032820((uint *)param_1,param_3,param_5,param_4);
    return;
  case 0x11:
    FUN_10032600((uint *)param_1,param_3,param_5,param_4);
    return;
  case 0x12:
    FUN_10032a40((short *)param_1,(uint *)param_3,param_5,param_4);
    return;
  case 0x13:
    FUN_10032c60((short *)param_1,(uint *)param_3,param_5,param_4);
  }
  return;
}
