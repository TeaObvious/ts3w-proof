/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name. cdecl nine stack slots. Endpoint records stride12: frame u16+0, flags u16+2,
   unsigned components+4/+6/+8/+0xA. Lower-bound helper00584BB0, unsigned next-frame test and
   incoming bit0x80 suppression select endpoint pair. Raw005851B0 zero-extends ENTIRE component
   words; no0x0FFF masking occurs in that decoder. Count is passed zero-extended from dispatcher
   u16. Native nonempty/sorted assumptions are not equivalent to project malformed-data rejection.
    */

void __cdecl
ClipKeys_ReadU16QuaternionEndpointPair
          (uint param_1,float *param_2,undefined2 *param_3,uint param_4,float *param_5,
          undefined2 *param_6,undefined4 param_7,ushort *param_8,uint param_9)

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
  puVar2 = param_8 + uVar5 * 6;
  puVar6 = (ushort *)FUN_00584bb0((int)param_8,(int)puVar2,&param_1);
  puVar4 = param_3;
  pfVar3 = param_2;
  if (puVar2 <= puVar6) {
    puVar6 = puVar6 + -6;
  }
  if ((puVar6 != puVar1) && (param_1 < *puVar6)) {
    puVar6 = puVar6 + -6;
  }
  ClipKey_DecodeU16x4((int)puVar6,param_2,param_3);
  puVar1 = puVar6 + 6;
  if ((((puVar1 != puVar2) && (*puVar1 <= param_4)) && (puVar1 != puVar6)) &&
     ((puVar6[7] & 0x80) == 0)) {
    ClipKey_DecodeU16x4((int)puVar1,param_5,param_6);
    return;
  }
  *param_5 = *pfVar3;
  param_5[1] = pfVar3[1];
  param_5[2] = pfVar3[2];
  param_5[3] = pfVar3[3];
  *param_6 = *puVar4;
  return;
}

