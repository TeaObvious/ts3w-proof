/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_CloneObject. Export ordinal(s):
   1034. Entry VA: 0x10569c30. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600038B. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined8 __cdecl ThumbnailManager_CloneObject(undefined4 param_1,undefined4 param_2)

{
  undefined8 uVar1;
  
                    /* 0x569c30  1034  ThumbnailManager_CloneObject */
  if (DAT_10c71150 == (void *)0x0) {
    return 0;
  }
  uVar1 = FUN_10331020(DAT_10c71150,param_1,param_2);
  return uVar1;
}

