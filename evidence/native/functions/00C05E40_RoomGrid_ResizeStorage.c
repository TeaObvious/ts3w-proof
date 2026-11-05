/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 Room wire gate: complete117owned bytes/47instructions across C05E40..C05E98 and
   C05EA0..C05EBB, preserving7unowned alignment bytes. ECX grid receiver with three
   stackDWORDs/RET0C; width,depth,layers retained at+4/+8/+C. Internal block dimensions derive
   ceil-div4 arithmetic and default references initialize8000. This is compressed4x4
   logical8byte-cell storage, not a second serialized RoomManager grammar. No selected4096/64, LDES
   equality or nonzero dimension admission; native raw32 allocation arithmetic is not host-safe
   representation policy. Existing inferred signed types retained; no prototype/body/padding change.
    */

void __thiscall RoomGrid_ResizeStorage(void *this,int param_1,int param_2,int param_3)

{
  int *this_00;
  undefined2 *puVar1;
  int iVar2;
  uint elementCount;
  undefined2 *puVar3;
  int iVar4;
  
  *(int *)((int)this + 4) = param_1;
  iVar2 = param_2 + 3 >> 2;
  iVar4 = param_1 + 3 >> 2;
  *(int *)((int)this + 0x24) = iVar2;
  elementCount = iVar2 * iVar4 * param_3;
  *(int *)((int)this + 0xc) = param_3;
  *(int *)((int)this + 0x20) = iVar4;
  this_00 = (int *)((int)this + 0x48);
  *(int *)((int)this + 8) = param_2;
  iVar2 = *(int *)((int)this + 0x4c) - *this_00 >> 1;
  UInt16Vector_ResizeZeroed(this_00,elementCount);
  if (iVar2 < (int)elementCount) {
    puVar1 = *(undefined2 **)((int)this + 0x4c);
    for (puVar3 = (undefined2 *)(*this_00 + iVar2 * 2); puVar3 != puVar1; puVar3 = puVar3 + 1) {
      *puVar3 = 0x8000;
    }
  }
  FUN_00af9f10((void *)((int)this + 0x38),elementCount);
  return;
}

