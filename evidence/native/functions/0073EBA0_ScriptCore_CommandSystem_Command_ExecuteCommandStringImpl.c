/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115edc0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CommandSystem::Command_ExecuteCommandStringImpl [assembly=ScriptCore token=0x0600011B;
   cmdStr: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_CommandSystem__Command_ExecuteCommandStringImpl(int param_1)

{
  int *piVar1;
  short *psVar2;
  void *this;
  uint uVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (param_1 != 0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    piVar1 = (int *)0x0;
    if (psVar2 != (short *)0x0) {
      this = (void *)FUN_00589aa0();
      piVar1 = (int *)0x0;
      if (this != (void *)0x0) {
        uVar3 = ConsoleCommandManager_ExecuteText(this,psVar2);
        return uVar3;
      }
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

