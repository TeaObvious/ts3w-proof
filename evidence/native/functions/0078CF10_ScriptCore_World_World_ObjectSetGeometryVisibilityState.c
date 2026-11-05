/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Additional original instruction qualification: managed stringhandle0, null stringview and computedEAXhash0 each cause no state mutation. Empty nonnullUTF16 reaches7D0020->7CFEC0 count0 and returns811C9DC5, then95E890. Physical cdecl GUIDlow/high+managedhandle threewords/plainRETvoid. Fresh MCPget_code reports0ownedListinginstructions, so no owned-body or fresh Listing claim: retained112bytecanonicalwindow PEchecked, functionalCFG103bytes/42instructions through78CF76RET independentlyqualified, ninefollowingCCexcluded. Original DB not repaired/reanalyzed. */



/* Verified PC 1.67 registration table at 0x011635e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetGeometryVisibilityState [assembly=ScriptCore token=0x060007C1;
   objId: System.UInt64, geometryVisibilityState: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectSetGeometryVisibilityState
               (undefined4 param_1,undefined4 param_2,int param_3)

{
  void *pvVar1;
  int *piVar2;
  wint_t *pwVar3;
  int iVar4;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if ((((pvVar1 != (void *)0x0) &&
       (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1)),
       pvVar1 != (void *)0x0)) &&
      (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea2a8), pvVar1 != (void *)0x0)) &&
     (param_3 != 0)) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_3);
    if ((pwVar3 != (wint_t *)0x0) && (iVar4 = FUN_007d0020(pwVar3), iVar4 != 0)) {
      FUN_0095e890(pvVar1,iVar4);
    }
  }
  return;
}

