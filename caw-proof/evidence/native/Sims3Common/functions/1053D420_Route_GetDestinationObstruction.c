/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetDestinationObstruction. Export
   ordinal(s): 635. Entry VA: 0x1053d420. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000174. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

longlong __cdecl Route_GetDestinationObstruction(uint param_1)

{
  int *piVar1;
  int *piVar2;
  longlong lVar3;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  float fStack_24;
  undefined1 auStack_20 [28];
  
                    /* 0x53d420  635  Route_GetDestinationObstruction */
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      if (((int *)piVar2[0x38] != piVar2 + 0x38) &&
         (piVar1 = *(int **)(piVar2[0x39] + 8), piVar1 != (int *)0x0)) {
        (**(code **)(*piVar1 + 0x134))(auStack_20);
        iStack_30 = piVar2[0x11];
        iStack_2c = piVar2[0x12];
        iStack_34 = piVar2[0x10];
        iStack_28 = piVar2[0x13];
        lVar3 = FUN_10637bd0(piVar1,(int *)0x0,&fStack_24,(int)&iStack_34,2);
        (**(code **)(*piVar2 + 0x14))();
        return lVar3;
      }
      (**(code **)(*piVar2 + 0x14))();
    }
  }
  return 0;
}

