/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GameObject_GetVisualStateComponent. Export
   ordinal(s): 1829. Entry VA: 0x10021a40. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000BF9. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl GameObject_GetVisualStateComponent(void *param_1)

{
  undefined4 uVar1;
  
                    /* 0x21a40  1829  GameObject_GetVisualStateComponent */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_10726da0(param_1,DAT_10c8dae8);
    return uVar1;
  }
  return 0;
}

