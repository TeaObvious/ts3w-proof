/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name. cdecl key/sample4/flagsOut/indexedContext. Flags and shortcut priority
   match00584700. Regular path zero-extends u16 indices at+4/+6/+8, reads *(float**)indexedContext
   plus index*4, applies per-component sign with MULSS, writes XYZ only. No indexed-array bounds
   validation here. Context firstDWORD is pointer, not an embedded float. Shortcut0x10 writes
   positive zeros even if sign bits set;0x40 preserves signed zero multiplication. */

void __cdecl
ClipKey_DecodeIndexedFloat3(int param_1,float *param_2,undefined2 *param_3,int *param_4)

{
  ushort uVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  
  fVar3 = DAT_00fab218;
  fVar7 = DAT_00f998f8;
  *param_3 = *(undefined2 *)(param_1 + 2);
  fVar6 = fVar7;
  if ((*(byte *)(param_1 + 2) & 1) != 0) {
    fVar6 = fVar3;
  }
  uVar1 = *(ushort *)(param_1 + 2);
  fVar5 = fVar7;
  if ((uVar1 & 2) != 0) {
    fVar5 = fVar3;
  }
  fVar4 = fVar7;
  if ((uVar1 & 4) != 0) {
    fVar4 = fVar3;
  }
  if ((uVar1 & 8) != 0) {
    fVar7 = fVar3;
  }
  if ((uVar1 & 0x70) == 0) {
    iVar2 = *param_4;
    *param_2 = *(float *)(iVar2 + (uint)*(ushort *)(param_1 + 4) * 4) * fVar6;
    param_2[1] = *(float *)(iVar2 + (uint)*(ushort *)(param_1 + 6) * 4) * fVar5;
    param_2[2] = *(float *)(iVar2 + (uint)*(ushort *)(param_1 + 8) * 4) * fVar4;
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

