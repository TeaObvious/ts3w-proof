/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 instruction-level observation: Lazily resolves/caches state text at state +0x2C for the
   bridge-release path. No source/destination actor interrupt handoff occurs here. Local source:
   007FD450_SACS_ResolveStateTextCache.asm. original PC 1.67 TS3W.exe. */

undefined4 __fastcall SACS_ResolveStateTextCache(int param_1)

{
  short *psVar1;
  
  if ((*(int *)(param_1 + 0x2c) == 0) && (*(int *)(param_1 + 0x34) != 0)) {
    psVar1 = FUN_007fd280();
    *(short **)(param_1 + 0x2c) = psVar1;
  }
  return *(undefined4 *)(param_1 + 0x2c);
}

