/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_CreateThumbnailResource. Export
   ordinal(s): 2505. Entry VA: 0x10994690. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003F0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * ThumbnailManager_CreateThumbnailResource(void)

{
  undefined4 *puVar1;
  
                    /* 0x994690  2505  ThumbnailManager_CreateThumbnailResource */
  puVar1 = (undefined4 *)FUN_10918eb0(0x58,"ThumbnailManager_CreateNotifier",0);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1 = FUN_1033d370(puVar1);
    (**(code **)*puVar1)();
    return puVar1;
  }
  (*(code *)*_DAT_00000000)();
  return (undefined4 *)0x0;
}

