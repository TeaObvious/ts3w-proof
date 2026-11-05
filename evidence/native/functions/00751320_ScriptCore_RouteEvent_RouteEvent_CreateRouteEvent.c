/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161b90 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteEvent::RouteEvent_CreateRouteEvent [assembly=ScriptCore token=0x060010D5; ;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_RouteEvent__RouteEvent_CreateRouteEvent(void)

{
  int iVar1;
  int *piVar2;
  
  GetGlobalInterfacePointer_11D5BBC();
  piVar2 = (int *)FUN_004e4500(0x70,"Routing/RouteEventArgs",0);
  if (piVar2 != (int *)0x0) {
    *piVar2 = (int)&PTR_LAB_0103b394;
    piVar2[1] = (int)&PTR_LAB_00ff4a78;
    LOCK();
    piVar2[2] = 0;
    UNLOCK();
    piVar2[5] = 0;
    piVar2[3] = 0;
    piVar2[4] = 0;
    *piVar2 = (int)&PTR_FUN_0100530c;
    piVar2[1] = (int)&PTR_LAB_010501cc;
    *(undefined2 *)(piVar2 + 6) = 0;
    piVar2[0x14] = 0;
    piVar2[0x15] = 0;
    piVar2[0x16] = 0;
    piVar2[0x17] = 0;
    piVar2[0x18] = 0;
    piVar2[0x19] = 0;
    (**(code **)*piVar2)();
    if (DAT_011d50c4 != (void *)0x0) {
      FUN_0074e5a0(DAT_011d50c4,piVar2);
      iVar1 = piVar2[5];
      (**(code **)(*piVar2 + 4))();
      return iVar1;
    }
    (**(code **)(*piVar2 + 4))();
  }
  return 0;
}

