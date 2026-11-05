/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 World_IsPositionOutsideImpl; cdecl Vector3 by value12bytes and BooleanAL result.
   Passes address of original stack vector and mode0 to00b02d50; forwards AL unchanged. This is
   GameObject.IsOutside's provider, used to choose outdoor hosts in Lot.CheckForHostWhenVisiting. It
   is a coverage/upper-room query, not merely the inverse of GlobalFunctions.IsInside's
   current-level LightBlocking room>0. */

bool __cdecl ScriptCore_World__World_IsPositionOutsideImpl(VisitorManagedVector3 worldPosition)

{
  bool bVar1;
  
  bVar1 = WorldPosition_TestOutside(&worldPosition.x,'\0');
  return bVar1;
}

