/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011567b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_ExtractTattooOpacity [assembly=ScriptCore token=0x0600039D;
   pPreset: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 tattoo property result contract. Registered external identity preserved. Original
   body is one FIVE-byte E9 jump to5F5B50, not one byte; corrected function extent only, no bytes
   changed. cdecl one stackword, UInt32 result EAX. Ghidra expands the target body under this
   wrapper identity in its C view; the original wrapper is still only the five-byte jump. The host
   call-site ABI override must be retained in both decompilation contexts. Actual target contract
   and output buffer must be followed; a constant-zero decompiler result is incorrect. */

uint __cdecl ScriptCore_CASUtils__CASUtils_ExtractTattooOpacity(void *managedPreset)

{
  uint uVar1;
  int *arg0;
  LPCWSTR pWVar2;
  uint auStack_68 [26];
  
  arg0 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (**(code **)(*arg0 + 0x58))(arg0,managedPreset);
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  DesignPreset_InitializeEmpty(auStack_68 + 2);
  FUN_005c0060(auStack_68 + 2,pWVar2);
  auStack_68[0] = 0;
  auStack_68[1] = 2;
  PresetProperty_ReadWordByName(auStack_68 + 2,"ColorAlphaMultiply",auStack_68 + 1,auStack_68);
  uVar1 = auStack_68[0];
  FUN_005bfce0(auStack_68 + 2);
  return uVar1;
}

