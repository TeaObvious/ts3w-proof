/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall texture object constructor; initializes
   original vtable/member state. Object allocation and refcounting in payload staging remain caller
   owned; no original bytes changed. */

undefined4 * __fastcall Texture_Construct(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_00ff4a78;
  LOCK();
  param_1[1] = 0;
  UNLOCK();
  FUN_006146b0(param_1 + 2);
  param_1[2] = &PTR_LAB_00fea554;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[9] = 0;
  param_1[0xc] = 0;
  *param_1 = &PTR_FUN_00fea544;
  return param_1;
}

