/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Restores runtime
   arrays from default record+8 flags across all three layers. Changed flags notify routing manager
   0x008330a0. This body does not call 0x00791120. */

void __fastcall FootprintComponent_ResetRuntimeFlags(int param_1)

{
  int *piVar1;
  int iVar2;
  bool bVar3;
  bool bVar4;
  char cVar5;
  void *this;
  int *piVar6;
  uint uVar7;
  undefined4 uVar8;
  void *pvVar9;
  uint uVar10;
  int local_c;
  
  uVar10 = 0;
  if ((*(int *)(param_1 + 0x28) != 0) || (*(int *)(param_1 + 0x30) != 0)) {
    this = (void *)thunk_FUN_00835d40();
    bVar3 = false;
    bVar4 = false;
    if (*(int *)(param_1 + 0x28) != 0) {
      piVar6 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)(param_1 + 0x28));
      uVar7 = piVar6[1] - *piVar6 >> 6;
      if (uVar7 != 0) {
        local_c = 0;
        do {
          iVar2 = *piVar6;
          piVar1 = (int *)(*(int *)(param_1 + 0x58) + uVar10 * 4);
          if (*piVar1 != *(int *)(iVar2 + local_c + 8)) {
            if ((bVar3) ||
               ((this != (void *)0x0 &&
                (uVar8 = FUN_00829460(this,*(void **)(param_1 + 4),'\x01','\0'), (char)uVar8 != '\0'
                )))) {
              bVar3 = true;
            }
            else {
              bVar3 = false;
            }
            *piVar1 = *(int *)(iVar2 + local_c + 8);
            bVar4 = true;
          }
          local_c = local_c + 0x40;
          uVar10 = uVar10 + 1;
        } while (uVar10 < uVar7);
      }
    }
    uVar10 = 0;
    if (*(int *)(param_1 + 0x30) != 0) {
      piVar6 = (int *)FootprintResource_GetSecondaryPolygonVector(*(int *)(param_1 + 0x30));
      uVar7 = piVar6[1] - *piVar6 >> 6;
      if (uVar7 != 0) {
        local_c = 0;
        do {
          iVar2 = *piVar6;
          piVar1 = (int *)(*(int *)(param_1 + 0x68) + uVar10 * 4);
          if (*piVar1 != *(int *)(iVar2 + local_c + 8)) {
            if ((bVar3 == false) &&
               ((this == (void *)0x0 ||
                (uVar8 = FUN_00829460(this,*(void **)(param_1 + 4),'\x01','\0'), (char)uVar8 == '\0'
                )))) {
              bVar3 = false;
            }
            else {
              bVar3 = true;
            }
            *piVar1 = *(int *)(iVar2 + local_c + 8);
            bVar4 = true;
          }
          local_c = local_c + 0x40;
          uVar10 = uVar10 + 1;
        } while (uVar10 < uVar7);
      }
    }
    uVar10 = 0;
    if (*(int *)(param_1 + 0x2c) != 0) {
      piVar6 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)(param_1 + 0x2c));
      uVar7 = piVar6[1] - *piVar6 >> 6;
      if (uVar7 != 0) {
        local_c = 0;
        do {
          iVar2 = *piVar6;
          piVar1 = (int *)(*(int *)(param_1 + 0x48) + uVar10 * 4);
          if (*piVar1 != *(int *)(iVar2 + local_c + 8)) {
            if ((bVar3 == false) &&
               ((this == (void *)0x0 ||
                (uVar8 = FUN_00829460(this,*(void **)(param_1 + 4),'\x01','\0'), (char)uVar8 == '\0'
                )))) {
              bVar3 = false;
            }
            else {
              bVar3 = true;
            }
            *piVar1 = *(int *)(iVar2 + local_c + 8);
            bVar4 = true;
          }
          local_c = local_c + 0x40;
          uVar10 = uVar10 + 1;
        } while (uVar10 < uVar7);
      }
    }
    if ((bVar4) && (this != (void *)0x0)) {
      if (((*(byte *)(param_1 + 0x40) & 1) == 0) ||
         ((((*(void **)(param_1 + 4) != (void *)0x0 &&
            (pvVar9 = Object_GetComponentByMask(*(void **)(param_1 + 4),DAT_011ea158),
            pvVar9 != (void *)0x0)) &&
           (pvVar9 = *(void **)((int)pvVar9 + 0x30), pvVar9 != (void *)0x0)) &&
          (((*(uint *)((int)pvVar9 + 0x2c) & DAT_011ea0fc) != 0 ||
           (uVar8 = FUN_00944be0(pvVar9), (char)uVar8 != '\0')))))) {
        cVar5 = '\0';
      }
      else {
        cVar5 = '\x01';
      }
      FUN_008330a0(this,*(void **)(param_1 + 4),cVar5,bVar3,0);
    }
  }
  return;
}

