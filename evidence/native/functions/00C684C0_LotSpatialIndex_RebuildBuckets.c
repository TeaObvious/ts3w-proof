/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: rebuilds the lot spatial candidate buckets when the index is dirty. Under the lock at
   this+0x228 it refreshes the lot list, clears the bucket map, uses 16.0 as bucket spacing, inserts
   each eligible lot into buckets spanned by its recorded integer X/Z bounds, and clears the dirty
   byte at this+0x1cc. The decompiler's integer/float casts around signed division by 16 are
   uncertain; original shifts and bounds govern. This is a candidate index, not the final
   point-in-lot test. */

void __fastcall LotSpatialIndex_RebuildBuckets(int param_1)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  void *this;
  int iVar6;
  undefined4 *puVar7;
  uint uVar8;
  int local_18;
  int local_14;
  int *local_10;
  uint local_c;
  int local_8;
  LPCRITICAL_SECTION local_4;
  
  local_4 = (LPCRITICAL_SECTION)(param_1 + 0x228);
  FUN_004e1c00(local_4,(uint *)&DAT_01079718);
  *(undefined4 *)(param_1 + 0x1f8) = *(undefined4 *)(param_1 + 500);
  piVar1 = (int *)(param_1 + 0x204);
  *(undefined4 *)(param_1 + 0x208) = *(undefined4 *)(param_1 + 0x204);
  *(undefined4 *)(param_1 + 0x218) = *(undefined4 *)(param_1 + 0x214);
  local_10 = *(int **)(param_1 + 0xa0);
  puVar7 = *(undefined4 **)(param_1 + 0x9c);
  if (puVar7 != local_10) {
    do {
      FUN_00c66630((int *)*puVar7,(int *)(param_1 + 500));
      puVar7 = puVar7 + 1;
    } while (puVar7 != local_10);
  }
  FUN_005d3680(piVar1,(int *)(param_1 + 500));
  FUN_00c66630(*(int **)(param_1 + 0xb0),piVar1);
  FUN_00b7a260(*(int *)(param_1 + 0x1d8),*(uint *)(param_1 + 0x1dc));
  uVar2 = DAT_00fa4138;
  *(undefined4 *)(param_1 + 0x1e0) = 0;
  local_10 = (int *)*piVar1;
  *(undefined4 *)(param_1 + 0x1d0) = uVar2;
  if (local_10 != *(int **)(param_1 + 0x208)) {
    do {
      iVar6 = *local_10;
      local_18 = iVar6;
      if ((iVar6 != 0) && (*(char *)(iVar6 + 0x74) != '\0')) {
        iVar3 = *(int *)(iVar6 + 0x15c) - (int)*(float *)(param_1 + 0xb4);
        iVar4 = *(int *)(iVar6 + 0x158) - (int)*(float *)(param_1 + 0xb8);
        local_14 = (int)(iVar4 + (iVar4 >> 0x1f & 0xfU)) >> 4;
        iVar4 = *(int *)(iVar6 + 0x160) - (int)*(float *)(param_1 + 0xb8);
        iVar5 = *(int *)(iVar6 + 0x154) - (int)*(float *)(param_1 + 0xb4);
        local_8 = (int)(iVar3 + (iVar3 >> 0x1f & 0xfU)) >> 4;
        uVar8 = (int)(iVar5 + (iVar5 >> 0x1f & 0xfU)) >> 4;
        iVar3 = local_14;
        if ((int)uVar8 <= local_8) {
          do {
            for (; iVar3 <= (int)(iVar4 + (iVar4 >> 0x1f & 0xfU)) >> 4; iVar3 = iVar3 + 1) {
              local_c = iVar3 << 0x10 | uVar8;
              this = (void *)LotSpatialIndex_GetOrCreateBucket((void *)(param_1 + 0x1d4),&local_c);
              piVar1 = *(int **)((int)this + 4);
              if (piVar1 < *(int **)((int)this + 8)) {
                *(int **)((int)this + 4) = piVar1 + 1;
                if (piVar1 != (int *)0x0) {
                  *piVar1 = iVar6;
                }
              }
              else {
                FUN_00982420(this,piVar1,&local_18);
                iVar6 = local_18;
              }
            }
            uVar8 = uVar8 + 1;
            iVar3 = local_14;
          } while ((int)uVar8 <= local_8);
        }
        if (*(char *)(iVar6 + 0x4bc) != '\0') {
          piVar1 = *(int **)(param_1 + 0x218);
          if (piVar1 < *(int **)(param_1 + 0x21c)) {
            *(int **)(param_1 + 0x218) = piVar1 + 1;
            if (piVar1 != (int *)0x0) {
              *piVar1 = iVar6;
            }
          }
          else {
            FUN_00982420((void *)(param_1 + 0x214),piVar1,&local_18);
          }
        }
      }
      local_10 = local_10 + 1;
    } while (local_10 != *(int **)(param_1 + 0x208));
  }
  *(undefined1 *)(param_1 + 0x1cc) = 0;
  FUN_004e1cc0(local_4);
  return;
}

