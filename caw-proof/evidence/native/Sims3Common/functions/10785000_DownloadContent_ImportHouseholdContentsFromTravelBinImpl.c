/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   DownloadContent_ImportHouseholdContentsFromTravelBinImpl. Export ordinal(s): 388. Entry VA:
   0x10785000. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600118A. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 DownloadContent_ImportHouseholdContentsFromTravelBinImpl(void)

{
  int iVar1;
  undefined8 uVar2;
  int local_1c;
  uint local_18 [6];
  
                    /* 0x785000  388  DownloadContent_ImportHouseholdContentsFromTravelBinImpl */
  iVar1 = FUN_1055b120();
  if (iVar1 == 0) {
    return 0;
  }
  local_1c = 0;
  FUN_10790b30(DAT_10c8de94,&local_1c);
  if (local_1c == 0) {
    return 0;
  }
  FUN_105ca890(local_18,local_1c,1);
  uVar2 = FUN_1009c8d0(local_18);
  FUN_105ca900((int)local_18);
  if (local_1c != 0) {
    (**(code **)(*(int *)(local_1c + 4) + 4))();
  }
  return uVar2;
}

