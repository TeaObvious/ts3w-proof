/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Updates enabledbyte controller+14. Disabling clears full inputblock+40 via
   ClearMotionAndDrag and releases mousecapture. Enabling seeds current mouse from
   inputinterface+48. Does not reconstructyaw from atan2. */

void __thiscall MainCamera_SetInputEnabled(void *this,char param_1)

{
  int *piVar1;
  undefined4 unaff_EBX;
  undefined4 local_8 [2];

  FUN_00533060(this,param_1);
  if (param_1 == '\0') {
    CameraInput_ClearMotionAndDrag((int)this + 0x40);
    InputService_SetMouseCapture('\0','\0');
    return;
  }
  piVar1 = (int *)FUN_0050af90();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x48))(local_8);
    CameraInput_SetCurrentMouse((void *)((int)this + 0x40),unaff_EBX,local_8[0]);
  }
  return;
}

