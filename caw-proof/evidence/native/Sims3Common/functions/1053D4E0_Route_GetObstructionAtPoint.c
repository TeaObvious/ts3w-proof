/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetObstructionAtPoint. Export ordinal(s):
   647. Entry VA: 0x1053d4e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000175. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

longlong __cdecl
Route_GetObstructionAtPoint(uint param_1,float param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int *piVar2;
  longlong lVar3;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  float fStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
                    /* 0x53d4e0  647  Route_GetObstructionAtPoint */
  if (DAT_10c78944 != (void *)0x0) {
    piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      iStack_30 = piVar1[0x10];
      iStack_2c = piVar1[0x11];
      iStack_28 = piVar1[0x12];
      iStack_24 = piVar1[0x13];
      fStack_20 = param_2;
      uStack_1c = param_3;
      uStack_18 = param_4;
      fStack_14 = param_2;
      if ((char)piVar1[0x3d] == '\0') {
        piVar2 = piVar1 + 0x38;
        if ((int *)*piVar2 == piVar2) {
          piVar2 = (int *)0x0;
        }
        else {
          piVar2 = *(int **)(*piVar2 + 8);
        }
      }
      else {
        piVar2 = (int *)piVar1[0x3b];
      }
      lVar3 = FUN_10637bd0(piVar2,(int *)0x0,&fStack_20,(int)&iStack_30,2);
      (**(code **)(*piVar1 + 0x14))();
      return lVar3;
    }
  }
  return 0;
}

