/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163cd0 (TS3W.exe).
   ScriptCore.World::World_LotSetDetailPriority [assembly=ScriptCore token=0x06000895; lotId:
   System.UInt64, priority: Sims3.SimIFace.LotDetailPriority; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 map/lot detail contract. Resolves full lot GUID; missing manager/lot is a no-op.
   Copies the entire priority Int32 to lot+0xc4 without range validation. Consumers compare signed
   priorities numerically, despite the managed enum Flags attribute. */

void __cdecl ScriptCore_World__World_LotSetDetailPriority(ulonglong lotGuid,int priority)

{
  int *this;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,(uint)lotGuid,lotGuid._4_4_,(uint *)0x0);
    if (this != (int *)0x0) {
      Lot_SetDetailPriority(this,priority);
    }
  }
  return;
}

