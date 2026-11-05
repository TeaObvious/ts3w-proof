/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_HasPagodaRoofsImpl at
   0x007874b0, bytes e9fb543700. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_HasPagodaRoofsImpl at
   0x007874b0, bytes e9fb543700. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

uint DirectTargetOf_World_World_HasPagodaRoofsImpl(void)

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

