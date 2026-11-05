/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteEvent_GetObjectID. Export ordinal(s): 543.
   Entry VA: 0x10540950. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000145. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 __cdecl RouteEvent_GetObjectID(uint param_1)

{
  undefined8 uVar1;
  int *piVar2;
  
                    /* 0x540950  543  RouteEvent_GetObjectID */
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c150(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
      uVar1 = *(undefined8 *)(piVar2 + 0x16);
      (**(code **)(*piVar2 + 4))();
      return uVar1;
    }
  }
  return 0;
}

