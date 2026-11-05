/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX map,
   RET0C(outIteratorAndInserted,pair16Pointer,unusedWord); EAX=output. Generic container operation,
   NOT NGMP parser. Unsigned low-keyDWORD modulo buckets, compare full64-bit key. Duplicate keeps
   first key/value pair and inserted byte+8=false. New24-byte node copies key64/value64, chains+10,
   increments count; output+8=true. Third word unused; caller initializes only its low byte. Growth
   call pushes integer count/add1, not float tiny1.4013e-45. Allocation failure remains unsafe in
   this leaf. */

void * __thiscall U64PairMap_InsertUnique(void *this,void *outResult,void *pair,uint unusedWord)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  undefined4 *puVar5;
  uint uVar6;
  char local_8 [4];
  uint local_4;
  
  uVar1 = *(uint *)pair;
  uVar6 = uVar1 % *(uint *)((int)this + 8);
  iVar2 = *(int *)((int)this + 4);
  piVar3 = *(int **)(iVar2 + uVar6 * 4);
  while( true ) {
    if (piVar3 == (int *)0x0) {
                    /* PUSH1 is UInt32 additional entry count, not float1.4013e-45. Growth helper
                       per-call signature corrected without asserting its entire algorithm. */
      FUN_004e0ec0((void *)((int)this + 0x10),local_8,*(uint *)((int)this + 8),
                   *(uint *)((int)this + 0xc),1);
      puVar5 = (undefined4 *)FUN_004e4500(0x18,*(undefined4 *)((int)this + 0x1c),0);
      if (puVar5 != (undefined4 *)0x0) {
        *puVar5 = *(undefined4 *)pair;
        puVar5[1] = *(undefined4 *)((int)pair + 4);
        puVar5[2] = *(undefined4 *)((int)pair + 8);
        puVar5[3] = *(undefined4 *)((int)pair + 0xc);
      }
      puVar5[4] = 0;
      if (local_8[0] != '\0') {
        uVar6 = uVar1 % local_4;
        FUN_00a7c6c0(this,local_4);
      }
      iVar2 = uVar6 * 4;
      puVar5[4] = *(undefined4 *)(iVar2 + *(int *)((int)this + 4));
      *(undefined4 **)(iVar2 + *(int *)((int)this + 4)) = puVar5;
      *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
      iVar4 = *(int *)((int)this + 4);
      *(undefined4 **)outResult = puVar5;
      *(undefined1 *)((int)outResult + 8) = 1;
      *(int *)((int)outResult + 4) = iVar4 + iVar2;
      return outResult;
    }
    if ((*(int *)pair == *piVar3) && (*(int *)((int)pair + 4) == piVar3[1])) break;
    piVar3 = (int *)piVar3[4];
  }
  *(int **)outResult = piVar3;
  *(undefined1 *)((int)outResult + 8) = 0;
  *(uint *)((int)outResult + 4) = iVar2 + uVar6 * 4;
  return outResult;
}

