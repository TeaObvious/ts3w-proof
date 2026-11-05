/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163aa0 (TS3W.exe).
   ScriptCore.World::World_HasFloorFeaturesImpl [assembly=ScriptCore token=0x06000859; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation, featureFlags:
   Sims3.SimIFace.FloorFeatureFlags, mask: System.UInt16; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 physical cdecl SEVEN DWORD slots: lot GUID low/high, tileX, tileZ, level, flags, mask.
   PlainRET/AL Boolean. Coordinates truncate to bytes before AB6600 signed bounds; flags remain full
   DWORD, not truncated. Missing world/lot returns false. Complete83byte body through785AF2
   excluding CC padding. */

bool __cdecl
ScriptCore_World__World_HasFloorFeaturesImpl
          (uint lotGuidLow,uint lotGuidHigh,int tileX,int tileZ,int level,uint requestedFlags,
          uint mask)

{
  bool bVar1;
  int *this;
  char cStack_4;
  undefined1 uStack_3;
  undefined1 uStack_2;
  undefined1 uStack_1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,lotGuidLow,lotGuidHigh,(uint *)0x0);
    if (this != (int *)0x0) {
      _cStack_4 = CONCAT12((undefined1)level,CONCAT11((undefined1)tileZ,(undefined1)tileX));
      bVar1 = LotFloorFeatures_TestAll(this,&cStack_4,requestedFlags,(ushort)mask);
      return bVar1;
    }
  }
  return false;
}

