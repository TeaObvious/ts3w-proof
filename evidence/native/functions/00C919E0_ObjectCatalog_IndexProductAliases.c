/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX catalog,
   product pointer stack argument RET4. Index product own key+8 in map+C0 and authored dependency
   key+88 in map+D4. For each slot, identical pointer is untouched; otherwise retain incoming
   product via vtable0, store it, then release previous via vtable4. Last installed product replaces
   prior alias owner; no ambiguity rejection exists here. */

void __thiscall ObjectCatalog_IndexProductAliases(void *this,int *param_1)

{
  int *piVar1;
  uint *puVar2;
  
                    /* Analyst: Install both aliases; retain new and release prior pointer per slot.
                        */
  puVar2 = FUN_00c91840((void *)((int)this + 0xc0),(uint *)(param_1 + 2));
  piVar1 = (int *)*puVar2;
  if (param_1 != piVar1) {
    if (param_1 != (int *)0x0) {
      (**(code **)*param_1)();
    }
    *puVar2 = (uint)param_1;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  puVar2 = FUN_00c91840((void *)((int)this + 0xd4),(uint *)(param_1 + 0x22));
  piVar1 = (int *)*puVar2;
  if (param_1 != piVar1) {
    if (param_1 != (int *)0x0) {
      (**(code **)*param_1)();
    }
    *puVar2 = (uint)param_1;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  return;
}

