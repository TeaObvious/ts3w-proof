/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_SetDefaultRigKey. Export
   ordinal(s): 2521. Entry VA: 0x10994770. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003FC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void ThumbnailManager_SetDefaultRigKey(void)

{
  void *this;
  undefined4 *puVar1;
  undefined4 local_10 [4];
  
                    /* 0x994770  2521  ThumbnailManager_SetDefaultRigKey */
  this = DAT_10c71150;
  if (DAT_10c71150 != (void *)0x0) {
    puVar1 = (undefined4 *)FUN_1055daa0(local_10,(undefined4 *)&stack0x00000004);
    FUN_10322590(this,puVar1);
  }
  return;
}

