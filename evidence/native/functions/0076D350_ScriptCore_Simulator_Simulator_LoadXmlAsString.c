/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x0076d3df) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01161fa0 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_LoadXmlAsString [assembly=ScriptCore token=0x06000544;
   instanceId: System.UInt64, groupId: System.UInt32, typeId: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.Simulator::Simulator_LoadXmlAsString
          (uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  int *unaff_ESI;
  
  bVar1 = FUN_0076cc20(param_1,param_2,param_3,param_4);
  if (bVar1) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar3 = (int *)(**(code **)(_DAT_00000000 + 0x18))();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 4))();
      uVar4 = (**(code **)(*piVar2 + 0xb4))(piVar3);
      (**(code **)(*piVar3 + 0x18))();
      (**(code **)(*piVar3 + 8))();
      if (unaff_ESI != (int *)0x0) {
        (**(code **)(*unaff_ESI + 8))();
      }
      return uVar4;
    }
  }
  return 0;
}

