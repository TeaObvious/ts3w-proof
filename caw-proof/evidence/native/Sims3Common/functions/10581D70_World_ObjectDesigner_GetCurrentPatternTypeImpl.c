/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectDesigner_GetCurrentPatternTypeImpl.
   Export ordinal(s): 1481. Entry VA: 0x10581d70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C69. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 World_ObjectDesigner_GetCurrentPatternTypeImpl(void)

{
  int iVar1;
  
                    /* 0x581d70  1481  World_ObjectDesigner_GetCurrentPatternTypeImpl */
  iVar1 = FUN_100f8460();
  if (*(int *)(iVar1 + 0xa4) != 0) {
    return *(undefined4 *)(*(int *)(iVar1 + 0xa4) + 0x88);
  }
  return 0;
}

