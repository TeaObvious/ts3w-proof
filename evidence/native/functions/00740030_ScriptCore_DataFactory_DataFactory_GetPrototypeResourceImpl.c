/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table first entry at 0x0115EDF0 (pair 0x00740030, 0x010015D4; seven
   rows then null/null sentinel at 0x0115EE28).
   ScriptCore.DataFactory::DataFactory_GetPrototypeResourceImpl; pristine ScriptCore token
   0x060005D8: (instanceId UInt64, groupId UInt32, typeId UInt32) -> IntPtr. Native calling
   convention and ownership require instruction-level verification. original PC 1.67 TS3W.exe. */

void __cdecl
ScriptCore_DataFactory__DataFactory_GetPrototypeResourceImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 0x34))(param_1,param_2,param_3,param_4);
  return;
}

