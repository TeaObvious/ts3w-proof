/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161078 (original PC 1.67 TS3W.exe).
   ScriptCore.DeviceConfig::DeviceConfig_SetProperty [assembly=ScriptCore token=0x06001008; key:
   System.String, value: System.Int32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_DeviceConfig__DeviceConfig_SetProperty(int param_1)

{
  int *piVar1;
  void *this;
  short *psVar2;
  short *psVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)FUN_0058bbd0();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((psVar2 != (short *)0x0) && (this != (void *)0x0)) {
    memset(&stack0xffffffbe,0,0x3e);
    psVar3 = (short *)FUN_004feb60(param_1,(short *)&stack0xffffffbc,10);
    FUN_0058cc30(this,L"Options",psVar2,psVar3);
  }
  return;
}

