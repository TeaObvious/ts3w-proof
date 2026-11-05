/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GameObject_GetModelComponent. Export ordinal(s):
   1823. Entry VA: 0x10980240. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000BF3. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl GameObject_GetModelComponent(void *param_1)

{
  undefined4 uVar1;
  
                    /* 0x980240  1823  GameObject_GetModelComponent */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_10726da0(param_1,DAT_10c8d804);
    return uVar1;
  }
  return 0;
}

