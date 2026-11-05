/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physicalthiscall signed3byteXYlevel pointer,quartermaskBYTE,checkFlagsBYTE RET0C; inserts
   requireAll1 andforwardsA8D300; ALresult is preserved, priorvoidmetadatawaswrong.
   SelectedactualcallerCEE1E0 passes mask0F/checkFlags1. */

bool __thiscall
FloorManager_AllPatternParts(void *this,undefined *signedTile3,byte quarterMask,bool checkFlags)

{
  bool bVar1;
  
  bVar1 = FloorManager_TestPatternParts(this,signedTile3,quarterMask,true,checkFlags);
  return bVar1;
}

