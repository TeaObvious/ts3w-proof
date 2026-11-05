/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_SetCASPartData. Export
   ordinal(s): 2518. Entry VA: 0x109947c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003FE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void ThumbnailManager_SetCASPartData(void)

{
  void *this;
  undefined4 *puVar1;
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  undefined4 local_10 [4];
  
                    /* 0x9947c0  2518  ThumbnailManager_SetCASPartData */
  this = DAT_10c71150;
  if (DAT_10c71150 != (void *)0x0) {
    puVar1 = (undefined4 *)FUN_1055daa0(local_10,(undefined4 *)&stack0x00000004);
    FUN_103225f0(this,puVar1,in_stack_00000014,in_stack_00000018);
  }
  return;
}

