/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_IsCameraRoutableImpl. Export ordinal(s):
   1414. Entry VA: 0x10576f30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CD3. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl World_IsCameraRoutableImpl(float param_1,float param_2)

{
  bool bVar1;
  
                    /* 0x576f30  1414  World_IsCameraRoutableImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    bVar1 = FUN_10240510(DAT_10c700c4,param_1,param_2);
    return bVar1;
  }
  return false;
}

