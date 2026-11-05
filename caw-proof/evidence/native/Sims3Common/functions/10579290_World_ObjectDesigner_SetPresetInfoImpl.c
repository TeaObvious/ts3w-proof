/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectDesigner_SetPresetInfoImpl. Export
   ordinal(s): 1512. Entry VA: 0x10579290. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C88. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
World_ObjectDesigner_SetPresetInfoImpl(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  undefined4 unaff_retaddr;
  
                    /* 0x579290  1512  World_ObjectDesigner_SetPresetInfoImpl */
  iVar1 = FUN_100f8460();
  piVar2 = (int *)FUN_1055b120();
  if ((iVar1 != 0) && (piVar2 != (int *)0x0)) {
    pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(param_3);
    FUN_100fa330(unaff_retaddr,param_1,pWVar3);
  }
  return;
}

