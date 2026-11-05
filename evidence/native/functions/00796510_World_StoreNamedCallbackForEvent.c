/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified retail PC 1.67 World callback-name store. Called from
   ScriptCore.World::World_RegisterCallbackMethodImpl at 0x00796550 after eventId <= 0x4B. Raw stack
   accounting: arg1 event ID; arg2 converted type name; arg3 converted method name. Writes type at
   0x011D7A58 + eventId*0x24 and method at +0x10 using 0x00590E60. See guides/callbacks/native-witnesses.json and guides/callbacks/event-map.json. Static evidence; no runtime event observed.
    */

void __cdecl World_StoreNamedCallbackForEvent(int param_1)

{
  FUN_00590e60((undefined4 *)(&DAT_011d7a58 + param_1 * 0x24),&DAT_01000a0c);
  FUN_00590e60((undefined4 *)(&DAT_011d7a68 + param_1 * 0x24),&DAT_01000a0c);
  return;
}
