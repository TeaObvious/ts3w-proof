/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Sets goal bytes+0x49=1,+0x4a=0. Any slot-array tag0x07216aad
   sets+0x49=0. A single radial destination sets+0x4a when full XYZ start-center
   distance<=minRadius. These flags drive deferred footprint acceptance in0075c360; exact original
   enum names for flag bytes are unavailable. */

void __thiscall RouteGoal_RefreshStartContainmentFlags(void *this,float *param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  undefined1 auVar5 [16];
  
  piVar4 = *(int **)((int)this + 0x18);
  piVar1 = (int *)((int)this + 0x18);
  *(undefined1 *)((int)this + 0x49) = 1;
  *(undefined1 *)((int)this + 0x4a) = 0;
  if (piVar4 != piVar1) {
    while( true ) {
      if (piVar4 == (int *)0x0) {
        piVar3 = (int *)0x0;
      }
      else {
        piVar3 = piVar4 + -1;
      }
      iVar2 = (**(code **)*piVar3)();
      if (iVar2 == 0x7216aad) break;
      iVar2 = (**(code **)*piVar3)();
      if (iVar2 == 0x7216a82) {
        iVar2 = -1;
        piVar3 = piVar1;
        do {
          piVar3 = (int *)*piVar3;
          iVar2 = iVar2 + 1;
        } while (piVar3 != piVar1);
        if (iVar2 == 1) {
          if (piVar4 == (int *)0x0) {
            piVar3 = (int *)0x0;
          }
          else {
            piVar3 = piVar4 + -1;
          }
          auVar5._0_4_ = (param_1[2] - (float)piVar3[0x12]) * (param_1[2] - (float)piVar3[0x12]) +
                         (param_1[1] - (float)piVar3[0x11]) * (param_1[1] - (float)piVar3[0x11]) +
                         (*param_1 - (float)piVar3[0x10]) * (*param_1 - (float)piVar3[0x10]);
          auVar5._4_4_ = auVar5._0_4_;
          auVar5._8_4_ = auVar5._0_4_;
          auVar5._12_4_ = auVar5._0_4_;
          auVar5 = sqrtps(auVar5,auVar5);
          if (auVar5._0_4_ <= (float)piVar3[0x18]) {
            *(undefined1 *)((int)this + 0x4a) = 1;
          }
        }
      }
      piVar4 = (int *)*piVar4;
      if (piVar4 == piVar1) {
        return;
      }
    }
    *(undefined1 *)((int)this + 0x49) = 0;
  }
  return;
}

