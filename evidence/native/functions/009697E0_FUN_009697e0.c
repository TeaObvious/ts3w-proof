/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * ECX camera path owner. Clears map and active selection, constructs INI source CameraFlyThroughPath.ini then enumerates sections with969650 callback and context. Sorts each path through969360, appends final48byte control copying the last data and time+1. Captures custom index separately, optionally reselects and restarts an already active path. Full source/mount/factory/sort failure and callback ordering remain separate.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 009697E0_FUN_009697e0.asm
 */

void __fastcall FUN_009697e0(int param_1)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int *piVar5;
  int iVar6;
  float fVar7;
  int local_524 [2];
  int local_51c;
  undefined4 *local_518;
  int local_514;
  undefined4 local_510;
  undefined4 uStack_50c;
  undefined4 uStack_508;
  undefined4 uStack_504;
  undefined4 local_500;
  undefined4 uStack_4fc;
  undefined4 uStack_4f8;
  undefined4 uStack_4f4;
  undefined4 local_4f0;
  float local_4ec;
  undefined4 local_4e8;
  undefined4 local_4e0 [14];
  undefined4 local_4a8 [297];
  
  cVar1 = *(char *)(param_1 + 0x1a0);
  local_51c = param_1;
  if (cVar1 != '\0') {
    FUN_00968a30(param_1);
  }
  FUN_00b7a260(*(int *)(param_1 + 0x3c),*(uint *)(param_1 + 0x40));
  *(undefined4 *)(param_1 + 0x44) = 0;
  *(undefined4 *)(param_1 + 0x18c) = 0;
  FUN_007d0120(local_4a8);
  uVar3 = FUN_007d0370(local_4a8,(wchar_t *)PTR_u_CameraFlyThroughPath_ini_0117ee30,0);
  if ((char)uVar3 != '\0') {
    local_518 = local_4a8;
    local_514 = param_1 + 0x38;
    FUN_004f16c0(local_518,FUN_00969650,&local_518);
    piVar5 = *(int **)(param_1 + 0x3c);
    iVar6 = *piVar5;
    if (iVar6 == 0) {
      piVar5 = piVar5 + 1;
      iVar6 = *piVar5;
      while (iVar6 == 0) {
        piVar5 = piVar5 + 1;
        iVar6 = *piVar5;
      }
      iVar6 = *piVar5;
    }
    local_524[0] = *(int *)(*(int *)(param_1 + 0x3c) + *(int *)(param_1 + 0x40) * 4);
    if (iVar6 != local_524[0]) {
      do {
        FUN_00969360(*(float **)(iVar6 + 4),*(float **)(iVar6 + 8));
        puVar4 = *(undefined4 **)(iVar6 + 8);
        if (*(undefined4 **)(iVar6 + 4) != puVar4) {
          local_510 = puVar4[-0xc];
          uStack_50c = puVar4[-0xb];
          uStack_508 = puVar4[-10];
          uStack_504 = puVar4[-9];
          local_4e8 = puVar4[-2];
          local_500 = puVar4[-8];
          uStack_4fc = puVar4[-7];
          uStack_4f8 = puVar4[-6];
          uStack_4f4 = puVar4[-5];
          local_4f0 = puVar4[-4];
          local_4ec = (float)puVar4[-3];
          if (puVar4 < *(undefined4 **)(iVar6 + 0xc)) {
            *(undefined4 **)(iVar6 + 8) = puVar4 + 0xc;
          }
          else {
            FUN_009687d0((undefined4 *)(iVar6 + 4),puVar4,local_4e0);
          }
          iVar2 = *(int *)(iVar6 + 8);
          fVar7 = local_4ec + FLOAT_00f998f8;
          *(undefined4 *)(iVar2 + -0x30) = local_510;
          *(undefined4 *)(iVar2 + -0x2c) = uStack_50c;
          *(undefined4 *)(iVar2 + -0x28) = uStack_508;
          *(undefined4 *)(iVar2 + -0x24) = uStack_504;
          *(undefined4 *)(iVar2 + -0x20) = local_500;
          *(undefined4 *)(iVar2 + -0x1c) = uStack_4fc;
          *(undefined4 *)(iVar2 + -0x18) = uStack_4f8;
          *(undefined4 *)(iVar2 + -0x14) = uStack_4f4;
          *(undefined4 *)(iVar2 + -0x10) = local_4f0;
          *(undefined4 *)(iVar2 + -8) = local_4e8;
          *(float *)(iVar2 + -0xc) = fVar7;
        }
        iVar6 = *(int *)(iVar6 + 0x14);
        if (iVar6 == 0) {
          do {
            iVar6 = piVar5[1];
            piVar5 = piVar5 + 1;
          } while (iVar6 == 0);
        }
      } while (iVar6 != local_524[0]);
      param_1 = local_51c;
    }
  }
  puVar4 = (undefined4 *)FUN_00c5fe00();
  *(undefined4 *)(param_1 + 0x19c) = *puVar4;
  if (cVar1 != '\0') {
    FUN_004b0f80((void *)(param_1 + 0x38),local_524,(uint *)(param_1 + 400));
    if (local_524[0] != *(int *)(*(int *)(param_1 + 0x3c) + *(int *)(param_1 + 0x40) * 4)) {
      *(int *)(param_1 + 0x18c) = local_524[0] + 4;
    }
    FUN_009693e0(param_1);
  }
  FUN_007d0250(local_4a8);
  return;
}

