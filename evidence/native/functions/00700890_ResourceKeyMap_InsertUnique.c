/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX key map. Hash native key DWORD3 XOR
   DWORD0, equal group XOR instanceLow. Compare complete16-byte keys via8B2910. Duplicate returns
   existing node/payload unchanged without resize. New insert uses4E0EC0,rehash6FDDD0,head-inserts
   node with link+18. */

int * __thiscall ResourceKeyMap_InsertUnique(void *this,int *param_1,uint *param_2)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  uint uVar7;
  char local_8 [4];
  uint local_4;
  
  uVar2 = param_2[3];
  uVar3 = *param_2;
  uVar7 = (uVar2 ^ uVar3) % *(uint *)((int)this + 8);
  iVar6 = *(int *)((int)this + 4);
  piVar5 = ResourceKeyMap_FindChain(*(int **)(iVar6 + uVar7 * 4),(int *)param_2);
  if (piVar5 == (int *)0x0) {
    HashGrowth_SelectPrimeCapacity
              ((void *)((int)this + 0x10),local_8,*(uint *)((int)this + 8),
               *(uint *)((int)this + 0xc),1);
    iVar6 = FUN_00982ce0(this,param_2);
    if (local_8[0] != '\0') {
      uVar7 = (uVar2 ^ uVar3) % local_4;
      ResourceKeyMap_Rehash(this,local_4);
    }
    iVar1 = uVar7 * 4;
    *(undefined4 *)(iVar6 + 0x18) = *(undefined4 *)(iVar1 + *(int *)((int)this + 4));
    *(int *)(iVar1 + *(int *)((int)this + 4)) = iVar6;
    *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
    iVar4 = *(int *)((int)this + 4);
    *param_1 = iVar6;
    param_1[1] = iVar4 + iVar1;
    *(undefined1 *)(param_1 + 2) = 1;
    return param_1;
  }
  *param_1 = (int)piVar5;
  param_1[1] = iVar6 + uVar7 * 4;
  *(undefined1 *)(param_1 + 2) = 0;
  return param_1;
}

