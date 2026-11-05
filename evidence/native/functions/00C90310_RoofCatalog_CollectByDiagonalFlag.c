/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Physical thiscall ECXcatalog,one stackDWORD with low byte flag,outVector; RET8/void.
   Retained24-byte rows atE8..EC; nonnull product, calls C9A960 and compares actual AL with supplied
   low byte. No new bool normalization/metadata parse/name sort here. Existing roofbit getter
   remains separate authority. */

void __thiscall RoofCatalog_CollectByDiagonalFlag(void *this,byte diagonalByte,void *outVector)

{
  void *this_00;
  undefined4 *puVar1;
  void *this_01;
  uint uVar2;
  int iVar3;
  
  this_01 = outVector;
  iVar3 = *(int *)((int)this + 0xe8);
  if (iVar3 != *(int *)((int)this + 0xec)) {
    do {
      this_00 = *(void **)(iVar3 + 0x10);
      if ((this_00 != (void *)0x0) &&
         (uVar2 = RoofProduct_ReadDiagonalFlag(this_00), (byte)uVar2 == diagonalByte)) {
        puVar1 = *(undefined4 **)((int)this_01 + 4);
        outVector = this_00;
        if (puVar1 < *(undefined4 **)((int)this_01 + 8)) {
          *(undefined4 **)((int)this_01 + 4) = puVar1 + 1;
          if (puVar1 != (undefined4 *)0x0) {
            *puVar1 = this_00;
          }
        }
        else {
          FUN_00982420(this_01,puVar1,&outVector);
        }
      }
      iVar3 = iVar3 + 0x18;
    } while (iVar3 != *(int *)((int)this + 0xec));
  }
  return;
}
