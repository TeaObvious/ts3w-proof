/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_ExtractTattooOpacity. Export ordinal(s):
   88. Entry VA: 0x1039f0d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000491. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl CASUtils_ExtractTattooOpacity(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  uint uStack_68;
  undefined4 auStack_64 [25];
  
                    /* 0x39f0d0  88  CASUtils_ExtractTattooOpacity */
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  FUN_103ba880(auStack_64);
  FUN_103bae20(auStack_64,pWVar2);
  uStack_68 = 2;
  FUN_103ba230(auStack_64,(byte *)"ColorAlphaMultiply",&uStack_68,&stack0xffffff94);
  FUN_103baaa0(auStack_64);
  return 0;
}

