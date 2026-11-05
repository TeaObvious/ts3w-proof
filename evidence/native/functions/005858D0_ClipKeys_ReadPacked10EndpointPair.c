/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name. cdecl nine stack slots, endpoint record stride8: frame u16+0, flags u16+2, packed
   DWORD+4. Lower-bound helper00585160 and incoming bit0x80 rule match indexed3 selection. Codec
   dispatch18 and19 both use this function. Next.frame is zero-extended u16 compared unsigned to
   frame1. Missing incoming endpoint copies all four prior lanes plus flags. Raw packed
   decoder00584700 normally writes XYZ only; its fourth lane is not initialized by the regular
   packed path. */

void __cdecl
ClipKeys_ReadPacked10EndpointPair
          (uint param_1,float *param_2,undefined2 *param_3,uint param_4,float *param_5,
          undefined2 *param_6,undefined4 param_7,ushort *param_8,int param_9)

{
  ushort *puVar1;
  ushort *puVar2;
  float *pfVar3;
  undefined2 *puVar4;
  ushort *puVar5;
  
  puVar1 = param_8;
  param_8 = (ushort *)((uint)param_8 & 0xffffff00);
  puVar2 = puVar1 + param_9 * 4;
  puVar5 = (ushort *)FUN_00585160((int)puVar1,(int)puVar2,&param_1);
  puVar4 = param_3;
  pfVar3 = param_2;
  if (puVar2 <= puVar5) {
    puVar5 = puVar5 + -4;
  }
  if ((puVar5 != puVar1) && (param_1 < *puVar5)) {
    puVar5 = puVar5 + -4;
  }
  ClipKey_DecodePacked10x3((int)puVar5,param_2,param_3);
  puVar1 = puVar5 + 4;
  if ((((puVar1 != puVar2) && (*puVar1 <= param_4)) && (puVar1 != puVar5)) &&
     ((puVar5[5] & 0x80) == 0)) {
    ClipKey_DecodePacked10x3((int)puVar1,param_5,param_6);
    return;
  }
  *param_5 = *pfVar3;
  param_5[1] = pfVar3[1];
  param_5[2] = pfVar3[2];
  param_5[3] = pfVar3[3];
  *param_6 = *puVar4;
  return;
}

