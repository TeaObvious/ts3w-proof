/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_KeySearchCompleteImpl;
   CASUtils_PartSearchCompleteImpl. Export ordinal(s): 118; 129. Entry VA: 0x103a0f10. Original
   managed P/Invoke MethodDef(s): ScriptCore:0x060003D4; ScriptCore:0x060003E0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl CASUtils_KeySearchCompleteImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  
                    /* 0x3a0f10  118  CASUtils_KeySearchCompleteImpl
                       0x3a0f10  129  CASUtils_PartSearchCompleteImpl */
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x35000000) {
    piVar2 = (int *)FUN_1055b120();
    uVar1 = (**(code **)(*piVar2 + 0xcc))(param_1);
  }
  return CONCAT31((int3)(uVar1 >> 8),1);
}

