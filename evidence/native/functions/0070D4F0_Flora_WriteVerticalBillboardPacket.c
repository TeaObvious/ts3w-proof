/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original contract. cdecl five stack words, RET; output pointer returned.
   Four24-byte vertices: SHORT4 translation at0, SHORT4 (scaled width,height,wrapped instance
   azimuth) at8, UBYTE4 (corner0..3,imageCount,0,0) at16, opaque instance+78 word at20.
   Angle=atan2(-matrix[2],matrix[0]), add binary32 twoPi if negative. Dimensions multiply instance
   scalar then0.3048. Both SHORT4 encodings call7CF810. Selected9279 consumes v0,v1,v2 only; the
   float at20 is not read by this ordinary shader. It is not the separate instance+74 opacity. */

int __cdecl
Flora_WriteVerticalBillboardPacket
          (int param_1,float *param_2,float *param_3,float *param_4,undefined4 param_5)

{
  undefined1 uVar1;
  undefined2 *puVar2;
  undefined1 *puVar3;
  byte bVar4;
  float10 fVar5;
  undefined4 local_50;
  undefined4 uStack_4c;
  float fStack_48;
  float fStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
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
  
  local_30 = param_3[0xc];
  fStack_2c = param_3[0xd];
  fStack_28 = param_3[0xe];
  fStack_24 = param_3[0xf];
  uStack_4c = FLOAT_00f998f8 * param_3[2] + param_3[1] * 0.0 + *param_3 * 0.0;
  fVar5 = (float10)fpatan(-(float10)uStack_4c,
                          (float10)(param_3[2] * 0.0 + param_3[1] * 0.0 + FLOAT_00f998f8 * *param_3)
                         );
  local_50 = (float)fVar5;
  fStack_38 = local_50;
  if (fVar5 < (float10)0) {
    fStack_38 = local_50 + _DAT_00ffc4e0;
  }
  local_40 = *param_4 * *param_2 * DAT_00ffc4c0;
  uStack_3c = *param_4 * param_2[1] * DAT_00ffc4c0;
  fStack_48 = uStack_4c;
  fStack_44 = uStack_4c;
  fStack_34 = local_40;
  local_20 = local_40;
  fStack_1c = uStack_3c;
  fStack_18 = fStack_38;
  fStack_14 = local_40;
  Flora_PackHomogeneousShort4((undefined1 (*) [16])&local_30,(undefined2 *)&local_50);
  Flora_PackHomogeneousShort4((undefined1 (*) [16])&local_20,(undefined2 *)&local_40);
  uVar1 = *(undefined1 *)(param_2 + 2);
  bVar4 = 0;
  puVar3 = (undefined1 *)(param_1 + 0x11);
  puVar2 = (undefined2 *)(param_1 + 2);
  do {
    puVar2[-1] = (undefined2)local_50;
    puVar2[3] = (undefined2)local_40;
    *puVar2 = local_50._2_2_;
    puVar2[4] = local_40._2_2_;
    puVar2[1] = (undefined2)uStack_4c;
    puVar2[5] = (undefined2)uStack_3c;
    puVar2[2] = uStack_4c._2_2_;
    puVar2[6] = uStack_3c._2_2_;
    puVar3[-1] = bVar4;
    *puVar3 = uVar1;
    puVar3[1] = 0;
    puVar3[2] = 0;
    *(undefined4 *)(puVar3 + 3) = param_5;
    bVar4 = bVar4 + 1;
    puVar2 = puVar2 + 0xc;
    puVar3 = puVar3 + 0x18;
  } while (bVar4 < 4);
  return param_1 + 0x60;
}

