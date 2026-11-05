/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_RequestStateImpl. Export ordinal(s): 726.
   Entry VA: 0x10559330. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EB4. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl
SACS_RequestStateImpl(int param_1,int param_2,uint param_3,undefined4 param_4,int param_5)

{
  int *piVar1;
  void *this;
  undefined4 *this_00;
  int iVar2;
  
  piVar1 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this == (void *)0x0) {
    return -2;
  }
  iVar2 = 0;
  if (param_5 != 0) {
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_5);
  }
  piVar1 = (int *)0x0;
  if (iVar2 != 0) {
    this_00 = FUN_1055c9d0();
    if (this_00 == (undefined4 *)0x0) {
      piVar1 = (int *)0x0;
    }
    else {
      piVar1 = FUN_10558d80(this_00,0,0,this,param_1,param_2);
    }
  }
  iVar2 = FUN_105f5a90(this,param_1,param_2,param_3,piVar1,0);
  if ((param_3 & 0x200) != 0) {
    FUN_105ee6b0(DAT_10c7d5a0,(int)this,1);
  }
  return iVar2;
}

