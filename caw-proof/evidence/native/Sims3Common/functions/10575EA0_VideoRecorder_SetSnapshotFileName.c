/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: VideoRecorder_SetSnapshotFileName. Export
   ordinal(s): 1248. Entry VA: 0x10575ea0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000F1A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl VideoRecorder_SetSnapshotFileName(undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  
                    /* 0x575ea0  1248  VideoRecorder_SetSnapshotFileName */
  piVar2 = (int *)FUN_107cd170();
  if (piVar2 != (int *)0x0) {
    piVar3 = (int *)FUN_1055b120();
    iVar1 = *piVar2;
    uVar4 = (**(code **)(*piVar3 + 0x58))(param_1,0);
    (**(code **)(iVar1 + 0x14))(uVar4);
  }
  return;
}

