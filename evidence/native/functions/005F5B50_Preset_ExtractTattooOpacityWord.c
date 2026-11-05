/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_ExtractTattooOpacity at
   0x005a5830, bytes e91b030500. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3.
   
   Analyst PC1.67 tattoo property result contract. cdecl one managed-string word, RET. Host
   virtual+58 uses ECX host plus one stack handle, returns borrowed wide-string pointer EAX. Null
   pointer returns0. Otherwise constructs local preset context5BFAC0 and parses wide text5C0060
   (their detailed admission/error semantics unexpanded). Initializes outputDWORD0 and
   typeOutDWORD2; calls5BF470 with literal ColorAlphaMultiply, &typeOut, &output. Getter BOOL and
   resulting typeOut are NOT checked. After call MOV ESI,[ESP+4] at5F5BAD saves actual output DWORD
   across context destruction; MOV EAX,ESI returns it. It does NOT always return0. Typed output
   pointer/host ABI removes that old decompiler artifact. This is raw packed word extraction, no
   float alpha normalization proven. Getter/value failure may leave initialized0; full parse/virtual
   reader failure and tattoo consumers remain open. */

uint __cdecl Preset_ExtractTattooOpacityWord(void *managedPreset)

{
  int *piVar1;
  LPCWSTR pWVar2;
  uint uStack_68;
  uint auStack_64 [25];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(managedPreset);
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  DesignPreset_InitializeEmpty(auStack_64);
  FUN_005c0060(auStack_64,pWVar2);
  uStack_68 = 2;
                    /* Three stack args name,typeOut,wordOut; ECX context. output initialized0,
                       typeOut initialized2, both addresses passed. Function ignores
                       Boolean/typeOut. */
  PresetProperty_ReadWordByName(auStack_64,"ColorAlphaMultiply",&uStack_68,auStack_64 + -2);
                    /* Read ACTUAL out DWORD into ESI before destructor, then return via EAX
                       at5F5BBA; not literal zero. */
  FUN_005bfce0(auStack_64);
  return 0;
}

