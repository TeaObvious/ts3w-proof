/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_Plan. Export ordinal(s): 677. Entry VA:
   0x10556c70. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000172. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int * __cdecl Route_Plan(int *param_1,uint param_2)

{
  code *pcVar1;
  void *this;
  int *piVar2;
  int *piVar3;
  int iVar4;
  bool bVar5;
  int aiStack_48 [18];
  
                    /* 0x556c70  677  Route_Plan */
  this = DAT_10c78944;
  bVar5 = DAT_10c78944 != (void *)0x0;
  *param_1 = 2;
  param_1[1] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  if (bVar5) {
    piVar2 = (int *)FUN_1053c0f0(this,param_2);
    if (piVar2 == (int *)0x0) {
      param_1[1] = 0;
      param_1[3] = 0;
      param_1[8] = 0;
      param_1[9] = 0;
      *param_1 = 2;
      param_1[4] = 0;
      param_1[5] = 0;
      param_1[6] = 0;
      param_1[7] = 0;
      return param_1;
    }
    (**(code **)(*piVar2 + 0x10))();
    piVar3 = FUN_10555ce0(piVar2,aiStack_48);
    pcVar1 = *(code **)(*piVar2 + 0x14);
    piVar2 = param_1;
    for (iVar4 = 0x12; iVar4 != 0; iVar4 = iVar4 + -1) {
      *piVar2 = *piVar3;
      piVar3 = piVar3 + 1;
      piVar2 = piVar2 + 1;
    }
    (*pcVar1)();
  }
  return param_1;
}

