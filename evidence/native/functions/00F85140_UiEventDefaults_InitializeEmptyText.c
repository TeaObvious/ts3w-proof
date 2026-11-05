/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note, original PC1.67 static. Complete static initializer, no incoming stack words/plain
   RET. Actual UTF16 literal011C8E54 is a zero code unit. Construct a span start==end at that
   address, capacity end +2; install Variant vtable and zero initial flags/tag, then call004F59C0
   with string tag19, element tag9, span, slot size0x10 and copy flag1. Real post-construction span
   cleanup compares masked byte difference to2; register teardown00F931F0 through00F7F381.
   ProcessEvent uses global Variant011D7A10 for default empty event text. No managed text policy is
   inferred from this native constant producer. */

void __cdecl UiEventDefaults_InitializeEmptyText(void)

{
  undefined1 *local_10;
  undefined1 *local_c;
  undefined2 *local_8;
  char *local_4;
  
  local_10 = &DAT_011c8e54;
  local_c = &DAT_011c8e54;
  local_4 = "Scripting/UIHost/String";
  local_8 = &DAT_011c8e56;
  _DAT_011d7a10 = &PTR_FUN_00fba6f4;
  _DAT_011d7a18 = 0;
  _DAT_011d7a1a = 0;
  FUN_004f59c0(&DAT_011d7a10,0x13,9,&local_10,0x10,1);
  if ((2 < (int)((int)local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(local_10);
  }
  FUN_00f7f381((_onexit_t)&LAB_00f931f0);
  return;
}

