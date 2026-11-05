/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetGlobalObjectManagerId. Export
   ordinal(s): 1328. Entry VA: 0x1057a870. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000BAA. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 World_GetGlobalObjectManagerId(void)

{
                    /* 0x57a870  1328  World_GetGlobalObjectManagerId */
  if ((DAT_10c700c4 != 0) && (*(int *)(DAT_10c700c4 + 0xb0) != 0)) {
    return *(undefined8 *)(*(int *)(DAT_10c700c4 + 0xb0) + 0x48);
  }
  return 0;
}

