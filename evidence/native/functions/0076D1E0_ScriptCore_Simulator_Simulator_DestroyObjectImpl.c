/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161f88 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Simulator::Simulator_DestroyObjectImpl [assembly=ScriptCore token=0x0600053D;
   objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 native script object lifecycle boundary review (2026-10-17). Physical wrapper calls
   global interface getter,virtual+17C,then lifecycle+C with the two words of the64-bit object ID.
   Bounded bootstrap/constructor/vtable evidence resolves00D70D50: native membership
   check,conditional00937E40 removal,then nonzero-ID main+10C bound to00D74880 marks/queues script
   destruction. The producer is absent as a stored function; its77-byte PE path is independent
   bounded evidence. This does not establish every downstream removal callback avoids managed
   Dispose inline. Current project effect-first/defer-created/resident order and original managed
   Dispose authority remain unchanged. Stored body remains exactly one address byte with ZERO actual
   Listing instructions. Raw PE wrapper decoding is separate bounded evidence; no
   name/type/ABI/body/byte/instruction/flow or analysis change is proposed. */

void ScriptCore_Simulator__Simulator_DestroyObjectImpl(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 0xc))(param_1,param_2);
  return;
}

