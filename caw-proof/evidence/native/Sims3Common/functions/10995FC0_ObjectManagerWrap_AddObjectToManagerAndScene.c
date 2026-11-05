/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_AddObjectToManagerAndScene.
   Export ordinal(s): 1964. Entry VA: 0x10995fc0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000257. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl ObjectManagerWrap_AddObjectToManagerAndScene(void *param_1,void *param_2)

{
  undefined4 uVar1;
  
                    /* 0x995fc0  1964  ObjectManagerWrap_AddObjectToManagerAndScene */
  if ((param_1 != (void *)0x0) && (param_2 != (void *)0x0)) {
    uVar1 = FUN_10243210(param_1,param_2);
    return (char)uVar1 != '\0';
  }
  return false;
}

