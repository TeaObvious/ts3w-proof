/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.World::World_RestrictBuildBuyInBuildingsImpl at 0x00787410, bytes e92b213300. This is
   a static control-flow link from the registered entry; the target may have other callers and its
   side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.World::World_RestrictBuildBuyInBuildingsImpl at 0x00787410, bytes e92b213300. This is
   a static control-flow link from the registered entry; the target may have other callers and its
   side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void __cdecl DirectTargetOf_World_World_RestrictBuildBuyInBuildingsImpl(char param_1)

{
  void *this;
  int *piVar1;
  undefined8 uVar2;
  uint *visitCounter;
  
  this = DAT_011edbc4;
  if ((DAT_01183e88 != param_1) && (DAT_01183e88 = param_1, DAT_011edbc4 != (void *)0x0)) {
    visitCounter = (uint *)0x0;
    uVar2 = FUN_00c5f560((int)DAT_011edbc4);
    piVar1 = WorldObjects_FindLotByGuid
                       (this,(uint)uVar2,(uint)((ulonglong)uVar2 >> 0x20),visitCounter);
    if (piVar1 != (int *)0x0) {
      FUN_00ab47c0(piVar1);
      return;
    }
  }
  return;
}

