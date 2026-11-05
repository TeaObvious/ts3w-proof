/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Unregisters borrowed listener
   subobject+0x28 from child, releases retained child+0x2c using non-atomic controller count, then
   destroys base listener list. */

void __fastcall AnimationTimeScaleController_Destroy(undefined4 *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  
  *param_1 = &PTR_FUN_00fc3140;
  param_1[2] = &PTR_LAB_00fc3138;
  param_1[3] = &PTR_LAB_00fc3134;
  param_1[10] = &PTR_AnimationWrapperListener_ForwardStarted_00fc30c4;
  if (param_1[0xb] != 0) {
    AnimationController_UnregisterListener((void *)(param_1[0xb] + 0xc),param_1 + 10);
  }
  puVar1 = (undefined4 *)param_1[0xb];
  if ((puVar1 != (undefined4 *)0x0) && (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0))
  {
    puVar1[1] = 1;
    (**(code **)*puVar1)(1);
  }
  AnimationController_DestroyBase(param_1);
  return;
}

