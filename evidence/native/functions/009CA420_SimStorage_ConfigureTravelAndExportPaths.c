/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: this in ECX, rootpathobject, exportfilename, modebyte; RET 12.
   Resets slot+a8; configures+40 slot with literalTravelDB.package undercriticalsection+110,
   configures+74 slot with suppliedExportDBfilename, storesmodeat+105. Permanentrecorddatabases
   aredistinct from+88 memoryTravelBin. */

void __thiscall
SimStorage_ConfigureTravelAndExportPaths
          (void *this,undefined4 *param_1,short *param_2,undefined1 param_3)

{
  SimStorage_ReplaceDatabaseSlotPath
            ((undefined4 *)((int)this + 0xa8),(undefined4 *)0x0,(short *)0x0);
  EnterCriticalSection((LPCRITICAL_SECTION)((int)this + 0x110));
  SimStorage_ReplaceDatabaseSlotPath((undefined4 *)((int)this + 0x40),param_1,L"TravelDB.package");
  LeaveCriticalSection((LPCRITICAL_SECTION)((int)this + 0x110));
  SimStorage_ReplaceDatabaseSlotPath((undefined4 *)((int)this + 0x74),param_1,param_2);
  *(undefined1 *)((int)this + 0x105) = param_3;
  return;
}

