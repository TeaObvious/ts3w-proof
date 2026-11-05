/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation.
   Source-path comments use canonical published references; executable projection unchanged. */

/* Retained historical annotation 1, previous canonical/import C line 6;
   commentary from that earlier export, preserved without changing the genuine C suffix. */
/* PC 1.67 registered release-driver entry (pristine ScriptCore token 0x06000D5D). Calls manager
   vtable +0xD8 with driverHandle; for a nonnull result it invokes reference release through
   driver+0x08 and performs an optional object-related cleanup. Complete final driver/walker
   destruction and surviving watch order are not established by this entry alone. Raw proof:
   guides/sacs/native/disassembly/registered-release-driver-767410.objdump.txt;
   reference . */



/* PC 1.67 registered release-driver entry (pristine ScriptCore token 0x06000D5D). Calls manager
   vtable +0xD8 with driverHandle; for a nonnull result it invokes reference release through
   driver+0x08 and performs an optional object-related cleanup. Complete final driver/walker
   destruction and surviving watch order are not established by this entry alone. Raw proof:
   ../../../guides/sacs/native/disassembly/registered-release-driver-767410.objdump.txt;
   reference SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void ScriptCore_SACS__SACS_ReleaseDriverImpl(undefined4 param_1)

{
  int *piVar1;
  void *this;
  int iVar2;
  void *pvVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xd8))(param_1);
  if (this != (void *)0x0) {
    pvVar3 = (void *)0x0;
    iVar2 = SacsDriver_FindExistingActorWalker(this,0x50c5d67);
    if (iVar2 != 0) {
      pvVar3 = (void *)FUN_00581870(*(void **)(iVar2 + 8),'\0');
      if (pvVar3 == (void *)0x0) {
        pvVar3 = (void *)0x0;
      }
      else {
        pvVar3 = Object_GetComponentByMask(pvVar3,DAT_011ea0f0);
      }
    }
    (**(code **)(*(int *)((int)this + 8) + 4))();
    if (pvVar3 != (void *)0x0) {
      SACS_ComponentCollectQuiescentSoleRefDrivers_94D390((int)pvVar3);
      return;
    }
  }
  return;
}

