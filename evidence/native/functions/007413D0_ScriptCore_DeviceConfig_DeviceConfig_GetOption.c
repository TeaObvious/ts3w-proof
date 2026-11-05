/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161058 (original PC 1.67 TS3W.exe).
   ScriptCore.DeviceConfig::DeviceConfig_GetOption [assembly=ScriptCore token=0x06001004; key:
   System.String, value: System.UInt32&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.DeviceConfig::DeviceConfig_GetOption(undefined4 *param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  int unaff_EDI;
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 != (LPCWSTR)0x0) {
    iVar3 = FUN_0058e800();
    puVar4 = FUN_004f3cc0(&stack0xffffffec,pWVar2,0xffffffff,(char *)0x0);
    uVar5 = FUN_0058f160((void *)(iVar3 + 4),(byte *)*puVar4,param_1);
    if ((1 < iStack_c - unaff_EDI) && (unaff_EDI != 0)) {
      unaff_EDI = FUN_004e44e0(unaff_EDI);
    }
    return CONCAT31((int3)((uint)unaff_EDI >> 8),(char)uVar5);
  }
  return 0;
}

