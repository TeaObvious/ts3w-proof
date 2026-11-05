/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Four stack words, path/index/span/dot threshold; RET0x10. Validates the selected index and walks
   backward through a bounded tail. Constraint and usage gates restrict demotion; normalized segment
   dot product below the supplied threshold can set a selected constraint to0. A separately observed
   mode byte additionally sets node flag20. No general route validity or unknown mode meaning is
   established. */

void NeighborhoodPath_DemoteEligibleTailConstraints
               (int param_1,int param_2,int param_3,float param_4)

{
  ushort *puVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  float *pfVar6;
  float fVar7;
  float fVar8;
  char local_21;
  int local_20;
  int local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  
  if (((param_1 != 0) && (param_2 < *(int *)(param_1 + 0xc) - *(int *)(param_1 + 8) >> 6)) &&
     (2 < param_2)) {
    local_1c = 3;
    local_20 = param_2 - param_3;
    piVar4 = &local_1c;
    if (2 < param_2 - param_3) {
      piVar4 = &local_20;
    }
    local_1c = *piVar4;
    local_21 = '\0';
    iVar5 = thunk_FUN_00835d40();
    if (iVar5 != 0) {
      local_21 = *(char *)(iVar5 + 0x51);
    }
    pfVar6 = (float *)(param_2 * 0x40 + *(int *)(param_1 + 8));
    local_20 = param_2;
    if (local_1c <= param_2) {
      iVar5 = (param_2 + -3) * 0x40;
      fVar7 = DAT_00fede88;
      fVar8 = FLOAT_00fae548;
      while (iVar2 = *(int *)(param_1 + 8), *(int *)(iVar5 + 0x1c + iVar2) != 1) {
        switch(*(undefined4 *)(iVar5 + 0x5c + iVar2)) {
        case 0:
          goto switchD_00642895_caseD_0;
        case 1:
        case 10:
        case 0xb:
          iVar3 = *(int *)(iVar5 + 0x78 + iVar2);
          if (((iVar3 == 7) || (iVar3 == 9)) || (iVar3 == 0x12)) {
            local_18 = *(float *)(iVar5 + 0x40 + iVar2);
            local_14 = *(float *)(iVar5 + 0x48 + iVar2);
            local_10 = *pfVar6 - local_18;
            local_18 = local_18 - *(float *)(iVar5 + iVar2);
            local_c = pfVar6[2] - local_14;
            local_14 = local_14 - *(float *)(iVar5 + 8 + iVar2);
            if (((local_10 <= fVar7) && (fVar8 <= local_10)) &&
               ((local_c <= fVar7 && (fVar8 <= local_c)))) {
              return;
            }
            if ((((local_18 <= fVar7) && (fVar8 <= local_18)) && (local_14 <= fVar7)) &&
               (fVar8 <= local_14)) {
              return;
            }
            FUN_00642650(&local_10,&local_10);
            FUN_00642650(&local_18,&local_18);
            fVar8 = FLOAT_00fae548;
            fVar7 = DAT_00fede88;
            if ((local_18 * local_10 + local_14 * local_c < param_4) &&
               (*(undefined4 *)(iVar5 + 0x5c + iVar2) = 0, fVar7 = DAT_00fede88, local_21 != '\0'))
            {
              puVar1 = (ushort *)(iVar5 + 0xe + iVar2);
              *puVar1 = *puVar1 | 0x20;
              fVar7 = DAT_00fede88;
            }
          }
switchD_00642895_caseD_0:
          local_20 = local_20 + -1;
          iVar5 = iVar5 + -0x40;
          if (local_20 < local_1c) {
            return;
          }
          break;
        default:
          return;
        }
      }
    }
  }
  return;
}

