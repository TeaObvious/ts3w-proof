/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name. cdecl key/sample4/flagsOut. Flags and shortcut priority match00584700. Regular
   components are zero-extended FULL u16 words at+4/+6/+8/+0xA, converted with CVTSI2SS, multiplied
   by sign and then binary32 constant at00FCCB9C. There is NO0xFFF mask, division instruction,
   clamping or quaternion normalization in this raw reader. Endpoint dispatcher later applies
   scale/offset and pose consumer interpolates/normalizes. This full-word behavior differs from
   project readers which mask12 bits; valid authored-data consequences require input evidence. */

void __cdecl ClipKey_DecodeU16x4(int param_1,float *param_2,undefined2 *param_3)

{
  ushort uVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  
  fVar2 = DAT_00fab218;
  fVar7 = DAT_00f998f8;
  *param_3 = *(undefined2 *)(param_1 + 2);
  fVar3 = DAT_00fccb9c;
  fVar6 = fVar7;
  if ((*(byte *)(param_1 + 2) & 1) != 0) {
    fVar6 = fVar2;
  }
  uVar1 = *(ushort *)(param_1 + 2);
  fVar5 = fVar7;
  if ((uVar1 & 2) != 0) {
    fVar5 = fVar2;
  }
  fVar4 = fVar7;
  if ((uVar1 & 4) != 0) {
    fVar4 = fVar2;
  }
  if ((uVar1 & 8) != 0) {
    fVar7 = fVar2;
  }
  if ((uVar1 & 0x70) == 0) {
    *param_2 = (float)*(ushort *)(param_1 + 4) * fVar6 * DAT_00fccb9c;
    param_2[1] = (float)*(ushort *)(param_1 + 6) * fVar5 * fVar3;
    param_2[2] = (float)*(ushort *)(param_1 + 8) * fVar4 * fVar3;
    param_2[3] = (float)*(ushort *)(param_1 + 10) * fVar7 * fVar3;
  }
  else {
    if ((uVar1 & 0x10) != 0) {
      param_2[3] = 0.0;
      param_2[2] = 0.0;
      param_2[1] = 0.0;
      *param_2 = 0.0;
      return;
    }
    if ((uVar1 & 0x20) != 0) {
      *param_2 = fVar6;
      param_2[1] = fVar5;
      param_2[2] = fVar4;
      param_2[3] = fVar7;
      return;
    }
    if ((uVar1 & 0x40) != 0) {
      *param_2 = fVar6 * 0.0;
      param_2[1] = fVar5 * 0.0;
      param_2[2] = fVar4 * 0.0;
      param_2[3] = fVar7;
      return;
    }
  }
  return;
}

