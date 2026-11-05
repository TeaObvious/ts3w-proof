/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteEvent_CreateRouteEvent. Export ordinal(s):
   539. Entry VA: 0x10543390. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600013D. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int RouteEvent_CreateRouteEvent(void)

{
  int iVar1;
  int *piVar2;
  
  FUN_1055b120();
  piVar2 = (int *)FUN_10918eb0(0x70,"Routing/RouteEventArgs",0);
  if (piVar2 != (int *)0x0) {
    *piVar2 = (int)&PTR_LAB_10b91824;
    piVar2[1] = (int)&PTR_LAB_10ac6944;
    LOCK();
    piVar2[2] = 0;
    UNLOCK();
    piVar2[5] = 0;
    piVar2[3] = 0;
    piVar2[4] = 0;
    *piVar2 = (int)&PTR_FUN_10b1b864;
    piVar2[1] = (int)&PTR_LAB_10b5dcf0;
    *(undefined2 *)(piVar2 + 6) = 0;
    piVar2[0x14] = 0;
    piVar2[0x15] = 0;
    piVar2[0x16] = 0;
    piVar2[0x17] = 0;
    piVar2[0x18] = 0;
    piVar2[0x19] = 0;
    (**(code **)*piVar2)();
    if (DAT_10c78944 != (void *)0x0) {
      FUN_1053ef20(DAT_10c78944,piVar2);
      iVar1 = piVar2[5];
      (**(code **)(*piVar2 + 4))();
      return iVar1;
    }
    (**(code **)(*piVar2 + 4))();
  }
  return 0;
}

