/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Original Tree
   component selected by mask global 0x011ea290 determines extended geometry. Absent Tree or entry
   count <2 releases resource+0x34. Otherwise constructs version9 resource, requests scaled Tree
   relative matrices, clears extended primary/secondary vectors and expands base+0x28 primary and
   base+0x30 secondary. Supplemental+0x2c remains separate. Temporary matrices are freed. */

void __fastcall FootprintComponent_RebuildExtendedResource(int param_1)

{
  void *this;
  uint uVar1;
  undefined4 *puVar2;
  uint *puVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  iVar6 = 0;
  if (((*(void **)(param_1 + 4) == (void *)0x0) ||
      (this = Object_GetComponentByMask(*(void **)(param_1 + 4),DAT_011ea290), this == (void *)0x0))
     || (uVar1 = TreeComponent_GetEntryCount((int)this), uVar1 < 2)) {
    if (*(int **)(param_1 + 0x34) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 0x34) + 4))();
      *(undefined4 *)(param_1 + 0x34) = 0;
    }
  }
  else {
    if (*(int *)(param_1 + 0x34) == 0) {
      puVar2 = (undefined4 *)
               FUN_004e4500(0x60,"Objects/FootprintComponent/ExtendedFootprintResource",0);
      if (puVar2 == (undefined4 *)0x0) {
        puVar2 = (undefined4 *)0x0;
      }
      else {
        puVar2 = FootprintResource_Construct(puVar2);
      }
      *(undefined4 **)(param_1 + 0x34) = puVar2;
      (**(code **)*puVar2)();
    }
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = "Objects/FootprintComponent/RelativeTransforms";
    TreeComponent_GetRelativeMatrices(this,&local_10,'\x01');
    if (*(int *)(param_1 + 0x28) != 0) {
      puVar3 = (uint *)FootprintResource_GetPrimaryPolygonVector(*(int *)(param_1 + 0x34));
      FootprintPolygonVector_Clear(puVar3);
      piVar4 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)(param_1 + 0x28));
      for (iVar5 = piVar4[1] - *piVar4 >> 6; iVar5 != 0; iVar5 = iVar5 + -1) {
        FootprintPolygon_AppendRelativeTransformCopies
                  (puVar3,(undefined4 *)(*piVar4 + iVar6),&local_10);
        iVar6 = iVar6 + 0x40;
      }
    }
    iVar6 = 0;
    if (*(int *)(param_1 + 0x30) != 0) {
      puVar3 = (uint *)FootprintResource_GetSecondaryPolygonVector(*(int *)(param_1 + 0x34));
      FootprintPolygonVector_Clear(puVar3);
      piVar4 = (int *)FootprintResource_GetSecondaryPolygonVector(*(int *)(param_1 + 0x30));
      for (iVar5 = piVar4[1] - *piVar4 >> 6; iVar5 != 0; iVar5 = iVar5 + -1) {
        FootprintPolygon_AppendRelativeTransformCopies
                  (puVar3,(undefined4 *)(*piVar4 + iVar6),&local_10);
        iVar6 = iVar6 + 0x40;
      }
    }
    if (local_10 != 0) {
      FUN_004e44e0(local_10);
      return;
    }
  }
  return;
}

