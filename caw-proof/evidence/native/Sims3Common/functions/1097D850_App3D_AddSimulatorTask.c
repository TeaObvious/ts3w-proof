/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_AddSimulatorTask. Export ordinal(s): 1670.
   Entry VA: 0x1097d850. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009BF. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl App3D_AddSimulatorTask(undefined4 param_1)

{
  int *piVar1;
  
                    /* 0x97d850  1670  App3D_AddSimulatorTask */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar1 + 0xdc))(param_1);
  return;
}

