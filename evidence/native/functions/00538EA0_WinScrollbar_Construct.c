/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: actual vtables, state offsets/defaults and existing clock constructor then mode4
   configuration.
   Binds actual primary/value-interface vtables and observed scalar/state defaults, constructs the
   existing elapsed clock and selects mode 4. Defaults do not prove the complete authored-property
   loading path or calibration startup success.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 * __fastcall WinScrollbar_Construct(undefined4 *param_1)

{
  code *pcVar1;
  
  FUN_00516090(param_1);
  param_1[0x94] = &PTR_LAB_00fc0758;
  param_1[0x9c] = 1;
  param_1[0x9d] = 1;
  *param_1 = &PTR_thunk_FUN_007e4140_00fbfbc8;
  param_1[1] = &PTR_LAB_00fbfaa0;
  param_1[0x94] = &PTR_LAB_00fbfa38;
  param_1[0x95] = 0;
  param_1[0x96] = 0;
  param_1[0x97] = 0;
  param_1[0x98] = 0;
  param_1[0x99] = 0;
  param_1[0x9a] = 0x100;
  param_1[0x9b] = 0x10;
  param_1[0x9e] = 0xf;
  param_1[0x9f] = 8;
  param_1[0xa0] = 2;
  *(undefined1 *)(param_1 + 0xa1) = 0xff;
  *(undefined1 *)((int)param_1 + 0x285) = 0xff;
  param_1[0xa2] = 0;
  *(undefined1 *)(param_1 + 0xa3) = 0;
  param_1[0xa4] = 0;
  ElapsedClock_ConstructAndOptionallyStart(param_1 + 0xa6,0,'\0');
  ElapsedClock_SelectCounterScale(param_1 + 0xa6,4);
  if (*(char *)(param_1 + 0xa3) == '\0') {
    pcVar1 = *(code **)(param_1[1] + 0x74);
    *(undefined1 *)(param_1 + 0xa3) = 1;
    (*pcVar1)(8,1);
  }
  return param_1;
}

