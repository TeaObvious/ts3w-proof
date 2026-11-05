/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: when camera flag +6E0 is set, returns the three-component length of target +200
   minus eye +60; otherwise returns stored zoom +270. This conditional getter is a live input to
   audio-listener curve evaluation. Raw instruction proof:
   00960AE0_Camera_GetZoomDistance.asm.
   original PC 1.67 TS3W.exe. */

float10 __fastcall Camera_GetZoomDistance(int param_1)

{
  float fVar1;
  float fVar3;
  float fVar4;
  undefined1 auVar2 [16];
  undefined4 local_20;
  
  if (*(char *)(param_1 + 0x6e0) != '\0') {
    fVar1 = *(float *)(param_1 + 0x200) - *(float *)(param_1 + 0x60);
    fVar3 = *(float *)(param_1 + 0x204) - *(float *)(param_1 + 100);
    fVar4 = *(float *)(param_1 + 0x208) - *(float *)(param_1 + 0x68);
    auVar2._0_4_ = fVar4 * fVar4 + fVar3 * fVar3 + fVar1 * fVar1;
    auVar2._4_4_ = auVar2._0_4_;
    auVar2._8_4_ = auVar2._0_4_;
    auVar2._12_4_ = auVar2._0_4_;
    auVar2 = sqrtps(auVar2,auVar2);
    local_20 = auVar2._0_4_;
    return (float10)local_20;
  }
  return (float10)*(float *)(param_1 + 0x270);
}

