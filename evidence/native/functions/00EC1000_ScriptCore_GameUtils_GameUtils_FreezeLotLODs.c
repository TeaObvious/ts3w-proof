/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011972b8 (TS3W.exe).
   ScriptCore.GameUtils::GameUtils_FreezeLotLODs [assembly=ScriptCore token=0x06000269; enable:
   System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 map/lot detail contract. Null WorldManager global returns without action;
   otherwise writes manager+0xd9. Its consumer updates the remembered camera vector before returning
   early, so freezing does not freeze that vector or all world/terrain updates. */

void __cdecl ScriptCore_GameUtils__GameUtils_FreezeLotLODs(uchar enable)

{
  if (DAT_011edbc4 != (void *)0x0) {
    WorldManager_SetLotLODFrozen(DAT_011edbc4,enable);
  }
  return;
}

