/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161bd0 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteEvent::RouteEvent_GetObjectID [assembly=ScriptCore token=0x060010DD; eventHandle:
   System.UInt32; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_RouteEvent__RouteEvent_GetObjectID(uint param_1)

{
  undefined8 uVar1;
  int *piVar2;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar2 = (int *)FUN_0074b510(DAT_011d50c4,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
      uVar1 = *(undefined8 *)(piVar2 + 0x16);
      (**(code **)(*piVar2 + 4))();
      return uVar1;
    }
  }
  return 0;
}

