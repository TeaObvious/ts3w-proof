/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX flora manager, no stack args, RET. Loads four named
   RenderTree*LODDistances vectors; computes reciprocal positive distance span else0. Separately
   reads RenderTreeAlphaEdges defaulttrue into manager+14. This key is not FSAALevel; do not
   conflate alpha-edge transition policy with MSAA enable. */

void __fastcall Flora_ReadLodDistanceAndAlphaEdgeConfig(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 uVar3;
  undefined4 uVar4;
  uint uVar5;
  float *pfVar6;
  float fVar7;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  fVar7 = DAT_00ffc8a4;
  uVar2 = DAT_00ffc8a0;
  uVar1 = DAT_00ff9610;
  uVar4 = DAT_00fbc934;
  pfVar6 = (float *)(param_1 + 0x17c);
  *(undefined4 *)(param_1 + 0x178) = DAT_00fbc934;
  *pfVar6 = fVar7;
  *(undefined4 *)(param_1 + 0x184) = uVar1;
  *(undefined4 *)(param_1 + 0x188) = uVar2;
  *(undefined4 *)(param_1 + 0x18c) = uVar4;
  *(float *)(param_1 + 400) = fVar7;
  *(undefined4 *)(param_1 + 0x198) = uVar1;
  *(undefined4 *)(param_1 + 0x19c) = uVar2;
  *(undefined4 *)(param_1 + 0x1a0) = uVar4;
  *(float *)(param_1 + 0x1a4) = fVar7;
  *(undefined4 *)(param_1 + 0x1ac) = uVar1;
  *(undefined4 *)(param_1 + 0x1b0) = uVar2;
  *(undefined4 *)(param_1 + 0x1b4) = uVar4;
  *(float *)(param_1 + 0x1b8) = fVar7;
  *(undefined4 *)(param_1 + 0x1c0) = uVar1;
  *(undefined4 *)(param_1 + 0x1c4) = uVar2;
  uVar5 = 0;
  do {
    uVar4 = FUN_0058b3a0((short *)PTR_u_Config_01150ab0,
                         *(wchar_t **)((int)&PTR_u_RenderTreeLargeLODDistances_0115c4dc + uVar5),
                         &local_60);
    if ((char)uVar4 != '\0') {
      local_50 = local_60;
      fStack_4c = fStack_5c;
      fStack_48 = fStack_58;
      fStack_44 = fStack_54;
      local_40 = local_60;
      fStack_3c = fStack_5c;
      fStack_38 = fStack_58;
      fStack_34 = fStack_54;
      pfVar6[-1] = local_60;
      local_30 = local_60;
      fStack_2c = fStack_5c;
      fStack_28 = fStack_58;
      fStack_24 = fStack_54;
      local_20 = local_60;
      fStack_1c = fStack_5c;
      fStack_18 = fStack_58;
      fStack_14 = fStack_54;
      *pfVar6 = fStack_5c;
      pfVar6[2] = fStack_58;
      pfVar6[3] = fStack_54;
    }
    fVar7 = 0.0;
    if (0.0 < *pfVar6 - pfVar6[-1]) {
      fVar7 = FLOAT_00f998f8 / (*pfVar6 - pfVar6[-1]);
    }
    pfVar6[1] = fVar7;
    uVar5 = uVar5 + 4;
    pfVar6 = pfVar6 + 5;
  } while (uVar5 < 0x10);
  uVar3 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"RenderTreeAlphaEdges",1);
  *(undefined1 *)(param_1 + 0x14) = uVar3;
  return;
}

