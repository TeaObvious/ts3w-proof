/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_AddModel. Export ordinal(s):
   1027. Entry VA: 0x105699e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000375. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl ThumbnailManager_AddModel(int param_1)

{
  int *piVar1;
  
                    /* 0x5699e0  1027  ThumbnailManager_AddModel */
  if (param_1 != 0) {
    piVar1 = (int *)FUN_1055b120();
    if (piVar1 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
      if ((piVar1 != (int *)0x0) && (DAT_10c71150 != (void *)0x0)) {
        FUN_1032d380(DAT_10c71150,piVar1);
      }
    }
  }
  return;
}

