/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115ebd8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.AutomationUtils::Automation_TakeSnapShot [assembly=ScriptCore token=0x06000622; strid:
   System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.AutomationUtils::Automation_TakeSnapShot(int param_1)

{
  short sVar1;
  int *piVar2;
  short *psVar3;
  short *psVar4;
  undefined1 auStack_3e [2];
  undefined2 *puStack_3c;
  char *pcStack_38;
  undefined4 uStack_34;
  undefined1 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  if ((param_1 != 0) && (piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC(), piVar2 != (int *)0x0))
  {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))(param_1);
    sVar1 = *psVar3;
    pcStack_38 = "Scripting/Automation";
    puStack_3c = &DAT_011c8e56;
    psVar4 = psVar3;
    while (sVar1 != 0) {
      psVar4 = psVar4 + 1;
      sVar1 = *psVar4;
    }
    FUN_00408d60(auStack_3e + -6,psVar3,psVar3 + ((int)psVar4 - (int)psVar3 >> 1));
    piVar2 = (int *)FUN_009dff90();
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x14))(&DAT_011c8e54,1);
      puStack_3c = (undefined2 *)0x1;
      pcStack_38 = (char *)0x0;
      uStack_34 = 0;
      uStack_30 = 1;
      uStack_2c = 0;
      uStack_28 = 0;
      uStack_24 = 0;
      uStack_20 = 0;
      uStack_1c = 0;
      uStack_18 = 0;
      uStack_14 = 0;
      uStack_10 = 0;
      (**(code **)(*piVar2 + 0x34))(&puStack_3c);
    }
    if (2 < (int)((uint)(puStack_3c + -0x8e472a) & 0xfffffffe)) {
      Memory_FreeIfNonNull(&DAT_011c8e54);
    }
  }
  return;
}

