/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: NameGuidMapService_GetGuidByName. Export
   ordinal(s): 470. Entry VA: 0x105362a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011FB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl NameGuidMapService_GetGuidByName(undefined4 param_1)

{
  int *piVar1;
  wint_t *pwVar2;
  void *this;
  undefined8 uVar3;
  
                    /* 0x5362a0  470  NameGuidMapService_GetGuidByName */
  piVar1 = (int *)FUN_1055b120();
  pwVar2 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_1);
  this = (void *)FUN_103971b0();
  uVar3 = FUN_10397230(this,pwVar2);
  return uVar3;
}

