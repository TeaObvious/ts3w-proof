/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. Unsigned full64 GUID-key ordered tree. ECX map; THREE
   stack slots RET0C: outResult(ptr+insertedByte),key64pointer,unusedWord. Initial decompiler
   omitted third stackslot. Found returns node+inserted0; insertion via00700A80 returns inserted1.
   Decompilation's outputword reuse in callers must not be read as GUID Boolean. */

void * __thiscall
Renderer_FindOrInsertColorTransition
          (void *this,void *outNodeAndInserted,uint *guid64,uint unusedWord)

{
  bool bVar1;
  uint *puVar2;
  int *piVar3;
  int *piVar4;
  
  puVar2 = guid64;
  piVar3 = (int *)((int)this + 4);
  bVar1 = true;
  if (*(int **)((int)this + 0xc) != (int *)0x0) {
    piVar4 = *(int **)((int)this + 0xc);
    do {
      piVar3 = piVar4;
      if (((uint)piVar3[5] < guid64[1]) ||
         (((uint)piVar3[5] <= guid64[1] && ((uint)piVar3[4] <= *guid64)))) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if (bVar1) {
        piVar4 = (int *)piVar3[1];
      }
      else {
        piVar4 = (int *)*piVar3;
      }
    } while (piVar4 != (int *)0x0);
  }
  piVar4 = piVar3;
  if (bVar1) {
    if (piVar3 == *(int **)((int)this + 8)) goto LAB_0070178e;
    piVar4 = FUN_004e1070(piVar3);
  }
  if ((puVar2[1] < (uint)piVar4[5]) ||
     ((puVar2[1] <= (uint)piVar4[5] && (*puVar2 <= (uint)piVar4[4])))) {
    *(int **)outNodeAndInserted = piVar4;
    *(undefined1 *)((int)outNodeAndInserted + 4) = 0;
    return outNodeAndInserted;
  }
LAB_0070178e:
  FUN_00700a80(this,&guid64,piVar3,puVar2,'\0');
  *(uint **)outNodeAndInserted = guid64;
  *(undefined1 *)((int)outNodeAndInserted + 4) = 1;
  return outNodeAndInserted;
}

