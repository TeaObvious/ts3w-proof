/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_SetLotView. Export ordinal(s):
   1060. Entry VA: 0x10569c50. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600038C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void ThumbnailManager_SetLotView(void)

{
  void *this;
  undefined4 *puVar1;
  undefined4 local_20 [7];
  
                    /* 0x569c50  1060  ThumbnailManager_SetLotView */
  this = DAT_10c71150;
  if (DAT_10c71150 != (void *)0x0) {
    puVar1 = (undefined4 *)FUN_1055db20(&stack0x00000004,local_20);
    FUN_10323640(this,puVar1);
  }
  return;
}

