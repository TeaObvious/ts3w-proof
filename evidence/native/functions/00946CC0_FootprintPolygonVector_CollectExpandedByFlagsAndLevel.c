/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). stdcall RET12.
   Unsigned DIV computes expanded polygon count / base flag count before the zero-count loop gate.
   Each group is selected using base flags and its first record's +5 level byte, then all
   quotient-count polygons append. Nonzero flag count is a caller invariant; no division-by-zero
   fallback visible. */

void FootprintPolygonVector_CollectExpandedByFlagsAndLevel
               (int *param_1,int *param_2,undefined4 *param_3)

{
  uint uVar1;
  void *pvVar2;
  int *this;
  undefined4 *puVar3;
  undefined4 *puVar4;
  uint uVar5;
  undefined4 *puVar6;
  uint uVar7;
  undefined4 *puVar8;
  int local_18;
  uint local_14;
  uint local_c;
  
  puVar4 = param_3;
  uVar7 = param_2[1] - *param_2 >> 2;
  uVar5 = (uint)(param_1[1] - *param_1 >> 6) / uVar7;
  local_14 = 0;
  if (uVar7 != 0) {
    local_c = 0;
    param_3 = (undefined4 *)0x0;
    do {
      uVar1 = *(uint *)(*param_2 + local_14 * 4);
      if (((((uVar1 & puVar4[3]) == puVar4[3]) && ((puVar4[4] & uVar1) == 0)) &&
          (*(char *)(*param_1 + 5 + (int)param_3) == *(char *)(puVar4 + 5))) &&
         (local_c < uVar5 + local_c)) {
        local_18 = (uVar5 + local_c) - local_c;
        puVar6 = param_3;
        do {
          pvVar2 = (void *)*puVar4;
          this = *(int **)((int)pvVar2 + 4);
          puVar8 = (undefined4 *)(*param_1 + (int)puVar6);
          if (this < *(int **)((int)pvVar2 + 8)) {
            *(int **)((int)pvVar2 + 4) = this + 4;
            if (this != (int *)0x0) {
              FUN_006289f0(this,puVar8 + 0xc);
            }
          }
          else {
            FUN_00808140(pvVar2,this,puVar8 + 0xc);
          }
          pvVar2 = (void *)puVar4[1];
          if (pvVar2 != (void *)0x0) {
            puVar3 = *(undefined4 **)((int)pvVar2 + 4);
            if (puVar3 < *(undefined4 **)((int)pvVar2 + 8)) {
              *(undefined4 **)((int)pvVar2 + 4) = puVar3 + 1;
              if (puVar3 != (undefined4 *)0x0) {
                *puVar3 = *puVar8;
              }
            }
            else {
              FUN_00982420(pvVar2,puVar3,puVar8);
            }
          }
          pvVar2 = (void *)puVar4[2];
          if (pvVar2 != (void *)0x0) {
            puVar3 = *(undefined4 **)((int)pvVar2 + 4);
            if (puVar3 < *(undefined4 **)((int)pvVar2 + 8)) {
              *(undefined4 **)((int)pvVar2 + 4) = puVar3 + 1;
              if (puVar3 != (undefined4 *)0x0) {
                *puVar3 = puVar8[7];
              }
            }
            else {
              FUN_00405f80(pvVar2,puVar3,puVar8 + 7);
            }
          }
          puVar6 = puVar6 + 0x10;
          local_18 = local_18 + -1;
        } while (local_18 != 0);
      }
      local_c = local_c + uVar5;
      param_3 = param_3 + uVar5 * 0x10;
      local_14 = local_14 + 1;
    } while (local_14 < uVar7);
  }
  return;
}

