/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_BlendUnitFreeImpl;
   CASUtils_CompoundBlendFreeImpl; CASUtils_FacialBlendFreeImpl. Export ordinal(s): 56; 70; 89.
   Entry VA: 0x103a1960. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600043F;
   ScriptCore:0x0600044D; ScriptCore:0x06000450. This is an export/declaration annotation only; ABI,
   behavior and runtime execution require the original instructions and caller evidence. */

void __cdecl CASUtils_BlendUnitFreeImpl(uint param_1)

{
  int *piVar1;
  
                    /* 0x3a1960  56  CASUtils_BlendUnitFreeImpl
                       0x3a1960  70  CASUtils_CompoundBlendFreeImpl
                       0x3a1960  89  CASUtils_FacialBlendFreeImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x103a1991. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 4))();
      return;
    }
  }
  return;
}

