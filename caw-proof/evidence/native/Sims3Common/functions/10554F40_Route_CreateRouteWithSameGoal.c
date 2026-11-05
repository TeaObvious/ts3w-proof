/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_CreateRouteWithSameGoal. Export ordinal(s):
   630. Entry VA: 0x10554f40. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000165. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl Route_CreateRouteWithSameGoal(uint param_1)

{
  int iVar1;
  int *piVar2;
  void *this;
  int *piVar3;
  
  FUN_1055b120();
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      this = (void *)FUN_10918eb0(0x200,"Routing/Route",0);
      if (this != (void *)0x0) {
        piVar3 = FUN_10551cc0(this,(int)piVar2);
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar3 + 0x10))();
          FUN_1053ef20(DAT_10c78944,piVar3 + 1);
          iVar1 = piVar3[6];
          (**(code **)(*piVar3 + 0x14))();
          (**(code **)(*piVar2 + 0x14))();
          return iVar1;
        }
      }
      (**(code **)(*piVar2 + 0x14))();
    }
  }
  return 0;
}

