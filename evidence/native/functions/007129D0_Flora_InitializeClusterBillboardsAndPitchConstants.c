/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 original contract. ECX cluster, ALsuccess, RET. Guard byte534 set before
   initialization; resource/definition/packet failure invokes70F750. Successful path reads40/80
   and70/50 degree pairs via7B8B20/50, separately multiplies by binary32 degree-to-radian then x87
   FSIN and stores binary32. For each pair s=sin(start),e=sin(end), store (1/(e-s),0-s/(e-s)) into
   cluster+4A0/+4A8. No guard for equal sine endpoints. These sine-space shader constants differ
   from the SDK degree-linear globals evaluated by7BB2D0. */

uint __fastcall Flora_InitializeClusterBillboardsAndPitchConstants(int param_1)

{
  undefined4 in_EAX;
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  void *this;
  float10 fVar4;
  float10 fVar5;
  float10 fVar6;
  float10 fVar7;
  float fVar8;
  float local_64 [2];
  float local_5c;
  float local_58;
  float local_54 [20];
  
  if (*(char *)(param_1 + 0x534) != '\0') {
LAB_00712bcd:
    return CONCAT31((int3)((uint)in_EAX >> 8),1);
  }
  *(undefined1 *)(param_1 + 0x534) = 1;
  uVar1 = Flora_InitializeSpeciesGeometry(*(int **)(param_1 + 0x4b4));
  if ((char)uVar1 != '\0') {
    this = (void *)(param_1 + 0x280);
    iVar3 = 4;
    do {
      FUN_00712960((void *)((int)this + -0x10),*(uint *)(*(int *)(param_1 + 0x4b4) + 0x310));
      FUN_00712960(this,*(uint *)(*(int *)(param_1 + 0x4b4) + 0x314));
      FUN_00712960((void *)((int)this + 0x10),*(uint *)(*(int *)(param_1 + 0x4b4) + 0x318));
      this = (void *)((int)this + 0x60);
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    uVar1 = Flora_SelectBillboardShaderDefinitions(param_1);
    if (((char)uVar1 != '\0') &&
       (uVar1 = Flora_BuildWholeTreeBillboardDrawPackets(param_1), (char)uVar1 != '\0')) {
      FUN_0070d180(param_1);
      SpeedTree_GetHorizontalBillboardFadeAngles(local_64,&local_5c);
      in_EAX = SpeedTree_GetVerticalBillboardFadeAngles(&local_58,local_54);
      fVar4 = (float10)fsin((float10)(local_64[0] * 0.017453292));
      fVar5 = (float10)fsin((float10)(local_5c * 0.017453292));
      fVar6 = (float10)fsin((float10)(local_58 * 0.017453292));
      fVar7 = (float10)fsin((float10)(local_54[0] * 0.017453292));
      fVar8 = 1.0 / ((float)fVar5 - (float)fVar4);
      *(float *)(param_1 + 0x4a0) = fVar8;
      *(float *)(param_1 + 0x4a4) = -0.0 - fVar8 * (float)fVar4;
      fVar8 = 1.0 / ((float)fVar7 - (float)fVar6);
      *(float *)(param_1 + 0x4a8) = fVar8;
      *(float *)(param_1 + 0x4ac) = -0.0 - fVar8 * (float)fVar6;
      goto LAB_00712bcd;
    }
  }
  uVar2 = FUN_0070f750(param_1);
  return uVar2 & 0xffffff00;
}

