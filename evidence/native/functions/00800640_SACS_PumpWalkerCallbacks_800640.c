/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 normal callback pump over walker list +0x58. Pushes the actual source Walker* and
   callback pointer before the indirect callback call at 0x80065C-0x800664. A true callback result
   releases/removes that list node; false retains it. Raw proof: the reviewed original reference
   reference PC1.67 identity recorded centrally
   
   Analyst note (PC1.67 SACS migration contract): ECX source walker; selected normal callback-list
   pump passes actual source Walker identity through callback dispatch and conditionally consumes
   list entries. Callback ownership/list mutation follows native retained objects, not .NET
   completion queues. Existing original bridge state-watch annotations remain valid; no runtime
   dispatch execution claimed. */

void __fastcall SACS_PumpWalkerCallbacks_800640(int param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  char cVar3;
  code *pcVar4;
  
  puVar1 = *(undefined4 **)(param_1 + 0x58);
  while (puVar1 != (undefined4 *)(param_1 + 0x58)) {
    piVar2 = (int *)puVar1[2];
    if (piVar2 != (int *)0x0) {
      pcVar4 = (code *)(**(code **)(*piVar2 + 0x10))(piVar2,param_1);
      cVar3 = (*pcVar4)();
      if (cVar3 == '\0') {
        puVar1 = (undefined4 *)*puVar1;
      }
      else {
        (**(code **)(*piVar2 + 8))();
        puVar1 = (undefined4 *)*puVar1;
        piVar2 = (int *)puVar1[1];
        *(int *)piVar2[1] = *piVar2;
        *(int *)(*piVar2 + 4) = piVar2[1];
        Memory_FreeIfNonNull(piVar2);
      }
    }
  }
  return;
}

