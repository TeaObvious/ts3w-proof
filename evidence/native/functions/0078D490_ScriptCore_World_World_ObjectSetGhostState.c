/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163630 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetGhostState [assembly=ScriptCore token=0x060007CA; objId:
   System.UInt64, ghostType: System.UInt32, ageGenderSpeciesFlags: System.UInt32;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 recovered COMPLETE66-byte body ending plain RET78D4D1; only first5-byte CALL lacked
   Listing, remaining23 instructions already defined. All3internalJZ exits target
   thatRET;14CCpadding and nextfunction78D4E0 untouched. Physical cdecl FOURDWORD stackslots: UInt64
   objectId low/high at+4/+8, UInt32 rawghostType+C and ageGenderSpeciesFlags+10; caller cleanup,
   not old seededstdcall. Resolves current object registry937570 then object by both id words937F80,
   then VisualState component through934260/global11EA2A8; null at any stage returnsvoid.
   Calls95E0A0 with both unchanged words. Original managed import identity
   ScriptCore.World::World_ObjectSetGhostState remains; fourword prototype describes physical slots,
   not a managed API change. Shared resolver helper prototypes are not repaired here;
   actualPUSHes/Listing establish 64-bitid even when genuineC omits an argument due to those
   existing helper types. */

void __cdecl
ScriptCore_World__World_ObjectSetGhostState
          (uint objectIdLow,uint objectIdHigh,uint ghostType,uint ageGenderSpeciesFlags)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(objectIdHigh,objectIdLow));
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea2a8);
      if (pvVar1 != (void *)0x0) {
        VisualState_SetGhostRequestAndNotify(pvVar1,ghostType,ageGenderSpeciesFlags);
      }
    }
  }
  return;
}

