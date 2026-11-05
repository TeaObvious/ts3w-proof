/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: EventQueue_CreateEventQueueImpl. Export
   ordinal(s): 428. Entry VA: 0x10533f10. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000352. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl EventQueue_CreateEventQueueImpl(undefined4 param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  
                    /* 0x533f10  428  EventQueue_CreateEventQueueImpl */
  piVar1 = (int *)FUN_1055b120();
  (**(code **)(*piVar1 + 0x118))();
  puVar2 = (undefined4 *)FUN_10918eb0(0xc,"Scripting/EventQueueHost/CreateQueue",0);
  puVar3 = (undefined4 *)0x0;
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 0;
    *puVar2 = &PTR_FUN_10b1a520;
    puVar2[2] = param_1;
    puVar3 = puVar2;
  }
  (**(code **)*puVar3)();
  (**(code **)(*piVar1 + 200))(puVar3,0x22);
  return;
}

