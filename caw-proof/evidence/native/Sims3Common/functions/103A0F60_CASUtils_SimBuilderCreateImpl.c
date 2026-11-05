/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderCreateImpl. Export ordinal(s):
   153. Entry VA: 0x103a0f60. Original managed P/Invoke MethodDef(s): ScriptCore:0x060003E8. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void CASUtils_SimBuilderCreateImpl(void)

{
  int *piVar1;
  undefined4 *puVar2;
  
  piVar1 = (int *)FUN_1055b120();
  puVar2 = (undefined4 *)FUN_10918eb0(0x280,"CAS/CASHost/SimBuilder",0);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2 = FUN_103df480(puVar2);
    (**(code **)(*piVar1 + 200))(puVar2,0x35);
    return;
  }
  (**(code **)(*piVar1 + 200))(0,0x35);
  return;
}

