/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Three physical caller-cleaned stack words: parent control ID, new
   control ID, low-byte topmost selection. Resolve root or requested parent through actual UI
   service; allocate0x250 native Window, attach, set control ID, move to front, and assign flags6013
   plus optional40. No complete C++ layout or CLR dictionary lifetime inferred. Native virtual calls
   and exact failure branches remain visible; result is not consumed by selected initializer. */

void __cdecl UIManager_CreateCategoryWindow(int param_1)

{
  float fVar1;
  float fVar2;
  int *piVar3;
  uint *puVar4;
  int *piVar5;
  int *piVar6;
  int iVar7;
  undefined4 uStack_8;
  
  piVar3 = (int *)FUN_0050af90();
  piVar3 = (int *)(**(code **)(*piVar3 + 4))();
  if (piVar3 == (int *)0x0) {
    return;
  }
  if (param_1 != 0) {
    piVar3 = (int *)(**(code **)(*piVar3 + 0xf4))();
  }
  if (piVar3 == (int *)0x0) {
    return;
  }
  puVar4 = FUN_005050b0(0x250,0x10,"Scripting/UIHost/UITopLevelWindow",(int *)0x0);
  if (puVar4 == (uint *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = Window_InitializeNativeFields(puVar4);
    if (piVar5 != (int *)0x0) {
      (**(code **)*piVar5)();
      piVar6 = piVar5 + 1;
      goto LAB_0077a2f5;
    }
  }
  piVar6 = (int *)0x0;
LAB_0077a2f5:
  (**(code **)(*piVar3 + 0xdc))(piVar6);
  if (piVar5 == (int *)0x0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = piVar5 + 1;
  }
  (**(code **)(*piVar3 + 0xec))(piVar6);
  piVar6 = piVar5 + 1;
  (**(code **)(piVar5[1] + 0xb0))(0);
  iVar7 = (**(code **)(*piVar3 + 0x38))();
  fVar1 = *(float *)(iVar7 + 4);
  fVar2 = *(float *)(iVar7 + 0xc);
  (**(code **)(*piVar6 + 100))(&stack0xffffffe4);
  (**(code **)(*piVar6 + 0x54))(uStack_8);
  (**(code **)(*piVar6 + 0x74))(0x10,1);
  (**(code **)(*piVar6 + 0x74))(0x40,fVar2 - fVar1);
  (**(code **)(*piVar6 + 0x74))(0x4000,1);
  (**(code **)(*piVar5 + 4))();
  return;
}

