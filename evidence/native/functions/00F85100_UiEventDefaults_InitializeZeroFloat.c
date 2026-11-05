/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note, original PC1.67 static. Complete static initializer; no incoming stack words and
   plain RET. XORPS XMM0,XMM0 writes IEEE float +0 to global Variant011D79F0 payload at +0x10;
   installs Variant vtable00FBA6F4, type tag13 at +0xA and flags0 at +8. Register teardown00F93210
   through00F7F381, then RET. Original CRT initializer slot00F973C4 points here. Actual ProcessEvent
   default payload branches copy this variant for unused float arguments, including Tick12 and
   shutdown4097. Zero is established by the instructions, not by assuming BSS remains zero. */

void __cdecl UiEventDefaults_InitializeZeroFloat(void)

{
  _DAT_011d79f0 = &PTR_FUN_00fba6f4;
  _DAT_011d7a00 = 0;
  _DAT_011d79fa = 0xd;
  _DAT_011d79f8 = 0;
  FUN_00f7f381((_onexit_t)&LAB_00f93210);
  return;
}

