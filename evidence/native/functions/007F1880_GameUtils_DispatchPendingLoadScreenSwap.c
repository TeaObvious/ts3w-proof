/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 complete existing body 0x007F1880..0x007F18D7: 88 original bytes / 25 instructions;
   plain RET, stored inferred no-argument stdcall/undefined projection preserved. Reads pending
   global 0x011D9C4C; zero skips. Calls 0x00769390; null script interface also skips WITHOUT
   clearing
   pending. For a nonnull interface, rereads pending, pushes two literal zero words, that current
   callback and the address of a 0x20-byte local area, sets ECX = interface and calls virtual
   +0x134.
   After return, tests local flags byte +0x8 with mask 0x04, installs local vtable 0x00FBA6F4 and
   conditionally calls 0x004F5760 with that local address and 0. ONLY after this call path returns
   does 0x007F18CA write 0 to the pending global. Thus clearing is AFTER dispatch/conditional
   helper,
   not before; a newly posted global during reentry can be overwritten by this final clear.
   Concrete virtual execution/exception/result-helper effects, scheduler cadence/thread and
   eventual callback progress remain unproved by this finite pair. No refcount, reset-at-startup
   or strong native callback-lifetime guarantee follows from the global word alone. */

void GameUtils_DispatchPendingLoadScreenSwap(void)

{
  int *piVar1;
  undefined **ppuStack_30;
  int iStack_2c;
  uint uStack_28;
  undefined4 uStack_24;
  undefined *local_20 [8];
  
  if (DAT_011d9c4c != 0) {
    uStack_24 = 0x7f1891;
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    if (piVar1 != (int *)0x0) {
      uStack_24 = 0;
      uStack_28 = 0;
      iStack_2c = DAT_011d9c4c;
      ppuStack_30 = local_20;
      (**(code **)(*piVar1 + 0x134))();
      ppuStack_30 = &PTR_FUN_00fba6f4;
      if ((uStack_28 & 4) != 0) {
        FUN_004f5760(&ppuStack_30,'\0');
      }
      DAT_011d9c4c = 0;
    }
  }
  return;
}

