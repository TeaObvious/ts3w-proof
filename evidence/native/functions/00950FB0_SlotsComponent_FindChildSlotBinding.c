/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Finds list node whose
   +8 field equals child pointer input. Returns node+0x0c binding, optionally writes low byte of
   node+0x10. Missing child returns 0 with output flag unchanged. */

int __thiscall SlotsComponent_FindChildSlotBinding(void *this,int param_1,undefined1 *param_2)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  
  piVar1 = (int *)((int)this + 0x48);
  piVar3 = (int *)*piVar1;
  iVar2 = 0;
  if (piVar3 != piVar1) {
    while (piVar3[2] != param_1) {
      piVar3 = (int *)*piVar3;
      if (piVar3 == piVar1) {
        return iVar2;
      }
    }
    iVar2 = piVar3[3];
    if (param_2 != (undefined1 *)0x0) {
      *param_2 = (char)piVar3[4];
    }
  }
  return iVar2;
}

