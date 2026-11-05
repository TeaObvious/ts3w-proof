/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011633c0 (TS3W.exe).
   ScriptCore.World::World_ChimneyCapObjectFromFireplaceObjectImpl [assembly=ScriptCore
   token=0x06000775; lotId: System.UInt64, fireplaceObjectId: System.UInt64; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 exact cdecl two UInt64 inputs, uint64 EDX:EAX return, plainRET. Resolves current world,
   lot GUID and nonnull lot+2CC manager. Missing any returns0. Success callsA75A70 then immediateRET
   at786D8A, retaining its uint64 cap result. Complete64byte body; original registered identity
   unchanged. */

ulonglong __cdecl
ScriptCore_World__World_ChimneyCapObjectFromFireplaceObjectImpl(ulonglong lotId,ulonglong objectId)

{
  int *piVar1;
  ulonglong uVar2;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,(uint)lotId,lotId._4_4_,(uint *)0x0);
    if ((piVar1 != (int *)0x0) && ((void *)piVar1[0xb3] != (void *)0x0)) {
      uVar2 = FireplaceGroups_FindCap((void *)piVar1[0xb3],objectId);
      return uVar2;
    }
  }
  return 0;
}

