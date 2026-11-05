/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Handles sync token/flags, retains
   controller snapshot, clears and releases entry, optionally invokes controller Stop(vtable+4)
   regardless of Started, then releases snapshot. This function does not unregister listeners;
   callback removal is a separate protocol. */

void __thiscall Animation_RetireSequenceEntry(void *this,int param_1,char param_2)

{
  int *piVar1;
  undefined4 *puVar2;
  int iVar3;
  
  if ((*(byte *)((int)this + 8) & 2) == 0) {
    FUN_00577140(*(uint *)((int)this + 4));
  }
  if (param_1 == 0) {
    iVar3 = 0;
  }
  else {
    iVar3 = param_1 + 0x28;
  }
  FUN_00577180(iVar3,*(uint *)((int)this + 4));
  piVar1 = *(int **)this;
  if (piVar1 != (int *)0x0) {
    piVar1[1] = piVar1[1] + 1;
  }
  puVar2 = *(undefined4 **)this;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)this = 0;
  if ((puVar2 != (undefined4 *)0x0) && (iVar3 = puVar2[1], puVar2[1] = iVar3 + -1, iVar3 + -1 == 0))
  {
    puVar2[1] = 1;
    (**(code **)*puVar2)(1);
  }
  if (param_2 != '\0') {
    if (piVar1 == (int *)0x0) {
      return;
    }
    (**(code **)(*piVar1 + 4))();
  }
  if ((piVar1 != (int *)0x0) && (iVar3 = piVar1[1], piVar1[1] = iVar3 + -1, iVar3 + -1 == 0)) {
    piVar1[1] = 1;
    (**(code **)*piVar1)(1);
  }
  return;
}

