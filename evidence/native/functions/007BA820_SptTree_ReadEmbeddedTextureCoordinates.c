/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 billboard orientation contract. ECX wrapper and cursor stack pointer. 10003 reads
   eight floats per billboard row and negates only odd lanes V when global11D962D is set. No corner
   reorder. 10006 stores wrapper+E2 horizontal enable; 10007 stores separate wrapper+E1, not the
   global V inversion. The PC template loader715B70 calls7B8AD0(1) before this parser.
   Counts/allocation failures and malformed section termination remain original semantics. */

void __thiscall SptTree_ReadEmbeddedTextureCoordinates(void *this,uint *param_1)

{
  char cVar1;
  uint *this_00;
  undefined4 *puVar2;
  uint uVar3;
  int *piVar4;
  undefined4 *this_01;
  uint uVar5;
  int iVar6;
  int iVar7;
  bool bVar8;
  float fVar9;
  undefined1 auStackY_c0 [128];
  uint *puVar10;
  uint *puVar11;
  uint *local_18;
  uint local_14;
  void *local_10 [2];
  int local_8;
  
  this_00 = param_1;
  puVar2 = (undefined4 *)FUN_004e4500(0x48,"SpeedTree/SEmbeddedTexCoords",0);
  fVar9 = FLOAT_00f998f8;
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = 0;
    puVar2[1] = 0;
    puVar2[2] = 0;
    puVar2[3] = 0;
    puVar2[4] = 0;
    puVar2[5] = 0;
    puVar2[9] = "SpeedTree";
    puVar2[8] = &DAT_011c8e55;
    puVar2[6] = &DAT_011c8e54;
    puVar2[7] = &DAT_011c8e54;
    puVar2[10] = fVar9;
    puVar2[0xb] = fVar9;
    puVar2[0xc] = 0;
    puVar2[0xd] = fVar9;
    puVar2[0xe] = 0;
    puVar2[0xf] = 0;
    puVar2[0x10] = fVar9;
    puVar2[0x11] = 0;
  }
  *(undefined4 **)((int)this + 0x54) = puVar2;
  local_14 = SptCursor_ReadWordLE(param_1);
  do {
    param_1 = (uint *)0x0;
    switch(local_14) {
    case 0x2712:
      uVar3 = SptCursor_ReadWordLE(this_00);
      **(uint **)((int)this + 0x54) = uVar3;
      if (0 < **(int **)((int)this + 0x54)) {
        piVar4 = FUN_007b2200(**(int **)((int)this + 0x54) * 8);
        *(int **)(*(int *)((int)this + 0x54) + 4) = piVar4;
        if (0 < **(int **)((int)this + 0x54)) {
          do {
            iVar7 = (int)param_1 << 5;
            iVar6 = 8;
            do {
              fVar9 = SptCursor_ReadFloatLE(this_00);
              *(float *)(iVar7 + *(int *)(*(int *)((int)this + 0x54) + 4)) = fVar9;
              iVar7 = iVar7 + 4;
              iVar6 = iVar6 + -1;
            } while (iVar6 != 0);
            param_1 = (uint *)((int)param_1 + 1);
          } while ((int)param_1 < **(int **)((int)this + 0x54));
        }
      }
      break;
    case 0x2713:
      uVar3 = SptCursor_ReadWordLE(this_00);
      *(uint *)(*(int *)((int)this + 0x54) + 8) = uVar3;
      cVar1 = DAT_011d962d;
      iVar6 = *(int *)(*(int *)((int)this + 0x54) + 8);
      if (0 < iVar6) {
        piVar4 = FUN_007b2200(iVar6 * 8);
        *(int **)(*(int *)((int)this + 0x54) + 0xc) = piVar4;
        local_18 = param_1;
        if (0 < *(int *)(*(int *)((int)this + 0x54) + 8)) {
          do {
            uVar3 = 0;
            iVar6 = (int)local_18 << 5;
            do {
              fVar9 = SptCursor_ReadFloatLE(this_00);
              *(float *)(iVar6 + *(int *)(*(int *)((int)this + 0x54) + 0xc)) = fVar9;
              uVar5 = uVar3 & 0x80000001;
              bVar8 = uVar5 == 0;
              if ((int)uVar5 < 0) {
                bVar8 = (uVar5 - 1 | 0xfffffffe) == 0xffffffff;
              }
              if ((!bVar8) && (cVar1 != '\0')) {
                iVar7 = *(int *)(*(int *)((int)this + 0x54) + 0xc);
                *(float *)(iVar7 + iVar6) = FLOAT_00f998f0 - *(float *)(iVar7 + iVar6);
              }
              uVar3 = uVar3 + 1;
              iVar6 = iVar6 + 4;
            } while ((int)uVar3 < 8);
            local_18 = (uint *)((int)local_18 + 1);
          } while ((int)local_18 < *(int *)(*(int *)((int)this + 0x54) + 8));
        }
      }
      break;
    case 0x2714:
      uVar3 = SptCursor_ReadWordLE(this_00);
      *(uint *)(*(int *)((int)this + 0x54) + 0x10) = uVar3;
      iVar6 = *(int *)(*(int *)((int)this + 0x54) + 0x10);
      if (0 < iVar6) {
        piVar4 = FUN_007b2200(iVar6 * 8);
        *(int **)(*(int *)((int)this + 0x54) + 0x14) = piVar4;
        if (0 < *(int *)(*(int *)((int)this + 0x54) + 0x10)) {
          do {
            iVar7 = (int)param_1 << 5;
            iVar6 = 8;
            do {
              fVar9 = SptCursor_ReadFloatLE(this_00);
              *(float *)(iVar7 + *(int *)(*(int *)((int)this + 0x54) + 0x14)) = fVar9;
              iVar7 = iVar7 + 4;
              iVar6 = iVar6 + -1;
            } while (iVar6 != 0);
            param_1 = (uint *)((int)param_1 + 1);
          } while ((int)param_1 < *(int *)(*(int *)((int)this + 0x54) + 0x10));
        }
      }
      break;
    case 0x2715:
      SptCursor_ReadByteString(this_00,(int *)(*(int *)((int)this + 0x54) + 0x18));
      puVar10 = param_1;
      puVar11 = param_1;
      FUN_00405ad0(auStackY_c0 + 0x88,"/\\");
      puVar2 = FUN_007aa840(local_10,(int *)(*(int *)((int)this + 0x54) + 0x18),(int)param_1,puVar10
                            ,(int)puVar11);
      this_01 = (undefined4 *)(*(int *)((int)this + 0x54) + 0x18);
      if (puVar2 != this_01) {
        FUN_00405910(this_01,(void *)*puVar2,(undefined1 *)puVar2[1]);
      }
      if ((1 < local_8 - (int)local_10[0]) && (local_10[0] != (void *)0x0)) {
        Memory_FreeIfNonNull(local_10[0]);
      }
      break;
    case 0x2716:
      uVar3 = *this_00;
      *this_00 = uVar3 + 1;
      *(bool *)((int)this + 0xe2) = *(char *)(uVar3 + this_00[1]) != '\0';
      break;
    case 0x2717:
      uVar3 = *this_00;
      *this_00 = uVar3 + 1;
      *(bool *)((int)this + 0xe1) = *(char *)(uVar3 + this_00[1]) != '\0';
    }
    if (*this_00 < this_00[2] - this_00[1]) {
      local_14 = SptCursor_ReadWordLE(this_00);
    }
  } while (local_14 != 0x2711);
  return;
}

