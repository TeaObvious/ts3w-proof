/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction persistence contract): ECX compressed rotation grid/output byte
   vector. Level/X/Z traversal emits one byte per cell; block ref sign bit selects per-block uniform
   byte or detailed sixteen-byte data. No default missing-rotation policy is defined by this
   flattener.
   
   PC1.67 basementwritercaller AC4FA0 proves this existingrotation-named helper is
   sharedgenericbytegrid flattening. ECXgrid+outputvector RET4 void; level/X/Z emitsFULLbyte
   usinguniform/detail4x4blockstorage. No low-nibble strip, no additional wireheader.
   CanonicalwriterC6D880supplies version1/dimensions separately. */

void __thiscall FloorRotations_FlattenBytes(void *this,int *param_1)

{
  ushort uVar1;
  uint uVar2;
  int iVar3;
  undefined1 *puVar4;
  uint uVar5;
  int iVar6;
  int local_4;
  
  uVar2 = *(int *)((int)this + 8) * *(int *)((int)this + 4) * *(int *)((int)this + 0xc);
  if (uVar2 != param_1[1] - *param_1) {
    ByteVector_ResizeZeroed(param_1,uVar2);
  }
  iVar6 = 0;
  local_4 = 0;
  if (0 < *(int *)((int)this + 0xc)) {
    do {
      uVar2 = 0;
      if (0 < *(int *)((int)this + 4)) {
        iVar3 = *(int *)((int)this + 8);
        do {
          uVar5 = 0;
          if (0 < iVar3) {
            do {
              iVar3 = (*(int *)((int)this + 0x20) * local_4 + ((int)uVar2 >> 2)) *
                      *(int *)((int)this + 0x24) + ((int)uVar5 >> 2);
              uVar1 = *(ushort *)(*(int *)((int)this + 0x48) + iVar3 * 2);
              if ((uVar1 & 0x8000) == 0) {
                puVar4 = (undefined1 *)
                         ((uVar5 & 3) + ((uVar2 & 3) + (uint)uVar1 * 4) * 4 +
                         *(int *)((int)this + 0x28));
              }
              else {
                puVar4 = (undefined1 *)(*(int *)((int)this + 0x38) + iVar3);
              }
              *(undefined1 *)(iVar6 + *param_1) = *puVar4;
              iVar3 = *(int *)((int)this + 8);
              uVar5 = uVar5 + 1;
              iVar6 = iVar6 + 1;
            } while ((int)uVar5 < iVar3);
          }
          uVar2 = uVar2 + 1;
        } while ((int)uVar2 < *(int *)((int)this + 4));
      }
      local_4 = local_4 + 1;
    } while (local_4 < *(int *)((int)this + 0xc));
  }
  return;
}

