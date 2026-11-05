/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 World_GetRoomIdImpl; cdecl uint64 lotID,12-byte managed LotLocation, int32
   roomDefinition; signed16 resultAX. Missing world/lot/roomstructure returns AXffff(-1). CVTSI2SS
   converts signed32 mX/mZ to local float coordinates; MOVSX sign-extends mLevel byte. Existing
   mRoom field is ignored. Selects lot+298 roomquery owner and calls00b482c0 with
   finalinvalid-policy1. Original GlobalFunctions.IsInside tests this LightBlocking result>0, while
   IsOutside tests==0; invalid-1 satisfies neither. Complete original body ends78565b. */

short __cdecl
ScriptCore_World__World_GetRoomIdImpl
          (ulonglong lotId,VisitorManagedLotLocation location,int roomDefinition)

{
  short sVar1;
  int *piVar2;
  float local_c;
  float local_8;
  int local_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar2 = FUN_00c62810(DAT_011edbc4,(int)lotId,lotId._4_4_,(int *)0x0);
    if ((piVar2 != (int *)0x0) && ((void *)piVar2[0xa6] != (void *)0x0)) {
      local_4 = (int)location.mLevel;
      local_c = (float)location.mX;
      local_8 = (float)location.mZ;
      sVar1 = LotRoom_ResolveForLocalLocation((void *)piVar2[0xa6],&local_c,roomDefinition,1);
      return sVar1;
    }
  }
  return -1;
}

