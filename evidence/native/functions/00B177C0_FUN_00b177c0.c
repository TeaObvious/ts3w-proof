/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Stair subtotal. ECX owner; RET0 and low EAX after F7F620, not independent EDX:EAX UInt64 result. Direction tables choose0/2/4/6 run/width; other indices select zero. SUBSS stores binary32 differences; x87 run*4+.5 is converted after setting truncation control, low32 is then reinterpreted unsigned through sign correction2^32. Width*price adds to a stored binary64 subtotal once per admitted row. Final truncation follows. The decompiler float subtotal and CONCAT44 are misleading. C8E7D0 full catalog policy and exceptional FP remain open.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00B177C0_FUN_00b177c0.asm
 */

/* WARNING (jumptable): Unable to track spacebase fully for stack */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulonglong __fastcall FUN_00b177c0(int param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  void *this;
  int iVar5;
  int iVar6;
  undefined4 extraout_EDX;
  int *piVar7;
  float fVar8;
  int local_20;
  
  this = DAT_011ee034;
  piVar7 = *(int **)(param_1 + 0x20);
  fVar4 = 0.0;
  iVar6 = *piVar7;
  if (iVar6 == 0) {
    piVar7 = piVar7 + 1;
    iVar6 = *piVar7;
    while (iVar6 == 0) {
      piVar7 = piVar7 + 1;
      iVar6 = *piVar7;
    }
    iVar6 = *piVar7;
  }
  iVar2 = *(int *)(*(int *)(param_1 + 0x20) + *(int *)(param_1 + 0x24) * 4);
  while (iVar6 != iVar2) {
    iVar5 = FUN_00c8e7d0(this,(uint *)(iVar6 + 8),'\x01');
    if (iVar5 != 0) {
      switch(*(undefined4 *)(iVar6 + 0x48)) {
      case 0:
        fVar8 = *(float *)(iVar6 + 0x58) - *(float *)(iVar6 + 0x4c);
        break;
      default:
        fVar8 = 0.0;
        break;
      case 2:
        fVar8 = *(float *)(iVar6 + 0x50) - *(float *)(iVar6 + 0x5c);
        break;
      case 4:
        fVar8 = *(float *)(iVar6 + 0x4c) - *(float *)(iVar6 + 0x58);
        break;
      case 6:
        fVar8 = *(float *)(iVar6 + 0x5c) - *(float *)(iVar6 + 0x50);
      }
      local_20 = (int)(longlong)ROUND(fVar8 * DAT_00fb3f7c + _DAT_00f9b5b4);
      switch(*(undefined4 *)(iVar6 + 0x48)) {
      case 0:
        fVar8 = *(float *)(iVar6 + 0x50) - *(float *)(iVar6 + 0x5c);
        break;
      default:
        fVar8 = 0.0;
        break;
      case 2:
        fVar8 = *(float *)(iVar6 + 0x4c) - *(float *)(iVar6 + 0x58);
        break;
      case 4:
        fVar8 = *(float *)(iVar6 + 0x5c) - *(float *)(iVar6 + 0x50);
        break;
      case 6:
        fVar8 = *(float *)(iVar6 + 0x58) - *(float *)(iVar6 + 0x4c);
      }
      fVar3 = (float)local_20;
      if (local_20 < 0) {
        fVar3 = fVar3 + FLOAT_00f99948;
      }
      fVar4 = fVar3 * fVar8 * *(float *)(iVar5 + 0x58) + fVar4;
    }
    iVar6 = *(int *)(iVar6 + 0x80);
    while (iVar6 == 0) {
      piVar1 = piVar7 + 1;
      piVar7 = piVar7 + 1;
      iVar6 = *piVar1;
    }
  }
  iVar6 = Compiler_TruncateX87ToLowInt32((float10)fVar4);
  return CONCAT44(extraout_EDX,iVar6);
}

