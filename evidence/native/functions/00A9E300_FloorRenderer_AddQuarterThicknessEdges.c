/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 floor geometry preparation comparison.
   Encodes three oriented edges for a signed-byte tile/quarter through AF7800. On renderer level0
   and a border tile, keeps an edge only if at least one endpoint is separated from every lot border
   by at least float32(1/65536). For each admitted edge, finds the opposite-orientation packed key;
   erases it if found, otherwise inserts the current key, then marks this+0x90 dirty.
   Physical ECX receiver, one tile record pointer, RET4. The packed type/coordinate/orientation
   arithmetic and signed-byte source domain are retained. This is incremental shared-edge
   cancellation, not complete-snapshot neighbor enumeration; no arbitrary-coordinate numeric
   equivalence is inferred.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

void __thiscall FloorRenderer_AddQuarterThicknessEdges(void *this,char *param_1)

{
  int iVar1;
  uint uVar2;
  uint *puVar3;
  bool bVar4;
  uint **ppuVar5;
  uint uVar6;
  uint *puVar7;
  int local_84;
  uint local_7c;
  float local_78;
  float local_74;
  uint local_70;
  float local_6c;
  float local_68;
  uint *local_64;
  int local_60;
  uint *local_5c;
  int local_58;
  int local_54 [3];
  uint *local_48;
  undefined4 local_44 [3];
  int local_38 [2];
  uint local_30 [11];
  
  if ((*(int *)((int)this + 0x14) == 0) &&
     ((((*param_1 == '\0' || (param_1[1] == '\0')) ||
       ((int)*param_1 == *(int *)((int)this + 0x1c) + -1)) ||
      ((int)param_1[1] == *(int *)((int)this + 0x20) + -1)))) {
    bVar4 = true;
  }
  else {
    bVar4 = false;
  }
  FloorQuarter_EncodeThreeOrientedEdges(param_1,local_38);
  puVar7 = local_30;
  local_84 = 3;
  do {
    if (bVar4) {
      FloorEdge_ComputeDirectedEndpoints
                ((int *)(puVar7 + -2),&local_68,&local_74,&local_6c,&local_78);
      iVar1 = *(int *)((int)this + 0xc);
      if ((((1.5258789e-05 <= ABS(local_68)) && (1.5258789e-05 <= ABS(local_74))) &&
          ((1.5258789e-05 <= ABS(local_68 - (float)*(int *)(iVar1 + 0x60)) &&
           (1.5258789e-05 <= ABS(local_74 - (float)*(int *)(iVar1 + 100)))))) ||
         (((1.5258789e-05 <= ABS(local_6c) && (1.5258789e-05 <= ABS(local_78))) &&
          ((1.5258789e-05 <= ABS(local_6c - (float)*(int *)(iVar1 + 0x60)) &&
           (1.5258789e-05 <= ABS(local_78 - (float)*(int *)(iVar1 + 100)))))))) goto LAB_00a9e484;
    }
    else {
LAB_00a9e484:
      local_7c = (puVar7[-1] << 0xe | puVar7[-2]) * 8 | *puVar7;
      if ((char)puVar7[1] != '\0') {
        local_7c = local_7c | 0x80000000;
      }
      uVar2 = *(uint *)((int)this + 0x58);
      uVar6 = (local_7c ^ 0x80000000) % uVar2;
      iVar1 = *(int *)((int)this + 0x54);
      for (puVar3 = *(uint **)(iVar1 + uVar6 * 4); puVar3 != (uint *)0x0; puVar3 = (uint *)puVar3[1]
          ) {
        if ((local_7c ^ 0x80000000) == *puVar3) {
          local_64 = puVar3;
          local_60 = iVar1 + uVar6 * 4;
          ppuVar5 = &local_64;
          goto LAB_00a9e4df;
        }
      }
      local_58 = iVar1 + uVar2 * 4;
      local_5c = *(uint **)(iVar1 + uVar2 * 4);
      ppuVar5 = &local_5c;
LAB_00a9e4df:
      local_48 = ppuVar5[1];
      if (*ppuVar5 == *(uint **)(iVar1 + uVar2 * 4)) {
        local_70 = local_70 & 0xffffff00;
        FUN_006b5bc0((void *)((int)this + 0x50),local_44,&local_7c);
      }
      else {
        FUN_00ae02b0((void *)((int)this + 0x50),local_54,(int)*ppuVar5,(int *)ppuVar5[1]);
      }
    }
    puVar7 = puVar7 + 4;
    local_84 = local_84 + -1;
    if (local_84 == 0) {
      *(undefined1 *)((int)this + 0x90) = 1;
      return;
    }
  } while( true );
}

