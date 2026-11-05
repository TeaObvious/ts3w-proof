/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: VideoRecorder_GetStatus. Export ordinal(s): 1244.
   Entry VA: 0x10575f30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F11. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 VideoRecorder_GetStatus(void)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  
                    /* 0x575f30  1244  VideoRecorder_GetStatus */
  puVar1 = (undefined4 *)FUN_107cd170();
  if (puVar1 != (undefined4 *)0x0) {
    uVar2 = (**(code **)*puVar1)();
    switch(uVar2) {
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    }
  }
  return 0;
}

