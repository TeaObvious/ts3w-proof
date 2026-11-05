/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


undefined1 __fastcall FUN_00733d80(int param_1)

{
  char cVar1;
  int *piVar2;
  
  cVar1 = (**(code **)(*(int *)(param_1 + 0x20) + 4))();
  if (cVar1 == '\0') {
    return 0;
  }
  FUN_0072f150(param_1 + 0x18);
  piVar2 = (int *)FUN_005a08d0();
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x18))(L"Timeslicing",10000);
  }
  piVar2 = (int *)FUN_005a08d0();
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x38))(param_1 + 0x14,L"ResourceSystem",1,100,1);
  }
  piVar2 = (int *)FUN_005a08d0();
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x18))(0,0x7fffffff);
  }
  DAT_011d4e30 = param_1 + 0x10;
  FUN_00595880(&DAT_011cede0);
  return 1;
}

