/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_GetRoomId. Export ordinal(s): 484. Entry
   VA: 0x10536a30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FBE. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 Objects_GetRoomId(void)

{
  int iVar1;
  void *this;
  
                    /* 0x536a30  484  Objects_GetRoomId */
  iVar1 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_10726da0(this,DAT_10c70408);
    if (iVar1 != 0) {
      return *(undefined4 *)(iVar1 + 0x20);
    }
  }
  return 0xffffffff;
}

