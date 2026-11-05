/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00584826) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst name. cdecl key/sample4/flagsOut. flags u16 at key+2 copied to output; bits1/2/4/8 choose
   signs for XYZW. Flag0x10 has priority and writes all +0 ignoring signs. Else0x20 writes signed
   ones; else0x40 writes signed-zero XYZ and signed-one W. Regular path extracts packed DWORD low10,
   middle10, high10 with0x3FF masks, applies signs and stored float reciprocal at00FCCB98 using x87,
   writes XYZ only. Regular W remains caller storage. No validation of record bounds occurs here. */

void __cdecl ClipKey_DecodePacked10x3(int param_1,float *param_2,undefined2 *param_3)

{
  ushort uVar1;
  float fVar2;
  float fVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float local_10 [4];
  
  fVar2 = DAT_00fab218;
  fVar10 = DAT_00f998f8;
  *param_3 = *(undefined2 *)(param_1 + 2);
  fVar3 = _DAT_00fccb98;
  local_10[0] = fVar10;
  local_10[1] = fVar10;
  local_10[2] = fVar10;
  fVar9 = fVar10;
  if ((*(byte *)(param_1 + 2) & 1) != 0) {
    local_10[0] = fVar2;
    fVar9 = fVar2;
  }
  uVar1 = *(ushort *)(param_1 + 2);
  fVar8 = fVar10;
  if ((uVar1 & 2) != 0) {
    local_10[1] = fVar2;
    fVar8 = fVar2;
  }
  fVar7 = fVar10;
  if ((uVar1 & 4) != 0) {
    local_10[2] = fVar2;
    fVar7 = fVar2;
  }
  if ((uVar1 & 8) != 0) {
    fVar10 = fVar2;
  }
  if ((uVar1 & 0x70) == 0) {
    uVar5 = 0;
    do {
      if (uVar5 == 1) {
        uVar4 = *(uint *)(param_1 + 4) >> 10;
      }
      else {
        uVar4 = *(uint *)(param_1 + 4);
        if (uVar5 == 2) {
          uVar4 = uVar4 >> 0x14;
        }
      }
      uVar6 = uVar5 + 1;
      param_2[uVar5] = (float)(uVar4 & 0x3ff) * local_10[uVar5] * fVar3;
      uVar5 = uVar6;
    } while (uVar6 < 3);
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
      *param_2 = fVar9;
      param_2[1] = fVar8;
      param_2[2] = fVar7;
      param_2[3] = fVar10;
      return;
    }
    if ((uVar1 & 0x40) != 0) {
      *param_2 = fVar9 * 0.0;
      param_2[1] = fVar8 * 0.0;
      param_2[2] = fVar7 * 0.0;
      param_2[3] = fVar10;
      return;
    }
  }
  return;
}

