/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163308 (TS3W.exe).
   ScriptCore.World::World_LotSetDisplayLevelImpl [assembly=ScriptCore token=0x0600075E; lotId:
   System.UInt64, level: System.Int32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC1.67 tomb/diving contract. Full uint64 lot lookup; missing world/lot no-op. Calls
   Lot_SetDisplayLevel(level,force=false,checkUpper=true,suppressRefresh=false). This changes
   current loaded lot display and object visibility, not a loaded world. */

void __cdecl World_LotSetDisplayLevelImpl(ulonglong lotGuid,int level)

{
  int *this;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,(uint)lotGuid,lotGuid._4_4_,(uint *)0x0);
    if (this != (int *)0x0) {
      Lot_SetDisplayLevel(this,level,false,true,false);
    }
  }
  return;
}

