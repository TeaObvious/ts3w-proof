/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 UInt32-key shared-step map get-or-insert helper. ECX map, stack4 output iterator,
   stack8 pointer to full UInt32 key, physical stackC reserved raw32/undefined4 (not consumed by
   this body; signedness is unproved), RET0C. Prior decompiler omitted third physical stack word.
   Hit returns same node and insertionfalse without changing stored value. Miss allocates node,
   copies full key, initializes valueFFFFFFFF, inserts chain and returns insertiontrue.607340
   overwrites node+4 on every row regardless insertion flag. Full88instructions239ownedbytes; no
   guessed UInt16 narrowing, duplicate refusal, or transitive allocator/hash-policy rewrite. */

void __thiscall
SavedModelStepMap_GetOrInsert
          (void *this,void *outputIterator,void *keyPointer,undefined4 reservedWord)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  uint *puVar4;
  int *piVar5;
  int iVar6;
  int *piVar7;
  uint uVar8;
  char local_8 [4];
  uint local_4;
  
  uVar3 = *(uint *)keyPointer;
  uVar8 = uVar3 % *(uint *)((int)this + 8);
  puVar1 = (undefined4 *)(*(int *)((int)this + 4) + uVar8 * 4);
  puVar4 = (uint *)*puVar1;
  while( true ) {
    if (puVar4 == (uint *)0x0) {
      HashGrowth_SelectPrimeCapacity
                ((void *)((int)this + 0x10),local_8,*(uint *)((int)this + 8),
                 *(uint *)((int)this + 0xc),1);
      piVar5 = *(int **)((int)this + 0x1c);
      piVar7 = (int *)*piVar5;
      if ((piVar7 != (int *)0x0) || (piVar7 = (int *)FUN_005ff820(piVar5), piVar7 != (int *)0x0)) {
        *piVar5 = *piVar7;
        *piVar7 = *(int *)keyPointer;
        piVar7[1] = -1;
      }
      piVar7[2] = 0;
      if (local_8[0] != '\0') {
        uVar8 = uVar3 % local_4;
        FUN_00a5bae0(this,local_4);
      }
      iVar2 = uVar8 * 4;
      piVar7[2] = *(int *)(iVar2 + *(int *)((int)this + 4));
      *(int **)(iVar2 + *(int *)((int)this + 4)) = piVar7;
      *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
      iVar6 = *(int *)((int)this + 4);
      *(int **)outputIterator = piVar7;
      *(undefined1 *)((int)outputIterator + 8) = 1;
      *(int *)((int)outputIterator + 4) = iVar6 + iVar2;
      return;
    }
    if (uVar3 == *puVar4) break;
    puVar4 = (uint *)puVar4[2];
  }
  *(uint **)outputIterator = puVar4;
  *(undefined1 *)((int)outputIterator + 8) = 0;
  *(undefined4 **)((int)outputIterator + 4) = puVar1;
  return;
}

