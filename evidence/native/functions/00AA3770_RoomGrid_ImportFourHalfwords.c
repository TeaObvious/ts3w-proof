/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00aa37b5) */
/* PC1.67 Room wire/storage gate: complete273byte/100instruction body AA3770..AA3880, ECX grid and
   vector-address stackDWORD/RET4. Imports logical8byte cells in layer->X->Z order into internal4x4
   storage, preserving four UInt16 bit patterns per cell. C07AC0 supplies the same logical output
   after old DWORD-lowWORD conversion or modern UInt16 reading; internal compression is not a
   wire-stride choice. Existing body/ABI metadata retained; no serialized-version or trailing-byte
   admission invented here. */

void __thiscall RoomGrid_ImportFourHalfwords(void *this,int *param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  void *allocation;
  int iVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  int local_18;
  int local_14;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  
  uVar4 = *(int *)((int)this + 0x24) * *(int *)((int)this + 0x20) * *(int *)((int)this + 0xc);
  iVar6 = 0;
  if (*(int *)((int)this + 0x4c) - *(int *)((int)this + 0x48) >> 1 != uVar4) {
    FUN_0067f5e0((void *)((int)this + 0x48),uVar4);
    FUN_00af9f10((void *)((int)this + 0x38),uVar4);
  }
  piVar1 = (int *)((int)this + 0x28);
  *(undefined4 *)((int)this + 0x2c) = *(undefined4 *)((int)this + 0x28);
  FUN_00aa1b50(&local_10,piVar1);
  allocation = (void *)*piVar1;
  *piVar1 = local_10;
  *(undefined4 *)((int)this + 0x2c) = local_c;
  *(undefined4 *)((int)this + 0x30) = local_8;
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  local_14 = 0;
  local_18 = 0;
  if (0 < *(int *)((int)this + 0xc)) {
    do {
      uVar4 = 0;
      if (0 < *(int *)((int)this + 4)) {
        do {
          uVar5 = 0;
          if (0 < *(int *)((int)this + 8)) {
            do {
              puVar2 = (undefined4 *)(*param_1 + local_18 * 8);
              if (((uVar5 | uVar4) & 3) == 0) {
                *(undefined2 *)(*(int *)((int)this + 0x48) + iVar6 * 2) = 0x8000;
                iVar3 = *(int *)((int)this + 0x38);
                *(undefined4 *)(iVar3 + iVar6 * 8) = *puVar2;
                *(undefined4 *)(iVar3 + 4 + iVar6 * 8) = puVar2[1];
                iVar6 = iVar6 + 1;
              }
              else {
                FUN_00aa3330(this,puVar2,uVar4,uVar5,local_14);
              }
              local_18 = local_18 + 1;
              uVar5 = uVar5 + 1;
            } while ((int)uVar5 < *(int *)((int)this + 8));
          }
          uVar4 = uVar4 + 1;
        } while ((int)uVar4 < *(int *)((int)this + 4));
      }
      local_14 = local_14 + 1;
    } while (local_14 < *(int *)((int)this + 0xc));
  }
  return;
}

