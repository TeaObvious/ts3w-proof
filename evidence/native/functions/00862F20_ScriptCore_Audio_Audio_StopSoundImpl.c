/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01167788 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Audio::Audio_StopSoundImpl [assembly=ScriptCore token=0x060011DE; handle:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_Audio__Audio_StopSoundImpl(int param_1)

{
  undefined4 uVar1;
  
  uVar1 = Audio_SubmitHandleStopCommand(param_1);
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

