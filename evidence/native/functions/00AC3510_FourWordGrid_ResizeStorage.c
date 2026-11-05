/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Stores dimensions; computes block counts using signed (width + 3) >> 2 and the corresponding
   depth expression (integer literals decimal); resizes UInt16 tags and 16-byte uniform records. New
   tags are 0x8000. No overflow/OOM safety is inferred. */

void __thiscall FourWordGrid_ResizeStorage(void *this,int param_1,int param_2,int param_3)

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
  FUN_00ac08b0((void *)((int)this + 0x38),elementCount);
  return;
}

