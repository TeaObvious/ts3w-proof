/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Unsigned low word bucket hash and full 64-bit comparison.
   Newnode prepends; duplicate returns existing node and inserted-byte0.
   Output{node,bucketPointer,insertedByte}; EAX outputptr. RET12 also consumes an unused hint word.
    */

void * __thiscall ObjectHash_InsertGuid(void *this,void *outInsert,void *object,uint hint)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  uVar3 = *(uint *)((int)object + 8) % 0x409;
  iVar2 = *(int *)((int)this + uVar3 * 4);
  puVar1 = (undefined4 *)((int)this + uVar3 * 4);
  if (iVar2 != 0) {
    iVar4 = iVar2;
    do {
      if ((*(int *)((int)object + 8) == *(int *)(iVar4 + 8)) &&
         (*(int *)((int)object + 0xc) == *(int *)(iVar4 + 0xc))) {
        *(undefined4 **)((int)outInsert + 4) = puVar1;
        *(int *)outInsert = iVar4;
        *(undefined1 *)((int)outInsert + 8) = 0;
        return outInsert;
      }
      iVar4 = *(int *)(iVar4 + 0x10);
    } while (iVar4 != 0);
  }
  *(int *)((int)object + 0x10) = iVar2;
  *puVar1 = object;
  *(undefined4 **)((int)outInsert + 4) = puVar1;
  *(void **)outInsert = object;
  *(int *)((int)this + 0x1028) = *(int *)((int)this + 0x1028) + 1;
  *(undefined1 *)((int)outInsert + 8) = 1;
  return outInsert;
}

