/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: capture/component paths; live drag range/geometry and press offset, hover update;
   AL1 RET0c; trailing table excluded.
   Drag uses live geometry/range plus press grab offset, with floor rounding; nonpositive travel
   chooses minimum, and target is synchronized to current. Capture loss does not globally cancel the
   gesture here. Normal AL=1, upper EAX unspecified, RET 0x0c. Body ends 0x00536d9f; table at
   0x00536da0 is excluded. No inferred prototype is forced.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 __thiscall WinScrollbar_OnMouseMove(int *param_1,float param_2)

{
  int iVar1;
  char cVar2;
  int *piVar3;
  int *piVar4;
  float fVar5;
  float fVar6;
  double dVar7;
  float unaff_retaddr;
  
  if (param_1 == (int *)0x0) {
    piVar4 = (int *)0x0;
  }
  else {
    piVar4 = param_1 + 1;
  }
  piVar3 = (int *)(**(code **)(*(int *)param_1[0xc] + 0x60))(1);
  if (piVar3 == piVar4) {
    switch(*(byte *)((int)param_1 + 0x285) - 1) {
    case 0:
    case 1:
    case 4:
    case 5:
      cVar2 = (**(code **)(*param_1 + 0xa8))(unaff_retaddr,param_2);
      if ((char)param_1[0xa1] != cVar2) {
        *(char *)(param_1 + 0xa1) = cVar2;
        (**(code **)(param_1[1] + 0x90))();
        return 1;
      }
      break;
    case 2:
      if (param_1[0xa0] == 1) {
        param_2 = unaff_retaddr - (float)param_1[0xa2];
        fVar6 = (float)param_1[0xba] - (float)param_1[0xb8];
        fVar5 = (float)param_1[0xbe] - (float)param_1[0xbc];
      }
      else {
        param_2 = param_2 - (float)param_1[0xa2];
        fVar6 = (float)param_1[0xbb] - (float)param_1[0xb9];
        fVar5 = (float)param_1[0xbf] - (float)param_1[0xbd];
      }
      if (0.0 < fVar5 - fVar6) {
        iVar1 = param_1[0x94];
        dVar7 = floor((double)(((float)((param_1[0x9a] - param_1[0x9b]) - param_1[0x99]) * param_2)
                               / (fVar5 - fVar6) + 0.5));
        Compiler_TruncateX87ToLowInt32((float10)dVar7);
        (**(code **)(iVar1 + 0x28))();
        param_1[0x97] = param_1[0x95];
        return 1;
      }
      (**(code **)(param_1[0x94] + 0x28))(param_1[0x99],1);
      param_1[0x97] = param_1[0x95];
      return 1;
    }
  }
  else {
    cVar2 = (**(code **)(*param_1 + 0xa8))(unaff_retaddr,param_2);
    if ((char)param_1[0xa1] != cVar2) {
      *(char *)(param_1 + 0xa1) = cVar2;
      (**(code **)(param_1[1] + 0x90))();
    }
  }
  return 1;
}

