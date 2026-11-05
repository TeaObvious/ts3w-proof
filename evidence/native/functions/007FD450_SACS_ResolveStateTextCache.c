/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* PC 1.67 instruction-level observation: Lazily resolves/caches state text at state +0x2C for the
   bridge-release path. No source/destination actor interrupt handoff occurs here. Local source:
   007FD450_SACS_ResolveStateTextCache.asm. original PC 1.67 TS3W.exe. */



/* PC 1.67 instruction-level observation: Lazily resolves/caches state text at state +0x2C for the
   bridge-release path. No source/destination actor interrupt handoff occurs here. Local source: the
   canonical ASM/C pair for this function. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

undefined4 __fastcall SACS_ResolveStateTextCache(int param_1)

{
  short *psVar1;
  
  if ((*(int *)(param_1 + 0x2c) == 0) && (*(int *)(param_1 + 0x34) != 0)) {
    psVar1 = SacsHash_ResolveAndWidenName();
    *(short **)(param_1 + 0x2c) = psVar1;
  }
  return *(undefined4 *)(param_1 + 0x2c);
}

