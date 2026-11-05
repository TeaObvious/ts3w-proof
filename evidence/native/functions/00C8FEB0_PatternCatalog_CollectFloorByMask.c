/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Physical thiscall ECXcatalog,UInt32mask,outVector; RET8/void. Same complete mask
   collector over24-byte rows atcatalog44..48; nonnull productA0 ANDmask must nonzero, mask0 empty.
   Grows existing pointervector only when needed. Wall and floor banks are distinct retained catalog
   arrays, not a unified package scan. */

void __thiscall PatternCatalog_CollectFloorByMask(void *this,uint mask,void *outVector)

{
  int iVar1;
  int *piVar2;
  void *this_00;
  int iVar3;
  
  this_00 = outVector;
  iVar1 = *(int *)((int)this + 0x48);
  for (iVar3 = *(int *)((int)this + 0x44); iVar3 != iVar1; iVar3 = iVar3 + 0x18) {
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

