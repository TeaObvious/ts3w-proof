/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x0076d814) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01161fb8 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_LoadNthXmlAsDocument [assembly=ScriptCore token=0x06000547;
   index: System.UInt32, instanceId: System.UInt64, groupId: System.UInt32, typeId: System.UInt32;
   return=System.Xml.XmlDocument]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.Simulator::Simulator_LoadNthXmlAsDocument
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 *******param_5)

{
  undefined4 uVar1;
  int *piVar2;
  int *piVar3;
  int *unaff_ESI;
  
  uVar1 = FUN_0076d5c0(param_1,param_2,param_3,param_4,param_5);
  if ((char)uVar1 != '\0') {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar3 = (int *)(**(code **)(_DAT_00000000 + 0x18))();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 4))();
      uVar1 = (**(code **)(*piVar2 + 0xb8))(piVar3);
      (**(code **)(*piVar3 + 0x18))();
      (**(code **)(*piVar3 + 8))();
      if (unaff_ESI != (int *)0x0) {
        (**(code **)(*unaff_ESI + 8))();
      }
      return uVar1;
    }
  }
  return 0;
}

