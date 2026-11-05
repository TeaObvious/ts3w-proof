/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011633c8 (TS3W.exe).
   ScriptCore.World::World_FireplaceObjectFromChimneyObjectImpl [assembly=ScriptCore
   token=0x06000776; lotId: System.UInt64, chimneyObjectId: System.UInt64; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 exact cdecl two UInt64 inputs/plainRET. VERIFIED IMPORTANT: successful lot/manager branch
   callsA75B00 at786DC5, then FALLS THROUGH XOR EAX,EAX; XOR EDX,EDX; RET at786DCA..DCE. This
   external hook ALWAYS RETURNS ZERO even if the internal manager found a mantle. Do not change it
   to return the useful helper value merely because the hook name suggests it. Original bytes
   unchanged; this is static shipped behavior, not a runtime observation. */

ulonglong __cdecl
ScriptCore_World__World_FireplaceObjectFromChimneyObjectImpl(ulonglong lotId,ulonglong objectId)

{
  int *piVar1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,(uint)lotId,lotId._4_4_,(uint *)0x0);
    if ((piVar1 != (int *)0x0) && ((void *)piVar1[0xb3] != (void *)0x0)) {
      FireplaceGroups_FindMantle((void *)piVar1[0xb3],objectId);
    }
  }
  return 0;
}

