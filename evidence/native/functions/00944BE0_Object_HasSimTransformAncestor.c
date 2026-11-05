/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* One stack object pointer; plainRET, Boolean consumed in AL. A null current object, missing
   Transform descriptor011EA158, or null Transform parent at+30 returns false. After advancing to
   the parent, tests its object+2C against Sim mask011EA0FC before requesting that parent's
   Transform; a Sim parent returns AL1. Repeats through non-Sim ancestors. This body has no cycle
   guard, Footprint-enabled mutation, router registration or notification. Inferred return type does
   not establish a stable full-width true value. */

undefined4 __cdecl Object_HasSimTransformAncestor(void *param_1)

{
  void *pvVar1;
  
  do {
    if (param_1 == (void *)0x0) {
      return 0;
    }
    pvVar1 = Object_GetComponentByMask(param_1,DAT_011ea158);
    if (pvVar1 == (void *)0x0) {
      return 0;
    }
    param_1 = *(void **)((int)pvVar1 + 0x30);
    if (param_1 == (void *)0x0) {
      return 0;
    }
  } while ((*(uint *)((int)param_1 + 0x2c) & DAT_011ea0fc) == 0);
  return CONCAT31((int3)((uint)param_1 >> 8),1);
}

