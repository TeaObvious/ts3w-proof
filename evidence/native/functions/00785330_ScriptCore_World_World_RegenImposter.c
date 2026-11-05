/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163490 (TS3W.exe).
   ScriptCore.World::World_RegenImposter [assembly=ScriptCore token=0x06000796; lotId:
   System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 map/lot detail contract. Resolves the full GUID via00c62810 and calls00ac27f0 if
   found, then sets imposter mode+0xd8 to1 even if lookup failed. Does not change map-active
   flag+0xda. Detailed imposter regeneration downstream is outside this review. */

void __cdecl ScriptCore_World__World_RegenImposter(ulonglong lotGuid)

{
  void *this;
  int *piVar1;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = FUN_00c62810(DAT_011edbc4,(int)lotGuid,lotGuid._4_4_,(int *)0x0);
    if (piVar1 != (int *)0x0) {
      FUN_00ac27f0(piVar1);
    }
    WorldManager_SetImposterMode(this,'\x01');
  }
  return;
}

