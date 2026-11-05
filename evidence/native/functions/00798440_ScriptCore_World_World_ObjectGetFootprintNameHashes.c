/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011636f0 (TS3W.exe).
   ScriptCore.World::World_ObjectGetFootprintNameHashes [assembly=ScriptCore token=0x060007DE;
   objId: System.UInt64; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reviewed cdecl GUID,
   uint SAFEARRAY return. Enumerates base primary, supplemental primary and base secondary name
   hashes, uniquing through 0x0082eb60. Host +0x8c/+0xa4 copies uint values. Failure returns NULL;
   ScriptCore maps NULL to new uint[0]. Extended resource substitution is not used. */

void * __cdecl ScriptCore.World::World_ObjectGetFootprintNameHashes(ulonglong objectGuid)

{
  int *piVar1;
  void *pvVar2;
  undefined4 *puVar3;
  int *piVar4;
  int *piVar5;
  int *allocation;
  int *piVar6;
  int iVar7;
  int *piVar8;
  undefined4 local_14;
  int *local_10;
  int *local_c;
  int *local_8;
  char *local_4;
  
  local_14 = (void *)0x0;
  pvVar2 = ObjectRegistry_GetGlobal();
  if ((((pvVar2 == (void *)0x0) ||
       (pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,objectGuid), pvVar2 == (void *)0x0)) ||
      (pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011e9fa8), pvVar2 == (void *)0x0)) ||
     (*(int *)((int)pvVar2 + 0x28) == 0)) {
    return local_14;
  }
  allocation = (int *)0x0;
  local_10 = (int *)0x0;
  local_c = (int *)0x0;
  local_8 = (int *)0x0;
  local_4 = "Objects/FootprintComponent/FootprintFlags";
  puVar3 = (undefined4 *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)pvVar2 + 0x28));
  piVar5 = (int *)puVar3[1];
  piVar8 = (int *)*puVar3;
  piVar1 = (int *)0x0;
  do {
    if (piVar8 == piVar5) {
      piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
      if (piVar5 != (int *)0x0) {
        iVar7 = (int)piVar1 - (int)allocation >> 2;
        (**(code **)(*piVar5 + 0x84))(&local_14,iVar7);
        (**(code **)(*piVar5 + 0x9c))((int)register0x00000010 + -0x1c,allocation,0,iVar7);
      }
      if (allocation != (int *)0x0) {
        Memory_FreeIfNonNull(allocation);
      }
      return local_14;
    }
    if (allocation != piVar1) {
      piVar4 = allocation;
      do {
        if (*piVar4 == *piVar8) {
          piVar6 = piVar1;
          if (piVar4 != piVar1) goto LAB_007984fd;
          break;
        }
        piVar4 = piVar4 + 1;
      } while (piVar4 != piVar1);
    }
    if (piVar1 < local_8) {
      local_c = piVar1 + 1;
      piVar6 = local_c;
      if (piVar1 != (int *)0x0) {
        *piVar1 = *piVar8;
      }
    }
    else {
      FUN_00982420(&local_10,piVar1,piVar8);
      allocation = local_10;
      piVar6 = local_c;
    }
LAB_007984fd:
    piVar8 = piVar8 + 0x10;
    piVar1 = piVar6;
  } while( true );
}

