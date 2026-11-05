/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011618d0 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_FindObstaclesForSimAlongRoute [assembly=ScriptCore token=0x06001102;
   simHandle: System.UInt64, handle: System.UInt32; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.Route::Route_FindObstaclesForSimAlongRoute
          (undefined4 param_1,undefined4 param_2,uint param_3)

{
  int *piVar1;
  int iVar2;
  void *this;
  int *piVar3;
  undefined4 unaff_EBP;
  int *****pppppiVar4;
  undefined4 local_14;
  int iStack_10;
  int iStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  local_14 = 0;
  if (DAT_011d50c4 == (void *)0x0) {
    return 0;
  }
  piVar1 = (int *)FUN_0074b4b0(DAT_011d50c4,param_3);
  if (piVar1 == (int *)0x0) {
    return local_14;
  }
  (**(code **)(*piVar1 + 0x10))();
  if ((char)piVar1[0x3d] == '\0') {
    piVar3 = piVar1 + 0x38;
    if ((int *)*piVar3 == piVar3) goto LAB_00750744;
    pppppiVar4 = *(int ******)(*piVar3 + 8);
  }
  else {
    pppppiVar4 = (int *****)piVar1[0x3b];
  }
  if (pppppiVar4 != (int *****)0x0) {
    iVar2 = FUN_00937570();
    this = (void *)FUN_00937f80(iVar2);
    if ((this != (void *)0x0) && (iVar2 = FUN_00934260(this,DAT_011ea138), iVar2 != 0)) {
      iStack_10 = 0;
      iStack_c = 0;
      uStack_8 = 0;
      pcStack_4 = "Locomotion/ObstacleList";
      FUN_0085f690((int *)(iVar2 + 8),pppppiVar4,&iStack_10,1,'\x01');
      if (iStack_10 != iStack_c) {
        iVar2 = iStack_c - iStack_10 >> 3;
        piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
        (**(code **)(*piVar3 + 0x88))(&local_14,iVar2);
        (**(code **)(*piVar3 + 0xa0))(&stack0xffffffe4,unaff_EBP,0,iVar2);
      }
      if (iStack_10 != 0) {
        FUN_004e44e0(iStack_10);
      }
    }
  }
LAB_00750744:
  (**(code **)(*piVar1 + 0x14))();
  return local_14;
}

