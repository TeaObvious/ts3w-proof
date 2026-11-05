/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX map, RET 0Ch: output iterator/result, UInt32 handle
   pointer, unused word; EAX output. Unsigned handle modulo buckets; duplicate returns existing
   node. New 32-byte node contains handle +0, zeroed key +8..+14h and next +18h. Caller overwrites
   returned value even for a duplicate. Growth inputs are integer counts. Allocation failure is
   unsafe in this leaf. */

void * __thiscall HandleKeyMap_FindOrInsert(void *this,void *outResult,uint *handle,uint unusedWord)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint *puVar5;
  uint uVar6;
  char local_8 [4];
  uint local_4;
  
  uVar3 = *handle;
  uVar6 = uVar3 % *(uint *)((int)this + 8);
  puVar1 = (undefined4 *)(*(int *)((int)this + 4) + uVar6 * 4);
  puVar5 = (uint *)*puVar1;
  while( true ) {
    if (puVar5 == (uint *)0x0) {
      FUN_004e0ec0((void *)((int)this + 0x10),local_8,*(uint *)((int)this + 8),
                   *(uint *)((int)this + 0xc),1);
      puVar5 = (uint *)FUN_004e4500(0x20,*(undefined4 *)((int)this + 0x1c),0);
      if (puVar5 != (uint *)0x0) {
        *puVar5 = *handle;
        puVar5[2] = 0;
        puVar5[3] = 0;
        puVar5[4] = 0;
        puVar5[5] = 0;
      }
      puVar5[6] = 0;
      if (local_8[0] != '\0') {
        uVar6 = uVar3 % local_4;
        FUN_00c28ca0(this,local_4);
      }
      iVar2 = uVar6 * 4;
      puVar5[6] = *(uint *)(iVar2 + *(int *)((int)this + 4));
      *(uint **)(iVar2 + *(int *)((int)this + 4)) = puVar5;
      *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
      iVar4 = *(int *)((int)this + 4);
      *(uint **)outResult = puVar5;
      *(undefined1 *)((int)outResult + 8) = 1;
      *(int *)((int)outResult + 4) = iVar4 + iVar2;
      return outResult;
    }
    if (uVar3 == *puVar5) break;
    puVar5 = (uint *)puVar5[6];
  }
  *(uint **)outResult = puVar5;
  *(undefined1 *)((int)outResult + 8) = 0;
  *(undefined4 **)((int)outResult + 4) = puVar1;
  return outResult;
}

