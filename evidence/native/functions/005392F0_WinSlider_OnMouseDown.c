/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: pick/store, matching capture request, track ValueAt/interactive setter,
   invalidate; AL1 RET10.
   Picker/store precedes matching capture request; track handling passes ValueAtPointer result to
   interactive setter with notify=1. The notification word is not a third ValueAtPointer parameter.
   Normal AL=1; upper EAX unspecified; RET 0x10. Auto-analysis is disabled and no inferred prototype
   is forced. Outer callback order remains unknown.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 __thiscall WinSlider_OnMouseDown(int *param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  int *piVar4;
  undefined4 uVar5;
  undefined4 unaff_ESI;
  
  cVar3 = (**(code **)(*param_1 + 0xa8))(param_2,param_3);
  *(char *)((int)param_1 + 0x265) = cVar3;
  if (cVar3 != -1) {
    piVar1 = param_1 + 1;
    piVar4 = (int *)(**(code **)(*(int *)param_1[0xc] + 0x60))(1);
    if (piVar4 != piVar1) {
      (**(code **)(*(int *)param_1[0xc] + 100))(1,piVar1,0);
    }
    if (*(char *)((int)param_1 + 0x265) == '\x02') {
      iVar2 = param_1[0x94];
      uVar5 = (**(code **)(*param_1 + 0xac))(param_3,unaff_ESI,1);
      (**(code **)(iVar2 + 0x1c))(uVar5);
    }
    (**(code **)(*piVar1 + 0x90))();
  }
  return 1;
}

