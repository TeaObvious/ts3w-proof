/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Additional original instruction qualification: managed stringhandle0, null stringview and computedEAXhash0 each cause no state mutation. Empty nonnullUTF16 reaches7D0020->7CFEC0 count0 and returns811C9DC5, then95E890. Physical cdecl GUIDlow/high+managedhandle threewords/plainRETvoid. Fresh MCPget_code reports0ownedListinginstructions, so no owned-body or fresh Listing claim: retained112bytecanonicalwindow PEchecked, functionalCFG103bytes/42instructions through78CF76RET independentlyqualified, ninefollowingCCexcluded. Original DB not repaired/reanalyzed. */

/* Verified PC 1.67 registration table at 0x011635e8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectSetGeometryVisibilityState [assembly=ScriptCore token=0x060007C1;
   objId: System.UInt64, geometryVisibilityState: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectSetGeometryVisibilityState
               (undefined4 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  void *pvVar2;
  int *piVar3;
  wint_t *pwVar4;
  
  iVar1 = FUN_00937570();
  if ((((iVar1 != 0) && (pvVar2 = (void *)FUN_00937f80(iVar1), pvVar2 != (void *)0x0)) &&
      (pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011ea2a8), pvVar2 != (void *)0x0)) && (param_3 != 0)
     ) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    pwVar4 = (wint_t *)(**(code **)(*piVar3 + 0x58))(param_3);
    if ((pwVar4 != (wint_t *)0x0) && (iVar1 = FUN_007d0020(pwVar4), iVar1 != 0)) {
      FUN_0095e890(pvVar2,iVar1);
    }
  }
  return;
}

