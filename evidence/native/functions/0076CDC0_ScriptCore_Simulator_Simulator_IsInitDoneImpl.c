/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161ff8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Simulator::Simulator_IsInitDoneImpl [assembly=ScriptCore token=0x06000551; handle:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 native script object lifecycle boundary review (2026-10-17). Physical wrapper calls
   global interface getter,virtual+17C,then lifecycle+8 with two ID words. Bounded
   bootstrap/constructor/vtable evidence resolves00D73700. Its103-byte PE path returns AL=true for
   an active object; otherwise checks pending script state+20h and returns false only for a found
   entry whose state differs from2. Missing pending entries return true. Original bool return
   marshal blob03 isI1. The producer is absent as a stored function; no actual producer C/Listing or
   body definition is implied. Current created-lifetime/resident-pending/true-fallback policy
   remains unchanged. Stored body remains exactly one address byte with ZERO actual Listing
   instructions. Raw PE wrapper decoding is separate bounded evidence; no
   name/type/ABI/body/byte/instruction/flow or analysis change is proposed. */

void ScriptCore_Simulator__Simulator_IsInitDoneImpl(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 8))(param_1,param_2);
  return;
}

