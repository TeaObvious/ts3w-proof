/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_CreateNotifier. Export
   ordinal(s): 2504. Entry VA: 0x109948c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003EE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int * ThumbnailManager_CreateNotifier(void)

{
  int *piVar1;
  
                    /* 0x9948c0  2504  ThumbnailManager_CreateNotifier */
  piVar1 = (int *)FUN_10918eb0(0x30,"ThumbnailManager_CreateNotifier",0);
  if (piVar1 != (int *)0x0) {
    FUN_10325520(piVar1);
    piVar1[8] = (int)&PTR_LAB_10aaf8cc;
    piVar1[9] = (int)&PTR_FUN_10aae9d8;
    *piVar1 = (int)&PTR_FUN_10b97834;
    piVar1[8] = (int)&PTR_LAB_10b97824;
    piVar1[9] = (int)&PTR_LAB_10b97818;
    *(undefined1 *)(piVar1 + 10) = 0;
    *(undefined1 *)((int)piVar1 + 0x29) = 0;
    (**(code **)(*piVar1 + 4))();
    return piVar1;
  }
  (**(code **)(_DAT_00000000 + 4))();
  return (int *)0x0;
}

