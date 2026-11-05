/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StopWatch_IsRunningStopwatch. Export ordinal(s):
   998. Entry VA: 0x10567170. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F56. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl StopWatch_IsRunningStopwatch(uint param_1)

{
  int iVar1;
  int iVar2;
  IMAGE_DOS_HEADER *pIVar3;
  int *piVar4;
  
                    /* 0x567170  998  StopWatch_IsRunningStopwatch */
  pIVar3 = (IMAGE_DOS_HEADER *)(param_1 & 0xff000000);
  if (pIVar3 == &hInstance_10000000) {
    piVar4 = (int *)FUN_1055b120();
    pIVar3 = (IMAGE_DOS_HEADER *)(**(code **)(*piVar4 + 0xcc))(param_1);
    if ((pIVar3 != (IMAGE_DOS_HEADER *)0x0) &&
       (iVar1._0_1_ = pIVar3->e_magic[0], iVar1._1_1_ = pIVar3->e_magic[1],
       iVar1._2_2_ = pIVar3->e_cblp, iVar2._0_2_ = pIVar3->e_cp, iVar2._2_2_ = pIVar3->e_crlc,
       iVar1 != 0 || iVar2 != 0)) {
      return CONCAT31((int3)((uint)pIVar3 >> 8),1);
    }
  }
  return (uint)pIVar3 & 0xffffff00;
}

