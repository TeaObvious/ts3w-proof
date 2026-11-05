/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ForceVisibilityForPicture. Export
   ordinal(s): 1318. Entry VA: 0x10580250. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CA9. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_ForceVisibilityForPicture(char param_1)

{
  int iVar1;
  
                    /* 0x580250  1318  World_ForceVisibilityForPicture */
  iVar1 = FUN_104de3a0();
  if (iVar1 != 0) {
    LOCK();
    *(uint *)(iVar1 + 0x2a4) = (uint)(param_1 != '\0');
    UNLOCK();
  }
  return;
}

