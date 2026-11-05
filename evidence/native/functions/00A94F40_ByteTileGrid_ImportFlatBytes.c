/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00a94f83) */
/* PC1.67 ECXcompressedbytegrid+pointertovectorbegin RET4 void. Level thenX thenZ importsoneRAWBYTE
   percell, initializinguniform4x4blocks thenexpandingdetailsasneeded. No low-nibble strip. Borrowed
   sourcecount is upstreamwidth*depth*levels; no local streamlength orstatus check. Thisbuilds
   runtimecompression, not a separate wireencoding. */

void __thiscall ByteTileGrid_ImportFlatBytes(void *this,int *param_1)

{
  int *piVar1;
  void *allocation;
  int iVar2;
  void *pvVar3;
  size_t _Size;
  int iVar4;
  uint uVar5;
  uint uVar6;
  void *local_18;
  int local_14;
  
  uVar5 = *(int *)((int)this + 0x24) * *(int *)((int)this + 0x20) * *(int *)((int)this + 0xc);
  iVar4 = 0;
  if (*(int *)((int)this + 0x4c) - *(int *)((int)this + 0x48) >> 1 != uVar5) {
    UInt16Vector_ResizeZeroed((void *)((int)this + 0x48),uVar5);
    ByteVector_ResizeZeroed((void *)((int)this + 0x38),uVar5);
  }
  piVar1 = (int *)((int)this + 0x28);
  *(undefined4 *)((int)this + 0x2c) = *(undefined4 *)((int)this + 0x28);
  uVar5 = *(int *)((int)this + 0x2c) - *piVar1;
  if (uVar5 == 0) {
    local_18 = (void *)0x0;
  }
  else {
    local_18 = (void *)FUN_004e4500(uVar5,*(undefined4 *)((int)this + 0x34),0);
  }
  _Size = *(int *)((int)this + 0x2c) - *piVar1;
  pvVar3 = memmove(local_18,(void *)*piVar1,_Size);
  allocation = (void *)*piVar1;
  *piVar1 = (int)local_18;
  *(size_t *)((int)this + 0x2c) = (int)pvVar3 + _Size;
  *(uint *)((int)this + 0x30) = uVar5 + (int)local_18;
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  local_14 = 0;
  local_18 = (void *)0x0;
  if (0 < *(int *)((int)this + 0xc)) {
    do {
      uVar5 = 0;
      if (0 < *(int *)((int)this + 4)) {
        do {
          if (0 < *(int *)((int)this + 8)) {
            uVar6 = 0;
            do {
              iVar2 = *param_1;
              if (((uVar6 | uVar5) & 3) == 0) {
                *(undefined2 *)(*(int *)((int)this + 0x48) + iVar4 * 2) = 0x8000;
                *(char *)(*(int *)((int)this + 0x38) + iVar4) = *(char *)(iVar2 + (int)local_18);
                iVar4 = iVar4 + 1;
              }
              else {
                FloorOwnerGrid_WriteTileOwnerId
                          (this,(char *)(iVar2 + (int)local_18),uVar5,uVar6,local_14);
              }
              local_18 = (void *)((int)local_18 + 1);
              uVar6 = uVar6 + 1;
            } while ((int)uVar6 < *(int *)((int)this + 8));
          }
          uVar5 = uVar5 + 1;
        } while ((int)uVar5 < *(int *)((int)this + 4));
      }
      local_14 = local_14 + 1;
    } while (local_14 < *(int *)((int)this + 0xc));
  }
  return;
}

