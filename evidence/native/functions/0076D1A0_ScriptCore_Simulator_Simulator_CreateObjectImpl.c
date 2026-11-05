/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161f80 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Simulator::Simulator_CreateObjectImpl [assembly=ScriptCore token=0x0600053C;
   instanceId: System.UInt64, groupId: System.UInt32, typeId: System.UInt32, data: System.Byte[];
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 native script object lifecycle boundary review (2026-10-17). Physical wrapper calls the
   global interface getter, virtual +17C, then lifecycle +4 with five32-bit argument words (64-bit
   instance,group,type,array). Original managed import returnsUInt64 and uses data marshal blob1D.
   Bounded PE global/bootstrap/constructor/vtable evidence resolves lifecycle target00D7B9E0; its
   complete bounded start-to-final-RET PE path selects OBJK00936990 or00C6EFC0->00C6E960 and has
   EDX:EAX ID or zero failure returns. The producer is absent as a stored function; no actual
   C/Listing or definition is implied. Current source retains original managed
   serialization/ScriptProxy constructor/Init/Dispose authority and existing Bridge
   adaptation/cleanup order. Stored body remains exactly one address byte with ZERO actual Listing
   instructions. Raw PE wrapper decoding is separate bounded evidence; no
   name/type/ABI/body/byte/instruction/flow or analysis change is proposed. */

void ScriptCore_Simulator__Simulator_CreateObjectImpl
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 4))(param_1,param_2,param_3,param_4,param_5);
  return;
}

