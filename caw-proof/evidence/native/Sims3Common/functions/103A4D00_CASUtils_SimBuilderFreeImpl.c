/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderFreeImpl. Export ordinal(s):
   154. Entry VA: 0x103a4d00. Original managed P/Invoke MethodDef(s): ScriptCore:0x060003E9. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_SimBuilderFreeImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  void *this;
  int *piVar4;
  
  piVar1 = (int *)FUN_108835e0();
  piVar2 = (int *)FUN_1055b120();
  if (((piVar2 != (int *)0x0) && ((param_1 & 0xff000000) == 0x35000000)) &&
     (iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1), iVar3 != 0)) {
    this = (void *)FUN_10918eb0(0x14,"CAS/CASHost/SimMsgCASFreeBuilder",0);
    if (this == (void *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = (int *)FUN_103a3800(this,iVar3);
    }
    (**(code **)(*piVar4 + 4))();
    (**(code **)(*piVar1 + 0x1c))(0x1fc9ad87,piVar4,0,piVar4 + 1);
    (**(code **)(*piVar4 + 8))();
    (**(code **)(*piVar2 + 0xd8))(param_1);
  }
  return;
}

