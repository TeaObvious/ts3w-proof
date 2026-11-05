/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_RegisterWindowCursorImpl. Export
   ordinal(s): 1142. Entry VA: 0x1056f830. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006B8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
UIManager_RegisterWindowCursorImpl(undefined4 param_1,uint param_2,undefined4 param_3,char param_4)

{
  void *this;
  int *piVar1;
  int iStack_8;
  undefined4 uStack_4;
  
  this = (void *)FUN_105e3340();
  if (this != (void *)0x0) {
    if (param_4 == '\0') {
      FUN_105e3a20(this,param_1,(int *)0x0,&iStack_8,'\0');
    }
    else {
      piVar1 = (int *)FUN_1055b120();
      if ((param_2 & 0xff000000) == 0x30000000) {
        piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))();
        if (piVar1 != (int *)0x0) {
          piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
          if (piVar1 != (int *)0x0) {
            FUN_105e3a20(this,uStack_4,piVar1,(int *)&stack0xfffffff0,'\x01');
            return;
          }
        }
      }
    }
  }
  return;
}

