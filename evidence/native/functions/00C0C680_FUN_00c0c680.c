/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Read-only Ghidra export, 2026-10-12. Decompiled names and ABI are inferred;
   read the paired original-byte disassembly and guides/water/README.md.
   This internal helper is not a managed registration identity. */

void __fastcall FUN_00c0c680(int param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  if (*(char *)(param_1 + 8) == '\0') {
    *(undefined1 *)(param_1 + 8) = 1;
    FUN_00c09b50(param_1);
    FUN_00c0ac00(param_1);
    FUN_00c09a70(param_1);
    puVar1 = *(undefined4 **)(param_1 + 0x2cc);
    for (puVar2 = *(undefined4 **)(param_1 + 0x2c8); puVar2 != puVar1; puVar2 = puVar2 + 1) {
      FUN_00c0d950((void *)*puVar2);
    }
  }
  return;
}

