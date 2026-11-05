/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Physical thiscall ECXcatalog,UInt32mask,outVector; RET8/void. Iterates24-byte records
   atcatalog58..5C, nonnull product atrow10; productA0 ANDmask must nonzero. Mask0 yields empty, not
   wildcard. Appends borrowed product pointer toexisting outputvector, grows through982420 when
   needed. No full resource reparse or extra owner retention here. */

void __thiscall PatternCatalog_CollectWallByMask(void *this,uint mask,void *outVector)

{
  int iVar1;
  int *piVar2;
  void *this_00;
  int iVar3;
  
  this_00 = outVector;
  iVar1 = *(int *)((int)this + 0x5c);
  for (iVar3 = *(int *)((int)this + 0x58); iVar3 != iVar1; iVar3 = iVar3 + 0x18) {
    outVector = *(void **)(iVar3 + 0x10);
    if ((outVector != (void *)0x0) && ((*(uint *)((int)outVector + 0xa0) & mask) != 0)) {
      piVar2 = *(int **)((int)this_00 + 4);
      if (piVar2 < *(int **)((int)this_00 + 8)) {
        *(int **)((int)this_00 + 4) = piVar2 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = (int)outVector;
        }
      }
      else {
        FUN_00982420(this_00,piVar2,&outVector);
      }
    }
  }
  return;
}

