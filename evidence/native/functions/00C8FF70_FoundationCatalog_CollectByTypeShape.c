/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Physical thiscall ECXcatalog,typeDWORD,shapeInt32,outVector; RET0C/void. Iterates24-byte
   retained rows atAC..B0, productrow10 nonnull, exact product88==type and shape==-1 OR
   productE8==shape. OnlyFFFFFFFF is wildcard, not every negative signed shape. Current Query
   broadens wildcard to all negative values; retained explicitly as difference. */

void __thiscall
FoundationCatalog_CollectByTypeShape(void *this,uint deckType,int shape,void *outVector)

{
  int iVar1;
  int *piVar2;
  void *this_00;
  int iVar3;
  
  this_00 = outVector;
  iVar1 = *(int *)((int)this + 0xb0);
  for (iVar3 = *(int *)((int)this + 0xac); iVar3 != iVar1; iVar3 = iVar3 + 0x18) {
    outVector = *(void **)(iVar3 + 0x10);
    if (((outVector != (void *)0x0) && (*(uint *)((int)outVector + 0x88) == deckType)) &&
       ((shape == -1 || (*(int *)((int)outVector + 0xe8) == shape)))) {
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

