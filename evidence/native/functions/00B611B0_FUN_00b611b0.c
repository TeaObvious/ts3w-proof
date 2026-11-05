/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Read-only Ghidra export, 2026-10-12. Decompiled names and ABI are inferred;
   read the paired original-byte disassembly and guides/water/README.md.
   This internal helper is not a managed registration identity. */

void __thiscall
FUN_00b611b0(void *this,float param_1,float param_2,undefined4 param_3,undefined4 param_4,
            int param_5,int param_6,int param_7,undefined4 param_8,undefined4 param_9,
            undefined4 param_10,undefined4 param_11,int param_12,char param_13,undefined1 param_14)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  bool bVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  int local_30;
  
  *(undefined1 *)((int)this + 0xa1) = param_14;
  *(int *)((int)this + 0x8c) = param_12;
  *(undefined4 *)((int)this + 0x60) = *(undefined4 *)((int)this + 0x5c);
  *(undefined4 *)((int)this + 0x90) = param_9;
  *(undefined4 *)((int)this + 0x94) = param_10;
  *(undefined4 *)((int)this + 0x9c) = param_8;
  *(int *)((int)this + 0x98) = param_7;
  *(undefined1 *)((int)this + 0xa0) = 1;
  uVar4 = 0;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 0xb8) = *(undefined4 *)(*(int *)(param_12 + 0x60) + 0x29c);
  *(float *)((int)this + 0xa4) = param_1;
  *(float *)((int)this + 0xa8) = param_2;
  *(undefined4 *)((int)this + 0xac) = param_3;
  *(undefined4 *)((int)this + 0xb0) = param_4;
  fVar6 = (*(float *)((int)this + 0xac) - *(float *)((int)this + 0xa4)) / (float)param_5;
  uVar1 = (int)(fVar6 - 1.0) >> 0x1f;
  local_30 = (int)(longlong)ROUND((float)(~uVar1 & (uint)fVar6 | uVar1 & 0x3f800000));
  iVar3 = local_30;
  *(int *)((int)this + 8) = local_30;
  fVar6 = (*(float *)((int)this + 0xb0) - *(float *)((int)this + 0xa8)) / (float)param_6;
  uVar1 = (int)(fVar6 - 1.0) >> 0x1f;
  bVar5 = local_30 < 0;
  local_30 = (int)(longlong)ROUND((float)(~uVar1 & (uint)fVar6 | uVar1 & 0x3f800000));
  *(int *)((int)this + 0xc) = local_30;
  fVar6 = (float)iVar3;
  if (bVar5) {
    fVar6 = fVar6 + 4.2949673e+09;
  }
  *(float *)((int)this + 0x10) =
       (*(float *)((int)this + 0xac) - *(float *)((int)this + 0xa4)) / fVar6;
  fVar6 = (float)local_30;
  if (local_30 < 0) {
    fVar6 = fVar6 + 4.2949673e+09;
  }
  fVar6 = (*(float *)((int)this + 0xb0) - *(float *)((int)this + 0xa8)) / fVar6;
  fVar8 = *(float *)((int)this + 0x10);
  iVar3 = 0;
  *(float *)((int)this + 0x14) = fVar6;
  if (7 < param_7) {
    iVar2 = (param_7 - 8U >> 3) + 1;
    iVar3 = iVar2 * 8;
    do {
      iVar2 = iVar2 + -1;
      fVar8 = fVar8 * 0.5 * 0.5 * 0.5 * 0.5 * 0.5 * 0.5 * 0.5 * 0.5;
      fVar6 = fVar6 * 0.5 * 0.5 * 0.5 * 0.5 * 0.5 * 0.5 * 0.5 * 0.5;
    } while (iVar2 != 0);
  }
  if (iVar3 < param_7) {
    iVar3 = param_7 - iVar3;
    do {
      iVar3 = iVar3 + -1;
      fVar8 = fVar8 * 0.5;
      fVar6 = fVar6 * 0.5;
    } while (iVar3 != 0);
  }
  *(float *)((int)this + 0xbc) = fVar8;
  if (fVar8 < fVar6) {
    *(float *)((int)this + 0xbc) = fVar6;
  }
  if (param_13 != '\0') {
    FUN_00b61110((int)this);
    if (*(int *)((int)this + 8) != 0) {
      do {
        uVar1 = 0;
        if (*(int *)((int)this + 0xc) != 0) {
          fVar6 = (float)(int)uVar4;
          if ((int)uVar4 < 0) {
            fVar6 = fVar6 + 4.2949673e+09;
          }
          do {
            fVar8 = (float)(int)uVar1;
            fVar7 = fVar6 * *(float *)((int)this + 0x10) + param_1;
            if ((int)uVar1 < 0) {
              fVar8 = fVar8 + 4.2949673e+09;
            }
            fVar8 = fVar8 * *(float *)((int)this + 0x14) + param_2;
            iVar3 = FUN_00b5f900(this,fVar7,fVar8,fVar7 + *(float *)((int)this + 0x10),
                                 fVar8 + *(float *)((int)this + 0x14),0);
            if (iVar3 < 0) {
              *(undefined4 *)(*(int *)(*(int *)((int)this + 0x6c) + uVar4 * 0x10) + uVar1 * 4) =
                   0xffffffff;
            }
            else {
              *(int *)(*(int *)(*(int *)((int)this + 0x6c) + uVar4 * 0x10) + uVar1 * 4) = iVar3;
            }
            uVar1 = uVar1 + 1;
          } while (uVar1 < *(uint *)((int)this + 0xc));
        }
        uVar4 = uVar4 + 1;
      } while (uVar4 < *(uint *)((int)this + 8));
    }
    if (*(char *)((int)this + 0xb4) == '\0') {
      FUN_0061a6f0((void *)((int)this + 0x18),&DAT_0106eac8,2);
      *(undefined1 *)((int)this + 0xb4) = 1;
    }
  }
  return;
}

