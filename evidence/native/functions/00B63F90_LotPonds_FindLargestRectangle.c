/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Complete
   histogram/stack rectangle operation over selected pond-ID cells. Sweep x rows and z columns,
   update answer only for strictly larger area so first tie remains. Writes output rectangle; AL
   indicates positive area; RET0C. Existing empty/null admission and allocation/cleanup remain; no
   algorithm rewrite. Original managed LotPond constructor/startup/ID/corner/BuildBuy lifetime
   remains its authority. All IDs, physical ABI, prototypes/types/body/bytes/Listing/flow/analysis
   remain unchanged; current resource/cache policy is preserved. */

bool __thiscall LotPonds_FindLargestRectangle(void *this,char *param_1,int param_2,int *param_3)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  int *piVar6;
  int *piVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  char *pcVar11;
  int local_64;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  int *local_40;
  int *local_3c;
  int *local_38;
  char *local_34;
  char *local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_1c;
  char *local_18;
  int local_14;
  int *local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  piVar1 = *(int **)this;
  if (piVar1 != (int *)0x0) {
    local_8 = *(undefined4 *)((int)this + 4);
    local_4 = *(undefined4 *)((int)this + 8);
    local_10 = (int *)0x0;
    local_c = 0;
    FUN_00b62d40(&local_30,(int *)param_1,(int *)&local_10);
    iVar8 = local_24;
    iVar9 = (local_24 - local_2c) + 1;
    param_1 = "Lot/PondManager/WorkOutLargestRectangleFast";
    FUN_00d4c330(&local_10,iVar9,&param_1);
    piVar6 = local_10;
    if (iVar9 != 0) {
      for (; iVar9 != 0; iVar9 = iVar9 + -1) {
        *piVar6 = 0;
        piVar6 = piVar6 + 1;
      }
    }
    pcVar11 = (char *)0x0;
    local_1c = 0;
    local_64 = 0;
    local_40 = (int *)0x0;
    local_3c = (int *)0x0;
    local_38 = (int *)0x0;
    local_34 = "Lot/PondManager/WorkOutLargestRectangleFast";
    local_18 = (char *)0xffffffff;
    local_14 = -1;
    param_1 = local_30;
    piVar6 = local_10;
    piVar7 = local_10;
    iVar9 = local_2c;
    if ((int)local_30 < local_28) {
      do {
        for (; iVar9 < iVar8; iVar9 = iVar9 + 1) {
          if (*(short *)(*piVar1 + (int)(param_1 + *(int *)((int)this + 4) * iVar9) * 2) == param_2)
          {
            *piVar6 = *piVar6 + 1;
          }
          else {
            *piVar6 = 0;
          }
          piVar6 = piVar6 + 1;
          piVar7 = local_10;
        }
        iVar10 = 0;
        local_3c = local_40;
        piVar4 = local_40;
        piVar6 = piVar7;
        iVar9 = local_2c;
        if (local_2c <= iVar8) {
          do {
            iVar8 = *piVar7;
            iVar3 = iVar8;
            if (iVar10 < iVar8) {
              local_48 = iVar9;
              local_44 = iVar10;
              if (piVar4 < local_38) {
                piVar6 = piVar4 + 2;
                piVar2 = piVar6;
                if (piVar4 != (int *)0x0) {
                  piVar4[1] = iVar10;
                  *piVar4 = iVar9;
                }
              }
              else {
                FUN_0040c540(&local_40,piVar4,&local_48);
                piVar6 = local_3c;
                piVar2 = local_3c;
              }
            }
            else {
              piVar6 = piVar4;
              iVar3 = iVar10;
              piVar2 = local_3c;
              if (iVar8 < iVar10) {
                do {
                  piVar5 = piVar4;
                  local_4c = piVar5[-1];
                  local_50 = piVar5[-2];
                  iVar3 = (iVar9 - local_50) * iVar10;
                  local_3c = piVar5 + -2;
                  if (iVar3 - local_64 != 0 && local_64 <= iVar3) {
                    pcVar11 = param_1 + (1 - iVar10);
                    local_18 = param_1 + 1;
                    local_64 = iVar3;
                    local_1c = local_50;
                    local_14 = iVar9;
                  }
                } while ((local_40 != local_3c) &&
                        (piVar4 = local_3c, iVar10 = local_4c, iVar8 < local_4c));
                piVar6 = local_3c;
                iVar3 = iVar8;
                piVar2 = local_3c;
                if (iVar8 != 0) {
                  if (local_3c < local_38) {
                    piVar6 = piVar5;
                    piVar2 = piVar5;
                    if (local_3c != (int *)0x0) {
                      *local_3c = local_50;
                      piVar5[-1] = local_4c;
                    }
                  }
                  else {
                    FUN_0040c540(&local_40,local_3c,&local_50);
                    piVar6 = local_3c;
                    piVar2 = local_3c;
                  }
                }
              }
            }
            local_3c = piVar2;
            iVar9 = iVar9 + 1;
            piVar7 = piVar7 + 1;
            piVar4 = piVar6;
            piVar6 = local_10;
            iVar8 = local_24;
            iVar10 = iVar3;
          } while (iVar9 <= local_24);
        }
        param_1 = param_1 + 1;
        piVar7 = piVar6;
        iVar9 = local_2c;
      } while ((int)param_1 < local_28);
    }
    param_3[1] = local_1c;
    param_3[2] = (int)local_18;
    *param_3 = (int)pcVar11;
    param_3[3] = local_14;
    if (local_40 != (int *)0x0) {
      Memory_FreeIfNonNull(local_40);
      piVar6 = local_10;
    }
    if (piVar6 != (int *)0x0) {
      Memory_FreeIfNonNull(piVar6);
    }
    return 0 < local_64;
  }
  return false;
}

