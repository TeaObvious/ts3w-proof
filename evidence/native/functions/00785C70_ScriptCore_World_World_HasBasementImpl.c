/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163ae8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HasBasementImpl [assembly=ScriptCore token=0x0600085F; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 physical closure: cdecl FIVE DWORD inputs GUIDlow/high, tileX, tileZ, level; RET without
   purge, AL Boolean. Native body 86 bytes through 00785CC5, excluding following CC padding. Loads
   LOW BYTE of each coordinate/level into compact tile4, mask0F, then calls
   LotBasement_TestAnyRequestedPart. Thus 32-bit coordinates truncate modulo256 before the callee
   sign-extends them and checks live lot bounds. Missing world or lot returns false. This wrapper
   does not use an in-memory managed LotLocation struct pointer. */

bool __cdecl
ScriptCore_World__World_HasBasementImpl
          (uint lotGuidLow,uint lotGuidHigh,int tileX,int tileZ,int level)

{
  bool bVar1;
  int *this;
  undefined3 uStack_4;
  undefined1 uStack_1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,lotGuidLow,lotGuidHigh,(uint *)0x0);
    if (this != (int *)0x0) {
      _uStack_4 = CONCAT13(0xf,CONCAT12((undefined1)level,CONCAT11((undefined1)tileZ,(char)tileX)));
      bVar1 = LotBasement_TestAnyRequestedPart(this,(char *)&uStack_4);
      return bVar1;
    }
  }
  return false;
}

