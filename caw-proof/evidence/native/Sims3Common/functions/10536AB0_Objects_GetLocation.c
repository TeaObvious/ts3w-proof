/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_GetLocation. Export ordinal(s): 481.
   Entry VA: 0x10536ab0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FC0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
Objects_GetLocation(undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 *param_4,
                   undefined4 *param_5)

{
  int iVar1;
  void *this;
  
                    /* 0x536ab0  481  Objects_GetLocation */
  iVar1 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_10726da0(this,DAT_10c70408);
    if (iVar1 != 0) {
      *param_3 = *(undefined4 *)(iVar1 + 8);
      param_3[1] = *(undefined4 *)(iVar1 + 0xc);
      *param_4 = *(undefined4 *)(iVar1 + 0x18);
      *param_5 = *(undefined4 *)(iVar1 + 0x20);
    }
  }
  return;
}

