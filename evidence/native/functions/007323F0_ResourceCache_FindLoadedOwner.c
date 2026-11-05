/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC 1.67 bounded physical function. Locked lookup of an existing full resource-key node,
   not package loading. ECX cache, key and optional output pointer words, RET8, AL found status.
   With output supplied it retains/returns the stored owner, which can be null. Hash bucket
   selection is followed by all-four-DWORD equality. The stored decompiler signature is inferred and
   is not an independently established foreign prototype. Full owned range 007323f0..0073247e;
   instruction bytes unchanged. */

undefined4 ResourceCache_FindLoadedOwner(uint *param_1,int *param_2)

{
  LPCRITICAL_SECTION this;
  int *piVar1;
  int iVar2;
  void *in_ECX;
  int aiStack_8 [2];
  
  this = (LPCRITICAL_SECTION)((int)in_ECX + 0x58);
  FUN_004e1c00(this,(uint *)&DAT_00ffeda4);
  FUN_005ed9e0((void *)((int)in_ECX + 0x1c),aiStack_8,param_1);
  if (aiStack_8[0] != *(int *)(*(int *)((int)in_ECX + 0x20) + *(int *)((int)in_ECX + 0x24) * 4)) {
    if (param_2 != (int *)0x0) {
      piVar1 = *(int **)(aiStack_8[0] + 0x10);
      if (piVar1 != (int *)0x0) {
        iVar2 = (**(code **)(*piVar1 + 0x10))();
        if (iVar2 == 1) {
          FUN_00731f50(in_ECX,(int)piVar1);
        }
        FUN_00731cc0((int)piVar1);
      }
      *param_2 = (int)piVar1;
    }
    FUN_004e1cc0(this);
    return 1;
  }
  FUN_004e1cc0(this);
  return 0;
}

