/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_FocusOnLot. Export ordinal(s): 277. Entry
   VA: 0x1052fb70. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A2E. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Camera_FocusOnLot(int param_1,float param_2,float param_3,float param_4)

{
  int iVar1;
  int *piVar2;
  void *this;
  int unaff_retaddr;
  
                    /* 0x52fb70  277  Camera_FocusOnLot */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        if (this != (void *)0x0) {
          FUN_10767d70(this,unaff_retaddr,param_1,param_2,param_3,param_4,0.0,'\0');
        }
      }
    }
  }
  return;
}

