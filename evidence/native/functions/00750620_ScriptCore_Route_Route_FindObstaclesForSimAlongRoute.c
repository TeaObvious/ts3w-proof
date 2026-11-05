/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011618d0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *pvVar2;
  int iVar3;
  int *piVar4;
  undefined4 unaff_EBP;
  int *****pppppiVar5;
  undefined4 local_14;
  void *pvStack_10;
  void *pvStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  local_14 = 0;
  if (DAT_011d50c4 == (void *)0x0) {
    return 0;
  }
  piVar1 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_3);
  if (piVar1 == (int *)0x0) {
    return local_14;
  }
  (**(code **)(*piVar1 + 0x10))();
  if ((char)piVar1[0x3d] == '\0') {
    piVar4 = piVar1 + 0x38;
    if ((int *)*piVar4 == piVar4) goto LAB_00750744;
    pppppiVar5 = *(int ******)(*piVar4 + 8);
  }
  else {
    pppppiVar5 = (int *****)piVar1[0x3b];
  }
  if (pppppiVar5 != (int *****)0x0) {
    pvVar2 = ObjectRegistry_GetGlobal();
    pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
    if ((pvVar2 != (void *)0x0) &&
       (pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011ea138), pvVar2 != (void *)0x0)) {
      pvStack_10 = (void *)0x0;
      pvStack_c = (void *)0x0;
      uStack_8 = 0;
      pcStack_4 = "Locomotion/ObstacleList";
      FUN_0085f690((int *)((int)pvVar2 + 8),pppppiVar5,&pvStack_10,1,'\x01');
      if (pvStack_10 != pvStack_c) {
        iVar3 = (int)pvStack_c - (int)pvStack_10 >> 3;
        piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
        (**(code **)(*piVar4 + 0x88))(&local_14,iVar3);
        (**(code **)(*piVar4 + 0xa0))((int)register0x00000010 + -0x1c,unaff_EBP,0,iVar3);
      }
      if (pvStack_10 != (void *)0x0) {
        Memory_FreeIfNonNull(pvStack_10);
      }
    }
  }
LAB_00750744:
  (**(code **)(*piVar1 + 0x14))();
  return local_14;
}

