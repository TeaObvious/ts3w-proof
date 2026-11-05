/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d48 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_SetRouteSoundSpec [assembly=ScriptCore token=0x0600107A;
   simObjId: System.UInt64, rCruise: System.String, rDecelerate: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.RouteManager::RouteManager_SetRouteSoundSpec
          (undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  int iVar1;
  void *pvVar2;
  int *piVar3;
  short *psVar4;
  int local_20 [4];
  undefined1 auStack_10 [16];
  
  iVar1 = FUN_00937570();
  if (((iVar1 != 0) && (pvVar2 = (void *)FUN_00937f80(iVar1), pvVar2 != (void *)0x0)) &&
     (pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011ea138), pvVar2 != (void *)0x0)) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    FUN_00858f30(local_20);
    if (param_3 == 0) {
      psVar4 = &DAT_00fba6c4;
    }
    else {
      psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(param_3);
    }
    FUN_00408f50(local_20,psVar4);
    if (param_4 == 0) {
      psVar4 = &DAT_00fba6c4;
    }
    else {
      psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(param_4);
    }
    FUN_00408f50(auStack_10,psVar4);
    FUN_00954c40(pvVar2,local_20);
    FUN_004ef9f0(local_20);
  }
  return;
}

