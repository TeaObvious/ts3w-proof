/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163c60 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HasPagodaRoofsImpl [assembly=ScriptCore token=0x06000887; ;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasPagodaRoofsImpl(void)

{
  void *this;
  uint in_EAX;
  int *piVar1;
  undefined8 uVar2;
  uint *visitCounter;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    visitCounter = (uint *)0x0;
    uVar2 = FUN_00c5f560((int)DAT_011edbc4);
    piVar1 = WorldObjects_FindLotByGuid
                       (this,(uint)uVar2,(uint)((ulonglong)uVar2 >> 0x20),visitCounter);
    in_EAX = 0;
    if ((piVar1 != (int *)0x0) && (in_EAX = 0, (void *)piVar1[0xab] != (void *)0x0)) {
      in_EAX = FUN_00b98690((void *)piVar1[0xab]);
    }
  }
  return in_EAX & 0xffffff00;
}

