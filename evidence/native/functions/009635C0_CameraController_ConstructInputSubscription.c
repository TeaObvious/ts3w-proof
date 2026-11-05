/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Constructs controller subscription: +28 callback00962210, +2C owner=this;
   input initially disabled at+14. Callback forwards two trigger arguments to owner primary
   vtable+5C. */

undefined4 * __fastcall CameraController_ConstructInputSubscription(undefined4 *param_1)

{
  undefined4 uVar1;

  *param_1 = &PTR_LAB_00fecfc0;
  param_1[1] = &PTR_FUN_0102bba4;
  LOCK();
  param_1[2] = 0;
  uVar1 = DAT_01045b20;
  UNLOCK();
  *param_1 = &PTR_FUN_01045c10;
  param_1[1] = &PTR_LAB_01045c08;
  param_1[3] = 0;
  param_1[4] = uVar1;
  FUN_0049d0a0(param_1 + 6);
  param_1[0xd] = 0;
  param_1[9] = 0;
  *(undefined1 *)(param_1 + 0xc) = 0;
  *(undefined1 *)(param_1 + 5) = 0;
  *(undefined1 *)((int)param_1 + 0x15) = 0;
  param_1[8] = 0x10;
  param_1[10] = CameraController_ForwardTriggerCallback;
  param_1[0xb] = param_1;
  *(undefined1 *)((int)param_1 + 0x31) = 0xfe;
  return param_1;
}

