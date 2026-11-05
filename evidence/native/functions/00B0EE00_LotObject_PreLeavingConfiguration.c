/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC 1.67 original contract. Ifworld lot registryavailable resolveslotfromowner source
   key+18, invokes00b0c120 and00b01a20 forfoundlot. Full downstreamgeometry/rebuild
   semanticsremainoutsidecontract. */

void __cdecl LotObject_PreLeavingConfiguration(void *object)

{
  int iVar1;
  
  if (object != (void *)0x0) {
    iVar1 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)object + 0x18));
    if (iVar1 != 0) {
      if (*(int *)(iVar1 + 0xd4) != *(int *)(iVar1 + 0xd8)) {
        FUN_00b0c120(object);
        return;
      }
      if ((*(uint *)(iVar1 + 0x98) >> 0x19 & 1) != 0) {
        FUN_00b01a20(object);
      }
    }
  }
  return;
}

