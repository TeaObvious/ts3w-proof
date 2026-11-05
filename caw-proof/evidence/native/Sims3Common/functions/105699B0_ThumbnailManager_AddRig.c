/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_AddRig. Export ordinal(s): 1031.
   Entry VA: 0x105699b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000374. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void ThumbnailManager_AddRig(void)

{
  void *this;
  int iVar1;
  undefined4 local_10 [4];
  
  this = DAT_10c71150;
                    /* 0x5699b0  1031  ThumbnailManager_AddRig */
  if (DAT_10c71150 != (void *)0x0) {
    iVar1 = FUN_1055dbb0(&stack0x00000004,local_10);
    FUN_10330e90(this,iVar1);
  }
  return;
}

