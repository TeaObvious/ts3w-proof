/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_AddReference. Export
   ordinal(s): 1966. Entry VA: 0x10996050. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000258. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl ObjectManagerWrap_AddReference(int *param_1,undefined4 param_2)

{
  char cVar1;
  
                    /* 0x996050  1966  ObjectManagerWrap_AddReference */
  if (param_1 != (int *)0x0) {
    cVar1 = (**(code **)(*param_1 + 0x44))(param_2);
    return cVar1 != '\0';
  }
  return false;
}

