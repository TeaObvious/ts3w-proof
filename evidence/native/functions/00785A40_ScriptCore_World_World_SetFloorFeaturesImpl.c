/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163a98 (TS3W.exe).
   ScriptCore.World::World_SetFloorFeaturesImpl [assembly=ScriptCore token=0x06000857; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation, featureFlags:
   Sims3.SimIFace.FloorFeatureFlags, bSet: System.Boolean, mask: System.UInt16; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 physical cdecl EIGHT DWORD slots: lot GUID low/high, tileX, tileZ, level, flags, set,
   mask. PlainRET/void. Reads only LOW BYTE of coordinates, then ABB5F0 sign-extends and validates
   them. Missing world/lot is no-op. Managed LotLocation does not become a pointer argument to this
   wrapper. Complete84byte flow through785A93 excluding CC padding. */

void __cdecl
ScriptCore_World__World_SetFloorFeaturesImpl
          (uint lotGuidLow,uint lotGuidHigh,int tileX,int tileZ,int level,uint flags,uint set,
          uint mask)

{
  int *this;
  char cStack_4;
  undefined1 uStack_3;
  undefined1 uStack_2;
  undefined1 uStack_1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,lotGuidLow,lotGuidHigh,(uint *)0x0);
    if (this != (int *)0x0) {
      _cStack_4 = CONCAT12((undefined1)level,CONCAT11((undefined1)tileZ,(undefined1)tileX));
      LotFloorFeatures_SetTile(this,&cStack_4,(byte)flags,(byte)set,(ushort)mask);
    }
  }
  return;
}

