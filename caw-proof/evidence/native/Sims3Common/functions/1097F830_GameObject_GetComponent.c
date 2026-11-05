/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GameObject_GetComponent. Export ordinal(s): 1820.
   Entry VA: 0x1097f830. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000BF0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl GameObject_GetComponent(void *param_1,int param_2)

{
  void *this;
  uint uVar1;
  
                    /* 0x97f830  1820  GameObject_GetComponent */
  uVar1 = 0;
  this = (void *)FUN_1072a1a0();
  if (this != (void *)0x0) {
    uVar1 = FUN_1072a160(this,param_2);
  }
  FUN_10726da0(param_1,uVar1);
  return;
}

