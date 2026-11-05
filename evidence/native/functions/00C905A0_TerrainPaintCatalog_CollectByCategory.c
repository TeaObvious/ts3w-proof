/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Physical thiscall ECXcatalog,categoryDWORD,outVector; RET8/void. Iterates retained24-byte
   rows at14C..150, productrow10 direct dereference and compares rawDWORDD4 exactly tocategory. No
   nullguard before that field read and no mask/wildcard/enum validation. Existing vector
   growth/lifetime retained. */

void __thiscall TerrainPaintCatalog_CollectByCategory(void *this,uint category,void *outVector)

{
  int *piVar1;
  void *this_00;
  int iVar2;
  
  this_00 = outVector;
  iVar2 = *(int *)((int)this + 0x14c);
  if (iVar2 != *(int *)((int)this + 0x150)) {
    do {
      outVector = *(void **)(iVar2 + 0x10);
      if (*(uint *)((int)outVector + 0xd4) == category) {
        piVar1 = *(int **)((int)this_00 + 4);
        if (piVar1 < *(int **)((int)this_00 + 8)) {
          *(int **)((int)this_00 + 4) = piVar1 + 1;
          if (piVar1 != (int *)0x0) {
            *piVar1 = (int)outVector;
          }
        }
        else {
          FUN_00982420(this_00,piVar1,&outVector);
        }
      }
      iVar2 = iVar2 + 0x18;
    } while (iVar2 != *(int *)((int)this + 0x150));
  }
  return;
}

