/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163c60 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HasPagodaRoofsImpl [assembly=ScriptCore token=0x06000887; ;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasPagodaRoofsImpl(void)

{
  void *this;
  uint in_EAX;
  undefined8 uVar1;
  int *piVar2;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar2 = (int *)0x0;
    uVar1 = FUN_00c5f560((int)DAT_011edbc4);
    piVar2 = FUN_00c62810(this,(int)uVar1,(int)((ulonglong)uVar1 >> 0x20),piVar2);
    in_EAX = 0;
    if ((piVar2 != (int *)0x0) && (in_EAX = 0, (void *)piVar2[0xab] != (void *)0x0)) {
      in_EAX = FUN_00b98690((void *)piVar2[0xab]);
    }
  }
  return in_EAX & 0xffffff00;
}

