/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.World::World_HasRoofsWhoseSlopesCantBeChangedImpl at 0x007874a0, bytes e9cb543700.
   This is a static control-flow link from the registered entry; the target may have other callers
   and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

uint DirectTargetOf_World_World_HasRoofsWhoseSlopesCantBeChangedImpl(void)

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

