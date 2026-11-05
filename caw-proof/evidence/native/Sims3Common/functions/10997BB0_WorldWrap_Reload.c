/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_Reload. Export ordinal(s): 2688. Entry
   VA: 0x10997bb0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004AD. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl WorldWrap_Reload(void *param_1)

{
  uint uVar1;
  
                    /* 0x997bb0  2688  WorldWrap_Reload */
  if (param_1 == (void *)0x0) {
    return false;
  }
  uVar1 = FUN_10242780(param_1);
  return (char)uVar1 != '\0';
}

