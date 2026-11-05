/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). cdecl. Resizes
   destination float2 vector to source vertex count. Each (x,z) becomes (x*m0+z*m3+m6,
   x*m1+z*m4+m7). Four-vertex unroll and remainder. Preserves all vertices, no 16-point limit. */

void __cdecl Geometry_TransformPolygonXZByMatrix3(int *param_1,float *param_2,int *param_3)

{
  float *pfVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  undefined4 local_8 [2];
  
  puVar2 = (undefined4 *)param_3[1];
  iVar3 = *param_3;
  uVar8 = param_1[1] - *param_1 >> 3;
  if ((uint)((int)puVar2 - iVar3 >> 3) < uVar8) {
    FUN_00629b70(param_3,puVar2,uVar8 - ((int)puVar2 - iVar3 >> 3),local_8);
  }
  else {
    FUN_00629900(param_3,(undefined4 *)(iVar3 + uVar8 * 8),puVar2);
  }
  uVar7 = 0;
  if (3 < (int)uVar8) {
    do {
      iVar4 = *param_1;
      iVar5 = *param_3;
      iVar3 = uVar7 * 8;
      *(float *)(iVar5 + iVar3) =
           *(float *)(iVar4 + iVar3) * *param_2 + *(float *)(iVar4 + 4 + iVar3) * param_2[3] +
           param_2[6];
      *(float *)(iVar5 + 4 + iVar3) =
           *(float *)(iVar4 + 4 + iVar3) * param_2[4] + *(float *)(iVar4 + iVar3) * param_2[1] +
           param_2[7];
      pfVar1 = (float *)(iVar3 + 8 + *param_3);
      iVar4 = *param_1;
      *pfVar1 = *(float *)(iVar4 + 8 + iVar3) * *param_2 +
                *(float *)(iVar4 + 0xc + iVar3) * param_2[3] + param_2[6];
      pfVar1[1] = *(float *)(iVar4 + 0xc + iVar3) * param_2[4] +
                  *(float *)(iVar4 + 8 + iVar3) * param_2[1] + param_2[7];
      iVar4 = *param_1;
      iVar6 = iVar3 + 0x18;
      iVar3 = iVar3 + 0x10;
      iVar5 = *param_3;
      *(float *)(iVar5 + iVar3) =
           *(float *)(iVar4 + iVar3) * *param_2 + *(float *)(iVar4 + 4 + iVar3) * param_2[3] +
           param_2[6];
      *(float *)(iVar5 + 4 + iVar3) =
           ((float *)(iVar4 + iVar3))[1] * param_2[4] + *(float *)(iVar4 + iVar3) * param_2[1] +
           param_2[7];
      iVar3 = *param_1;
      iVar4 = *param_3;
      *(float *)(iVar4 + iVar6) =
           *(float *)(iVar3 + iVar6) * *param_2 + *(float *)(iVar3 + 4 + iVar6) * param_2[3] +
           param_2[6];
      uVar7 = uVar7 + 4;
      *(float *)(iVar4 + iVar6 + 4) =
           ((float *)(iVar3 + iVar6))[1] * param_2[4] + *(float *)(iVar3 + iVar6) * param_2[1] +
           param_2[7];
    } while (uVar7 < uVar8 - 3);
  }
  for (; uVar7 < uVar8; uVar7 = uVar7 + 1) {
    iVar4 = *param_1;
    iVar5 = *param_3;
    iVar3 = uVar7 * 8;
    *(float *)(iVar5 + iVar3) =
         *(float *)(iVar4 + iVar3) * *param_2 + *(float *)(iVar4 + 4 + iVar3) * param_2[3] +
         param_2[6];
    *(float *)(iVar5 + iVar3 + 4) =
         ((float *)(iVar4 + iVar3))[1] * param_2[4] + *(float *)(iVar4 + iVar3) * param_2[1] +
         param_2[7];
  }
  return;
}

