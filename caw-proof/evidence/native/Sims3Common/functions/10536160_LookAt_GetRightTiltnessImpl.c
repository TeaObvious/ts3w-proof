/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LookAt_GetRightTiltnessImpl. Export ordinal(s):
   448. Entry VA: 0x10536160. Original managed P/Invoke MethodDef(s): ScriptCore:0x060002BB. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

float10 __cdecl LookAt_GetRightTiltnessImpl(uint param_1)

{
  float fVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  float *pfVar5;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar3 = (int *)FUN_1055b120();
    puVar4 = (undefined4 *)(**(code **)(*piVar3 + 0xcc))(param_1);
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[1] = puVar4[1] + 1;
      piVar3 = (int *)FUN_1058e220((int)puVar4);
      pfVar5 = (float *)(**(code **)(*piVar3 + 0x1c))();
      fVar1 = *pfVar5;
      iVar2 = puVar4[1];
      puVar4[1] = iVar2 + -1;
      if (iVar2 + -1 == 0) {
        puVar4[1] = 1;
        (**(code **)*puVar4)(1);
      }
      return (float10)fVar1;
    }
  }
  return (float10)DAT_10acb0d4;
}

