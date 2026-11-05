/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_SetControllerType. Export ordinal(s): 299.
   Entry VA: 0x1052f460. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A20. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Camera_SetControllerType(int param_1)

{
  int iVar1;
  void *this;
  undefined4 uVar2;
  
                    /* 0x52f460  299  Camera_SetControllerType */
  iVar1 = FUN_1075c630();
  uVar2 = 0;
  if (iVar1 != 0) {
    this = (void *)FUN_10937a80(iVar1);
    uVar2 = 0;
    if (this != (void *)0x0) {
      uVar2 = FUN_1075d9b0(this,param_1,'\0');
    }
  }
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

