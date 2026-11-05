/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_IsCardSupported. Export ordinal(s):
   347. Entry VA: 0x10532900. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EE9. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 DeviceConfig_IsCardSupported(void)

{
  DWORD DVar1;
  int iVar2;
  DWORD DVar3;
  
                    /* 0x532900  347  DeviceConfig_IsCardSupported */
  iVar2 = FUN_1038c390();
  if (iVar2 != 0) {
    DVar1 = *(DWORD *)(iVar2 + 0x2ec);
    DVar3 = GetCurrentProcessId();
    if (DVar1 != DVar3) {
      Animation_SetMissingAnimationCallback();
    }
    return *(undefined1 *)(iVar2 + 0x31);
  }
  return 0;
}

