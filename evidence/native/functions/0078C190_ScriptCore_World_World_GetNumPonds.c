/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163530 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetNumPonds [assembly=ScriptCore token=0x060007AA; lotId: System.UInt64;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Registered pond
   count. Stored metadata one address byte, ZERO actual Listing. Separately authenticated bounded
   original PE shows world-global absent0; world path count getter, lot lookup manager+2C8
   record-span / 0x60 (96 bytes per record). Bounded raw instructions are not owned Listing or
   repaired body. Original managed LotPond constructor/startup/ID/corner/BuildBuy lifetime remains
   its authority. All IDs, physical ABI, prototypes/types/body/bytes/Listing/flow/analysis remain
   unchanged; current resource/cache policy is preserved. */

int ScriptCore_World__World_GetNumPonds(int param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  
  if (DAT_011edbc4 != (void *)0x0) {
    if (param_1 == 0 && param_2 == 0) {
      iVar1 = FUN_00c60950((int)DAT_011edbc4);
      return iVar1;
    }
    piVar2 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if ((piVar2 != (int *)0x0) && (iVar1 = piVar2[0xb2], iVar1 != 0)) {
      return (*(int *)(iVar1 + 0x10) - *(int *)(iVar1 + 0xc)) / 0x60;
    }
  }
  return 0;
}

