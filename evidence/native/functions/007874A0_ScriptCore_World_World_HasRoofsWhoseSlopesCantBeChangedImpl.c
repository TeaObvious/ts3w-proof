/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163c58 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HasRoofsWhoseSlopesCantBeChangedImpl [assembly=ScriptCore
   token=0x06000886; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasRoofsWhoseSlopesCantBeChangedImpl(void)

{
  void *this;
  uint in_EAX;
  uint uVar1;
  undefined8 uVar2;
  int *piVar3;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar3 = (int *)0x0;
    uVar2 = FUN_00c5f560((int)DAT_011edbc4);
    piVar3 = FUN_00c62810(this,(int)uVar2,(int)((ulonglong)uVar2 >> 0x20),piVar3);
    in_EAX = 0;
    if ((piVar3 != (int *)0x0) && (in_EAX = 0, (void *)piVar3[0xab] != (void *)0x0)) {
      uVar1 = FUN_00b987b0((void *)piVar3[0xab]);
      return uVar1;
    }
  }
  return in_EAX & 0xffffff00;
}

