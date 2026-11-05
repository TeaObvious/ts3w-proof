/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Destroys the controller listener-list
   subobject at +0xc; derived destructors release child/resource references before entering this
   base destructor. */

void __fastcall AnimationController_DestroyBase(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00fc29f8;
  param_1[2] = &PTR_LAB_00fc29ec;
  param_1[3] = &PTR_LAB_00fc29e8;
  FUN_00565d90(param_1 + 3);
  *param_1 = &PTR_FUN_0102bba4;
  return;
}

