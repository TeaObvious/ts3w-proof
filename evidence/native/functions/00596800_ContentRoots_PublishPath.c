/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Publish configured root key and path in
   the same config vector. Relative paths are made absolute against application directory before
   storage. The retail registration caller supplies selected installation GameData roots. */

void __thiscall ContentRoots_PublishPath(void *this,undefined4 param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 local_14;
  void *local_10;
  undefined4 local_c;
  int local_8;
  char *local_4;
  
  local_14 = param_1;
  local_10 = (void *)0x0;
  local_c = 0;
  local_8 = 0;
  local_4 = "Services/GameConfig";
  FUN_0040b590(&local_10,(short *)*param_2);
  puVar1 = *(undefined4 **)((int)this + 0x4a0);
  if (puVar1 < *(undefined4 **)((int)this + 0x4a4)) {
    *(undefined4 **)((int)this + 0x4a0) = puVar1 + 5;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = local_14;
      FUN_00408df0(puVar1 + 1,&local_10);
    }
  }
  else {
    FUN_00596360((void *)((int)this + 0x49c),puVar1,&local_14);
  }
  if ((2 < (int)(local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (void *)0x0)) {
    Memory_FreeIfNonNull(local_10);
  }
  FUN_007cd220((int *)(*(int *)((int)this + 0x4a0) + -0x10),*(ushort **)((int)this + 0xc));
  return;
}

