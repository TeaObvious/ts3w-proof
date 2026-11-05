/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name. cdecl nine stack slots. Selects adjacent key endpoints for indexed-float3 records,
   stride10: frame u16+0, flags u16+2, three unsigned indices at+4/+6/+8. Lower-bound helper00584A50
   chooses first endpoint with terminal correction. Incoming endpoint is decoded only if next!=end,
   next.frame<=frame1 and next.flags lowbyte bit0x80 is clear; otherwise all four sample0 lanes and
   endpoint flag word are copied to sample1. Decoder00584AB0 consumes indexedContext's first DWORD
   as float base. Valid nonempty sorted key input assumed by native; zero-count containment not
   established. */

void __cdecl
ClipKeys_ReadIndexed3EndpointPair
          (uint param_1,float *param_2,undefined2 *param_3,uint param_4,float *param_5,
          undefined2 *param_6,int *param_7,ushort *param_8,uint param_9)

{
  ushort *puVar1;
  ushort *puVar2;
  float *pfVar3;
  undefined2 *puVar4;
  uint uVar5;
  ushort *puVar6;
  
  uVar5 = param_9;
  puVar1 = param_8;
  param_9 = param_9 & 0xffffff00;
  puVar2 = param_8 + uVar5 * 5;
  puVar6 = (ushort *)FUN_00584a50((int)param_8,(int)puVar2,&param_1);
  puVar4 = param_3;
  pfVar3 = param_2;
  if (puVar2 <= puVar6) {
    puVar6 = puVar6 + -5;
  }
  if ((puVar6 != puVar1) && (param_1 < *puVar6)) {
    puVar6 = puVar6 + -5;
  }
  ClipKey_DecodeIndexedFloat3((int)puVar6,param_2,param_3,param_7);
  puVar1 = puVar6 + 5;
  if ((((puVar1 != puVar2) && (*puVar1 <= param_4)) && (puVar1 != puVar6)) &&
     ((puVar6[6] & 0x80) == 0)) {
    ClipKey_DecodeIndexedFloat3((int)puVar1,param_5,param_6,param_7);
    return;
  }
  *param_5 = *pfVar3;
  param_5[1] = pfVar3[1];
  param_5[2] = pfVar3[2];
  param_5[3] = pfVar3[3];
  *param_6 = *puVar4;
  return;
}

