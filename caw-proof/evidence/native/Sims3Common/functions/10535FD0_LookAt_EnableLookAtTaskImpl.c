/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LookAt_EnableLookAtTaskImpl. Export ordinal(s):
   439. Entry VA: 0x10535fd0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060002A9. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl LookAt_EnableLookAtTaskImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x46000000) {
    piVar2 = (int *)FUN_1055b120();
    piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1);
    uVar1 = 0;
    if (piVar2 != (int *)0x0) {
      piVar2[1] = piVar2[1] + 1;
      uVar3 = FUN_1037ec10(piVar2);
      iVar4 = piVar2[1] + -1;
      piVar2[1] = iVar4;
      if (iVar4 == 0) {
        piVar2[1] = 1;
        iVar4 = (**(code **)*piVar2)(1);
      }
      return CONCAT31((int3)((uint)iVar4 >> 8),(char)uVar3);
    }
  }
  return uVar1;
}

