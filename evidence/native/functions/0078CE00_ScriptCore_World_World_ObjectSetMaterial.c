/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011635e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetMaterial [assembly=ScriptCore token=0x060007C0; objId:
   System.UInt64, materialSetName: System.String, transitionTime: System.Single,
   bTransitionToOverlay: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 original contract. Registered World_ObjectSetMaterial entry. Physical cdecl
   fullUInt64 GUID, managed string handle, binary32 transitionTime and low-byte overlay flag; caller
   cleans20bytes. Missingregistry/object/Model returns silently. Null/unresolved string =>hash0;
   otherwise original casefold hash7D0020. VisualState receives opacity1 whenoverlaytrue else0 plus
   time/flag event, before material equality test. Unequalhash invokes948800(hash, overlay?0:1,
   force0). No geometry command or key change. Complete258-byte owned body ends78CF01. */

void __cdecl
ScriptCore_World__World_ObjectSetMaterial
          (ulonglong objectGuid,void *materialSetNameHandle,float transitionTime,
          uchar transitionToOverlay)

{
  void *pvVar1;
  void *this;
  int *piVar2;
  wint_t *pwVar3;
  uint uVar4;
  uint materialHash;
  float fVar5;
  float local_8;
  undefined1 local_4;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if ((pvVar1 != (void *)0x0) &&
     (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,objectGuid), pvVar1 != (void *)0x0)) {
    this = Object_GetComponentByMask(pvVar1,DAT_011e9fc4);
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea2a8);
    if (this != (void *)0x0) {
      materialHash = 0;
      if (materialSetNameHandle != (void *)0x0) {
        piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
        pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))(materialSetNameHandle);
        if (pwVar3 == (wint_t *)0x0) {
          materialHash = 0;
        }
        else {
          materialHash = FUN_007d0020(pwVar3);
        }
      }
      if (pvVar1 != (void *)0x0) {
        local_4 = transitionToOverlay != '\0';
        local_8 = transitionTime;
        if (transitionToOverlay == '\0') {
          fVar5 = 0.0;
        }
        else {
          fVar5 = FLOAT_00f998f8;
        }
        FUN_0095e030(pvVar1,fVar5,(int)&local_8);
      }
      uVar4 = ModelComponent_GetMaterialHash(this);
      if (uVar4 != materialHash) {
        if (transitionToOverlay != '\0') {
          ModelComponent_SetMaterialHash(this,materialHash,'\0','\0');
          return;
        }
        ModelComponent_SetMaterialHash(this,materialHash,'\x01','\0');
      }
    }
  }
  return;
}

