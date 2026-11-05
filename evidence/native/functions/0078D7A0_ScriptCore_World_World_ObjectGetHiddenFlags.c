/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163680 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectGetHiddenFlags [assembly=ScriptCore token=0x060007D4; objId:
   System.UInt64; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 COMPLETE105-byte cdecl TWO DWORD stackslots GUIDlow+4/high+8, plain RET onboth exits,
   UInt32EAX result. InitializesEDI0; missing globalregistry or object returns0. Object resolution
   pushes both rawGUIDwords; VisualState resolved by global11EA2A8. Present VisualState whose+8
   LOWBYTEbit0 isclear contributes resultbit0=1; missingVisual contributes0. Footprint resolved
   independently by global11E9FA8; present component with944980AL==0 contributes resultbit1=2,
   absentFootprint contributes0. Only resultbits0/1 canbe set; unknown setterinputbits,
   inheritedvisibility/renderer masks and router registration are NOT returned. Nativegetter
   performs no componentmutation. Public managed identity UInt64->UInt32 preserved;
   physicaltwoUInt32slot prototype closesstack use rather than oldseeded noargstdcall. Actual C and
   originalListing establish raw64bit lookup even if other helpermetadata remains incomplete. */

uint __cdecl ScriptCore.World::World_ObjectGetHiddenFlags(uint objectIdLow,uint objectIdHigh)

{
  void *pvVar1;
  void *pvVar2;
  undefined *component;
  uint uVar3;
  uint uVar4;
  
  uVar4 = 0;
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(objectIdHigh,objectIdLow));
    if (pvVar1 != (void *)0x0) {
      pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011ea2a8);
      if ((pvVar2 != (void *)0x0) && ((*(byte *)((int)pvVar2 + 8) & 1) == 0)) {
        uVar4 = 1;
      }
      component = Object_GetComponentByMask(pvVar1,DAT_011e9fa8);
      if (component != (undefined *)0x0) {
        uVar3 = FootprintComponent_IsRegisteredBit(component);
        if ((char)uVar3 == '\0') {
          uVar4 = uVar4 | 2;
        }
      }
    }
    return uVar4;
  }
  return 0;
}

