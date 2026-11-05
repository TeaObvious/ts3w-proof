/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: calls 00967520 to adjust saved fly position for current altitude, then starts
   the shared pose lerp from current position/target to adjusted position and saved target. Preset
   caller 0097F9A0 passes 2.0 seconds. Raw instruction proof:
   009676F0_FlyCamera_BeginSmoothRecall.asm. Reference
   original PC 1.67 TS3W.exe. */

void __thiscall
FlyCamera_BeginSmoothRecall(void *this,float *param_1,float *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int unaff_EBX;
  undefined4 local_34;
  float local_30 [4];
  undefined1 local_20 [28];
  
  FlyCamera_AdjustSmoothRecallEndpoint(this,local_30,param_1,param_2);
  local_34 = *(undefined4 *)((int)this + 0x570);
  uVar1 = (**(code **)(*(int *)this + 0x30))(local_20,param_2,param_3);
  (**(code **)(unaff_EBX + 8))((int)this + 0x600,&local_34,uVar1);
  return;
}

