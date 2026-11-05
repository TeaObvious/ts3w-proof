/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_GetProperty. Export ordinal(s): 342.
   Entry VA: 0x105329b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EF3. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl DeviceConfig_GetProperty(int param_1)

{
  int *piVar1;
  wchar_t *pwVar2;
  int iVar3;
  
                    /* 0x5329b0  342  DeviceConfig_GetProperty */
  piVar1 = (int *)FUN_1055b120();
  pwVar2 = (wchar_t *)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pwVar2 != (wchar_t *)0x0) {
    iVar3 = FUN_103889f0(L"Options",pwVar2,param_1);
    return iVar3;
  }
  return param_1;
}

