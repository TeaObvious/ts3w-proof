/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 floor geometry preparation comparison.
   Uses the same three-edge codec and ground-border tolerance as A9E300. Looks up the current
   orientation, removes an existing entry, and when absent inserts the opposite orientation only if
   the low byte of the second argument is zero. Marks the renderer edge state dirty.
   Physical ECX receiver, tile pointer plus low-byte flag, RET8. Existing key packing, signed-byte
   source coordinates, incremental state and absent-key branch are preserved. The current snapshot
   band does not reproduce this mutation/lifetime workflow.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

void __thiscall
FloorRenderer_RemoveOrRestoreQuarterThicknessEdges(void *this,char *param_1,char param_2)

{
  int iVar1;
  uint uVar2;
  uint *puVar3;
  bool bVar4;
  uint **ppuVar5;
  uint *puVar6;
  uint uVar7;
  int local_74;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  uint local_60;
  uint local_5c;
  uint *local_58;
  uint *local_54;
  int local_50;
  uint *local_4c;
  int local_48;
  int local_44 [2];
  undefined4 local_3c [3];
  uint local_30 [3];
  undefined1 local_24 [36];
  
  if ((*(int *)((int)this + 0x14) == 0) &&
     ((((*param_1 == '\0' || (param_1[1] == '\0')) ||
       ((int)*param_1 == *(int *)((int)this + 0x1c) + -1)) ||
      ((int)param_1[1] == *(int *)((int)this + 0x20) + -1)))) {
    bVar4 = true;
  }
  else {
    bVar4 = false;
  }
  FloorQuarter_EncodeThreeOrientedEdges(param_1,(int *)local_30);
  puVar6 = local_30 + 2;
  local_74 = 3;
  do {
    if (bVar4) {
      FloorEdge_ComputeDirectedEndpoints
                ((int *)(puVar6 + -2),&local_6c,&local_64,&local_70,&local_68);
      iVar1 = *(int *)((int)this + 0xc);
      if ((((1.5258789e-05 <= ABS(local_6c)) && (1.5258789e-05 <= ABS(local_64))) &&
          ((1.5258789e-05 <= ABS(local_6c - (float)*(int *)(iVar1 + 0x60)) &&
           (1.5258789e-05 <= ABS(local_64 - (float)*(int *)(iVar1 + 100)))))) ||
         (((1.5258789e-05 <= ABS(local_70) && (1.5258789e-05 <= ABS(local_68))) &&
          ((1.5258789e-05 <= ABS(local_70 - (float)*(int *)(iVar1 + 0x60)) &&
           (1.5258789e-05 <= ABS(local_68 - (float)*(int *)(iVar1 + 100)))))))) goto LAB_00a9e6df;
    }
    else {
LAB_00a9e6df:
      uVar7 = (puVar6[-1] << 0xe | puVar6[-2]) * 8 | *puVar6;
      if ((char)puVar6[1] != '\0') {
        uVar7 = uVar7 | 0x80000000;
      }
      uVar2 = *(uint *)((int)this + 0x58);
      iVar1 = *(int *)((int)this + 0x54);
      for (puVar3 = *(uint **)(iVar1 + (uVar7 % uVar2) * 4); puVar3 != (uint *)0x0;
          puVar3 = (uint *)puVar3[1]) {
        if (uVar7 == *puVar3) {
          local_54 = puVar3;
          local_50 = iVar1 + (uVar7 % uVar2) * 4;
          ppuVar5 = &local_54;
          goto LAB_00a9e736;
        }
      }
      local_48 = iVar1 + uVar2 * 4;
      local_4c = *(uint **)(iVar1 + uVar2 * 4);
      ppuVar5 = &local_4c;
LAB_00a9e736:
      local_58 = ppuVar5[1];
      if (*ppuVar5 == *(uint **)(iVar1 + *(int *)((int)this + 0x58) * 4)) {
        if (param_2 == '\0') {
          local_60 = local_60 & 0xffffff00;
          local_5c = uVar7 ^ 0x80000000;
          FUN_006b5bc0((void *)((int)this + 0x50),local_3c,&local_5c);
        }
      }
      else {
        FUN_00ae02b0((void *)((int)this + 0x50),local_44,(int)*ppuVar5,(int *)ppuVar5[1]);
      }
    }
    puVar6 = puVar6 + 4;
    local_74 = local_74 + -1;
    if (local_74 == 0) {
      *(undefined1 *)((int)this + 0x90) = 1;
      return;
    }
  } while( true );
}

