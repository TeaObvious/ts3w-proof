/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* One stack path; RET4. For more than3 0x40-byte nodes, examines each four-node window and excludes
   middle constraints2/3. A successful segment-intersection helper using0106E6EC moves the two
   middle XZ positions toward the intersection with separate subtract/multiply/add stages
   using00FEDE94. Completion writes AL1; this body does not establish general null admission. */

undefined4 NeighborhoodPath_AdjustCrossingMiddlePoints(int param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int local_34;
  float local_30;
  undefined4 local_2c;
  float local_28;
  undefined4 local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  
  uVar2 = *(int *)(param_1 + 0xc) - *(int *)(param_1 + 8) >> 6;
  if (3 < uVar2) {
    local_34 = uVar2 - 3;
    uVar2 = 0;
    if (local_34 != 0) {
      iVar3 = 0;
      do {
        iVar1 = *(int *)(param_1 + 8);
        local_1c = *(float *)(iVar3 + 8 + iVar1);
        local_20 = *(float *)(iVar3 + iVar1);
        local_24 = *(undefined4 *)(iVar3 + 0x48 + iVar1);
        local_28 = *(float *)(iVar3 + 0x40 + iVar1);
        local_2c = *(undefined4 *)(iVar3 + 0x88 + iVar1);
        local_30 = *(float *)(iVar3 + 0x80 + iVar1);
        local_14 = *(float *)(iVar3 + 200 + iVar1);
        local_18 = *(float *)(iVar3 + 0xc0 + iVar1);
        uVar2 = *(uint *)(iVar3 + 0x5c + iVar1);
        if ((((uVar2 != 2) && (uVar2 != 3)) && (uVar2 = *(uint *)(iVar3 + 0x9c + iVar1), uVar2 != 2)
            ) && ((uVar2 != 3 &&
                  (uVar2 = TryIntersectSegments2D
                                     (&local_20,&local_28,&local_30,&local_18,&local_10,0.01),
                  (char)uVar2 != '\0')))) {
          *(float *)(iVar3 + 0x40 + iVar1) = (local_10 - local_20) * 0.9 + local_20;
          *(float *)(iVar3 + 0x48 + iVar1) = (local_c - local_1c) * 0.9 + local_1c;
          *(float *)(iVar3 + 0x80 + iVar1) = (local_10 - local_18) * 0.9 + local_18;
          *(float *)(iVar3 + 0x88 + iVar1) = (local_c - local_14) * 0.9 + local_14;
        }
        iVar3 = iVar3 + 0x40;
        local_34 = local_34 + -1;
      } while (local_34 != 0);
    }
  }
  return CONCAT31((int3)(uVar2 >> 8),1);
}

