/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetPathStartPoint. Export ordinal(s): 656.
   Entry VA: 0x10542d90. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600018B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_GetPathStartPoint(uint param_1,int param_2,void *param_3)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  undefined4 *puVar4;
  undefined1 auStack_20 [28];
  
  if (DAT_10c78944 == (void *)0x0) {
    piVar2 = (int *)0x0;
  }
  else {
    piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      piVar3 = (int *)piVar2[0x38];
      piVar1 = piVar2 + 0x38;
      if (piVar3 != piVar1) {
        do {
          if (param_2 == 0) break;
          piVar3 = (int *)*piVar3;
          param_2 = param_2 + -1;
        } while (piVar3 != piVar1);
        if ((piVar3 != piVar1) && ((int *)piVar3[2] != (int *)0x0)) {
          puVar4 = (undefined4 *)(**(code **)(*(int *)piVar3[2] + 0x138))(auStack_20);
          FUN_1055dbd0(param_3,puVar4);
          (**(code **)(*piVar2 + 0x14))();
          return;
        }
      }
    }
  }
  FUN_1055da40(param_3,0,0,0);
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x14))();
  }
  return;
}

