/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX survivor; one other-component word, RET4, AL
   status. Requires all four SPT identity DWORDs equal, detaches sharedSpeedTreeData via
   copy-on-write when references>1, then appends records through7B8080. AllocationfailureAL0.
   AutoCluster caller separately destroys absorbed object and refreshes bounds; this body alone does
   neither. */

uint __thiscall TreeComponent_CombineCluster(void *this,int param_1)

{
  int *this_00;
  uint uVar1;
  void *this_01;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  uVar1 = *(uint *)((int)this + 0x10);
  if ((((uVar1 != *(uint *)(param_1 + 0x10)) ||
       (*(int *)((int)this + 0x18) != *(int *)(param_1 + 0x18))) ||
      (uVar1 = *(uint *)((int)this + 0x1c), uVar1 != *(uint *)(param_1 + 0x1c))) ||
     (*(int *)((int)this + 0x14) != *(int *)(param_1 + 0x14))) {
    return uVar1 & 0xffffff00;
  }
  this_00 = (int *)((int)this + 8);
  if (1 < *(int *)(*(int *)((int)this + 8) + 4)) {
    this_01 = (void *)FUN_004e4500(0x40,"SpeedTree/TreeData",0);
    if (this_01 != (void *)0x0) {
      puVar2 = FUN_0095b000(this_01,*this_00);
      if (puVar2 != (undefined4 *)0x0) {
        FUN_00874fb0(this_00,puVar2);
        goto LAB_0095b184;
      }
    }
    return 0;
  }
LAB_0095b184:
  uVar3 = FUN_007b8080((void *)*this_00,*(int *)(param_1 + 8));
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

