/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_SetGameObjDisplayName. Export
   ordinal(s): 1991. Entry VA: 0x10995f30. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000262. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl ObjectManagerWrap_SetGameObjDisplayName(void *param_1,int param_2,short *param_3)

{
  undefined4 uVar1;
  
                    /* 0x995f30  1991  ObjectManagerWrap_SetGameObjDisplayName */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_102464a0(param_1,param_2,param_3);
    return (char)uVar1 != '\0';
  }
  return false;
}

