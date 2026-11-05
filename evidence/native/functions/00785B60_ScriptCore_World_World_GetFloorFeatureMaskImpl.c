/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163ab0 (TS3W.exe).
   ScriptCore.World::World_GetFloorFeatureMaskImpl [assembly=ScriptCore token=0x06000858; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation, featureFlags:
   Sims3.SimIFace.FloorFeatureFlags; return=System.UInt16]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 physical cdecl SIX DWORD slots: lot GUID low/high, tileX, tileZ, level, requested flags.
   PlainRET/AX ushort. Coordinates truncate to bytes, requested flags forwarded but not read by
   AB6750. Missing world/lot returnsAX0; present lot with missing layers, out-of-bounds cell or no
   puddle returnsFFFF. Complete79byte body through785BAE excluding CC padding. */

ushort __cdecl
ScriptCore_World__World_GetFloorFeatureMaskImpl
          (uint lotGuidLow,uint lotGuidHigh,int tileX,int tileZ,int level,uint unusedRequestedFlags)

{
  ushort uVar1;
  int *this;
  char cStack_4;
  undefined1 uStack_3;
  undefined1 uStack_2;
  undefined1 uStack_1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,lotGuidLow,lotGuidHigh,(uint *)0x0);
    if (this != (int *)0x0) {
      _cStack_4 = CONCAT12((undefined1)level,CONCAT11((undefined1)tileZ,(undefined1)tileX));
      uVar1 = LotFloorFeatures_ReadPuddleMask(this,&cStack_4,unusedRequestedFlags);
      return uVar1;
    }
  }
  return 0;
}

