/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 floor geometry preparation comparison.
   Iterates four mask bits in tile record byte3 and calls A87A30 for each quarter. On its nonzero
   status, renderer level0 selects A9E300, while a non-ground path can select A9E560 with zero flag
   after old-subset inspection. The optional low-byte argument also requests A9E7C0 with true.
   Physical ECX receiver plus tile pointer and low-byte flag, RET8. Child A87A30 ownership/removal
   behavior is not established here, so this is named for observed visits and edge updates rather
   than an inferred remove operation. Material/visibility/lifetime child semantics remain explicit
   boundaries.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

void __thiscall
FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState(void *this,undefined2 *param_1,char param_2)

{
  undefined2 *puVar1;
  char cVar2;
  undefined4 uVar3;
  int iVar4;
  uint local_10 [2];
  int local_8 [2];
  
  puVar1 = param_1;
  iVar4 = 0;
  do {
    if (((int)*(char *)((int)puVar1 + 3) & 1 << ((byte)iVar4 & 0x1f)) != 0) {
      param_1._0_3_ = CONCAT12((byte)iVar4,*puVar1);
      cVar2 = FUN_00a87a30(*(void **)((int)this + 0x100),(char *)&param_1,local_10);
      if (cVar2 != '\0') {
        if (*(int *)((int)this + 0x14) == 0) {
          FloorRenderer_AddQuarterThicknessEdges(this,(char *)&param_1);
        }
        else {
          FUN_00a9c810((void *)((int)this + 0xe0),local_8,local_10);
          if (local_8[0] != *(int *)(*(int *)((int)this + 0xe4) + *(int *)((int)this + 0xe8) * 4)) {
            uVar3 = FloorPattern_HasAssignedRenderKey(local_8[0] + 8);
            if ((char)uVar3 != '\0') {
              FloorRenderer_RemoveOrRestoreQuarterThicknessEdges(this,(char *)&param_1,'\0');
            }
          }
        }
      }
      if (param_2 != '\0') {
        FUN_00a9e7c0(this,(char *)&param_1,'\x01');
      }
    }
    iVar4 = iVar4 + 1;
  } while (iVar4 < 4);
  return;
}

