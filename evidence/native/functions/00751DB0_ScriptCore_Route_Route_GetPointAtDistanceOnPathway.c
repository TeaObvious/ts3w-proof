/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011619d0 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetPointAtDistanceOnPathway [assembly=ScriptCore token=0x0600111D;
   handle: System.UInt32, dist: System.Single, point: Sims3.SimIFace.Vector3&, returnTangent:
   Sims3.SimIFace.Vector3&, nodeIndex: System.Int32&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.Route::Route_GetPointAtDistanceOnPathway
          (uint param_1,undefined4 param_2,void *param_3,void *param_4,undefined4 *param_5)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  int *piVar5;
  undefined4 uStack_34;
  undefined4 auStack_30 [4];
  undefined1 auStack_20 [28];
  
  if (DAT_011d50c4 == (void *)0x0) {
    return;
  }
  piVar3 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
  if (piVar3 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar3 + 0x10))();
  if ((char)piVar3[0x3d] == '\0') {
    piVar5 = piVar3 + 0x38;
    if ((int *)*piVar5 == piVar5) goto LAB_00751e76;
    piVar5 = *(int **)(*piVar5 + 8);
  }
  else {
    piVar5 = (int *)piVar3[0x3b];
  }
  if (piVar5 != (int *)0x0) {
    piVar1 = piVar5 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    puVar4 = (undefined4 *)(**(code **)(*piVar5 + 0x11c))(auStack_20,param_2,auStack_30,&uStack_34);
    FUN_0076c100(param_3,puVar4);
    FUN_0076c100(param_4,auStack_30);
    *param_5 = uStack_34;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*piVar5)(1);
    }
  }
LAB_00751e76:
  (**(code **)(*piVar3 + 0x14))();
  return;
}

