/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67: actual vtables, scalar defaults/pressed/hover bytes and geometry dirty
   initialization.
   Binds actual primary/value-interface vtables and observed scalar defaults, pressed/hover bytes
   and geometry-dirty state. Defaults do not prove the complete authored-property loading path.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 * __fastcall WinSlider_Construct(undefined4 *param_1)

{
  Window_InitializeNativeFields(param_1);
  param_1[0x94] = &PTR_LAB_00fc0038;
  param_1[0x95] = 0;
  param_1[0x96] = 0;
  *param_1 = &PTR_thunk_FUN_007e4140_00fbff88;
  param_1[1] = &PTR_LAB_00fbfe60;
  param_1[0x94] = &PTR_LAB_00fbfe20;
  param_1[0x97] = 0x100;
  param_1[0x98] = 2;
  *(undefined1 *)(param_1 + 0x99) = 0xff;
  *(undefined1 *)((int)param_1 + 0x265) = 0xff;
  *(undefined1 *)((int)param_1 + 0x266) = 1;
  FUN_00514c30(param_1 + 1,8,1);
  return param_1;
}

