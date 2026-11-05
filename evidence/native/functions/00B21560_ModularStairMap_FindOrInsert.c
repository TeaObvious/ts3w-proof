/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX hash owner and output iterator/key
   stackargs. HashUInt32ID modulo bucketcount; equalID returns existingnode without resize.
   MissingID calls growth004E0EC0 at load1/growth2, createsnode, rehashes when requested,
   head-inserts using node+80next and increments count. Current ordered replay preserves this
   small-count insertion behavior. */

void __thiscall ModularStairMap_FindOrInsert(void *this,undefined4 *param_1,uint *param_2)

{
  int iVar1;
  uint uVar2;
  uint *puVar3;
  int iVar4;
  undefined4 *puVar5;
  uint uVar6;
  char local_8 [4];
  uint local_4;
  
  uVar2 = *param_2;
  uVar6 = uVar2 % *(uint *)((int)this + 8);
  puVar5 = (undefined4 *)(*(int *)((int)this + 4) + uVar6 * 4);
  puVar3 = (uint *)*puVar5;
  while( true ) {
    if (puVar3 == (uint *)0x0) {
      HashGrowth_SelectPrimeCapacity
                ((void *)((int)this + 0x10),local_8,*(uint *)((int)this + 8),
                 *(uint *)((int)this + 0xc),1);
      puVar5 = FUN_00b1e290(this,param_2);
      if (local_8[0] != '\0') {
        uVar6 = uVar2 % local_4;
        ModularStairMap_Rehash(this,local_4);
      }
      iVar1 = uVar6 * 4;
      puVar5[0x20] = *(undefined4 *)(iVar1 + *(int *)((int)this + 4));
      *(undefined4 **)(iVar1 + *(int *)((int)this + 4)) = puVar5;
      *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
      iVar4 = *(int *)((int)this + 4);
      *param_1 = puVar5;
      *(undefined1 *)(param_1 + 2) = 1;
      param_1[1] = iVar4 + iVar1;
      return;
    }
    if (uVar2 == *puVar3) break;
    puVar3 = (uint *)puVar3[0x20];
  }
  *param_1 = puVar3;
  *(undefined1 *)(param_1 + 2) = 0;
  param_1[1] = puVar5;
  return;
}

