/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX cluster, ALsuccess, RET. Guard byte534 set before
   initialization; resource/definition/packet failure invokes70F750. Successful path reads40/80
   and70/50 degree pairs via7B8B20/50, separately multiplies by binary32 degree-to-radian then x87
   FSIN and stores binary32. For each pair s=sin(start),e=sin(end), store (1/(e-s),0-s/(e-s)) into
   cluster+4A0/+4A8. No guard for equal sine endpoints. These sine-space shader constants differ
   from the SDK degree-linear globals evaluated by7BB2D0. */

uint __fastcall Flora_InitializeClusterBillboardsAndPitchConstants(int param_1)

{
  float fVar1;
  undefined4 in_EAX;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  void *this;
  float10 fVar5;
  float10 fVar6;
  float10 fVar7;
  float10 fVar8;
  float fVar9;
  float fVar10;
  float local_64 [2];
  float local_5c;
  float local_58;
  float local_54 [20];
  
  if (*(char *)(param_1 + 0x534) != '\0') {
LAB_00712bcd:
    return CONCAT31((int3)((uint)in_EAX >> 8),1);
  }
  *(undefined1 *)(param_1 + 0x534) = 1;
  uVar2 = FUN_00718260(*(int **)(param_1 + 0x4b4));
  if ((char)uVar2 != '\0') {
    this = (void *)(param_1 + 0x280);
    iVar4 = 4;
    do {
      FUN_00712960((void *)((int)this + -0x10),*(uint *)(*(int *)(param_1 + 0x4b4) + 0x310));
      FUN_00712960(this,*(uint *)(*(int *)(param_1 + 0x4b4) + 0x314));
      FUN_00712960((void *)((int)this + 0x10),*(uint *)(*(int *)(param_1 + 0x4b4) + 0x318));
      this = (void *)((int)this + 0x60);
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    uVar2 = Flora_SelectBillboardShaderDefinitions(param_1);
    if (((char)uVar2 != '\0') &&
       (uVar2 = Flora_BuildWholeTreeBillboardDrawPackets(param_1), (char)uVar2 != '\0')) {
      FUN_0070d180(param_1);
      SpeedTree_GetHorizontalBillboardFadeAngles(local_64,&local_5c);
      in_EAX = SpeedTree_GetVerticalBillboardFadeAngles(&local_58,local_54);
      fVar10 = FLOAT_00f998f8;
      fVar5 = (float10)fsin((float10)(local_64[0] * DAT_00ffc4d8));
      fVar6 = (float10)fsin((float10)(local_5c * DAT_00ffc4d8));
      fVar7 = (float10)fsin((float10)(local_58 * DAT_00ffc4d8));
      fVar8 = (float10)fsin((float10)(local_54[0] * DAT_00ffc4d8));
      fVar9 = FLOAT_00f998f8 / ((float)fVar6 - (float)fVar5);
      *(float *)(param_1 + 0x4a0) = fVar9;
      fVar1 = FLOAT_00f998f0;
      *(float *)(param_1 + 0x4a4) = FLOAT_00f998f0 - fVar9 * (float)fVar5;
      fVar10 = fVar10 / ((float)fVar8 - (float)fVar7);
      *(float *)(param_1 + 0x4a8) = fVar10;
      *(float *)(param_1 + 0x4ac) = fVar1 - fVar10 * (float)fVar7;
      goto LAB_00712bcd;
    }
  }
  uVar3 = FUN_0070f750(param_1);
  return uVar3 & 0xffffff00;
}

