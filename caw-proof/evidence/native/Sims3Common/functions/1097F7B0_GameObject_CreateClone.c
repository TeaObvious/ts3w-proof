/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GameObject_CreateClone. Export ordinal(s): 1818.
   Entry VA: 0x1097f7b0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000BEF. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl GameObject_CreateClone(undefined4 *param_1)

{
  void *this;
  undefined4 *puVar1;
  
                    /* 0x97f7b0  1818  GameObject_CreateClone */
  this = (void *)FUN_1072a1a0();
  if (this != (void *)0x0) {
    puVar1 = FUN_1072b8f0(this,param_1,0,0,0xffffffff);
    return puVar1;
  }
  return (undefined4 *)0x0;
}

