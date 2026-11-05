/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC 1.67 REFS instruction review. ECX set, RET 0Ch: output iterator/result, UInt16 handle
   pointer, unused word; EAX output. Hash zero-extended handle modulo buckets and compare full 16
   bits. Duplicate keeps existing node; new eight-byte node stores handle and next +4. Trailer is a
   set, not a duplicate-preserving ordered vector. Allocation failure is unsafe. */

void * __thiscall
LocalHandleSet_InsertUnique(void *this,void *outResult,ushort *handle,uint unusedWord)

{
  undefined4 *puVar1;
  int iVar2;
  ushort uVar3;
  int iVar4;
  ushort *puVar5;
  uint uVar6;
  char local_8 [4];
  uint local_4;
  
  uVar3 = *handle;
  uVar6 = (uint)uVar3 % *(uint *)((int)this + 8);
  puVar1 = (undefined4 *)(*(int *)((int)this + 4) + uVar6 * 4);
  puVar5 = (ushort *)*puVar1;
  while( true ) {
    if (puVar5 == (ushort *)0x0) {
      HashGrowth_SelectPrimeCapacity
                ((void *)((int)this + 0x10),local_8,*(uint *)((int)this + 8),
                 *(uint *)((int)this + 0xc),1);
      puVar5 = (ushort *)FUN_004e4500(8,*(undefined4 *)((int)this + 0x1c),0);
      if (puVar5 != (ushort *)0x0) {
        *puVar5 = *handle;
      }
      puVar5[2] = 0;
      puVar5[3] = 0;
      if (local_8[0] != '\0') {
        uVar6 = (uint)uVar3 % local_4;
        FUN_00a8bab0(this,local_4);
      }
      iVar2 = uVar6 * 4;
      *(undefined4 *)(puVar5 + 2) = *(undefined4 *)(iVar2 + *(int *)((int)this + 4));
      *(ushort **)(iVar2 + *(int *)((int)this + 4)) = puVar5;
      *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
      iVar4 = *(int *)((int)this + 4);
      *(ushort **)outResult = puVar5;
      *(int *)((int)outResult + 4) = iVar4 + iVar2;
      *(undefined1 *)((int)outResult + 8) = 1;
      return outResult;
    }
    if (uVar3 == *puVar5) break;
    puVar5 = *(ushort **)(puVar5 + 2);
  }
  *(ushort **)outResult = puVar5;
  *(undefined4 **)((int)outResult + 4) = puVar1;
  *(undefined1 *)((int)outResult + 8) = 0;
  return outResult;
}

