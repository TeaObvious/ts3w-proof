/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 initializer for an actual0x50-byte Animation/RenderState allocation. Physical ECX
   destination, plain RET. MOV EAX,ECX at entry and no later EAX writes preserve destination in EAX
   for the two actual allocating callers, despite existing inferred void return. Prototype is
   intentionally unchanged. Install actual vtable FC3D90, zero pointer
   fields+10/+18/+20/+24/+28/+2C/+30/+34 and clear16 bytes at+40 with MOVAPS. Crucially the two pose
   cache key DWORDs+14/+1C are not written by this complete initializer; no guaranteed zero keys,
   zeroed allocation or safe-default cache rule is invented. */

void __fastcall AnimationRenderState_InitializeStorage(undefined4 *param_1)

{
                    /* EAX=ECX is the actual returned allocation identity in callers despite
                       retained inferred void; cache key words+14/+1C are not initialized. */
  *param_1 = &PTR_AnimationRenderState_ConsumeSourceReference_00fc3d90;
  param_1[4] = 0;
  param_1[6] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0x10] = 0;
  param_1[0x11] = 0;
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  return;
}

