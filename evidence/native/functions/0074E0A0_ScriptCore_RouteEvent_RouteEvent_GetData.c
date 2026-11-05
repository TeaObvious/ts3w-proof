/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161bd8 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteEvent::RouteEvent_GetData [assembly=ScriptCore token=0x060010DE; eventHandle:
   System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_RouteEvent__RouteEvent_GetData(uint param_1)

{
  int iVar1;
  int *piVar2;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar2 = (int *)FUN_0074b510(DAT_011d50c4,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
      iVar1 = piVar2[0x18];
      (**(code **)(*piVar2 + 4))();
      return iVar1;
    }
  }
  return 0;
}

