/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* WARNING: Removing unreachable block (ram,0x00ac30cf) */
/* Sets block tags to 0x8000, copies the supplied four-word uniform value, and resets/compacts dense
   storage. The actual deck empty marker is supplied by caller 0x00AC8C80. */

void __thiscall FourWordGrid_FillUniformValue(void *this,undefined4 *param_1)

{
  int *piVar1;
  undefined2 *puVar2;
  undefined4 *puVar3;
  void *allocation;
  undefined2 *puVar4;
  undefined4 *puVar5;
  undefined4 *local_10 [2];
  undefined4 local_8;
  
  puVar2 = *(undefined2 **)((int)this + 0x4c);
  for (puVar4 = *(undefined2 **)((int)this + 0x48); puVar4 != puVar2; puVar4 = puVar4 + 1) {
    *puVar4 = 0x8000;
  }
  puVar3 = *(undefined4 **)((int)this + 0x3c);
  for (puVar5 = *(undefined4 **)((int)this + 0x38); puVar5 != puVar3; puVar5 = puVar5 + 4) {
    *puVar5 = *param_1;
    puVar5[1] = param_1[1];
    puVar5[2] = param_1[2];
    puVar5[3] = param_1[3];
  }
  piVar1 = (int *)((int)this + 0x28);
  *(undefined4 *)((int)this + 0x2c) = *(undefined4 *)((int)this + 0x28);
  FUN_006528b0(local_10,*(int *)((int)this + 0x2c) - *piVar1 >> 4,(undefined4 *)((int)this + 0x34));
  FUN_006c8480(&param_1,(undefined4 *)*piVar1,*(undefined4 **)((int)this + 0x2c),local_10[0]);
  allocation = (void *)*piVar1;
  *piVar1 = (int)local_10[0];
  *(undefined4 **)((int)this + 0x2c) = param_1;
  *(undefined4 *)((int)this + 0x30) = local_8;
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  return;
}

