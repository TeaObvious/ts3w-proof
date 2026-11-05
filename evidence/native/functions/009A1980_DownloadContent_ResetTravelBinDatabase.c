/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: this in ECX, memory database at+88. Ifnon-null, resourcehost
   vtable+34(0,database,0) detaches it, database+1c and+8 are invoked; clears+88 and tailreleases
   secondary interface atdatabase+4 vtable+4. No original bytes modified. */

void __thiscall DownloadContent_ResetTravelBinDatabase(void *this)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  
  piVar1 = *(int **)((int)this + 0x88);
  if (piVar1 != (int *)0x0) {
    piVar3 = (int *)FUN_004afe80();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x34))(0,piVar1,0);
      (**(code **)(*piVar1 + 0x1c))();
      (**(code **)(*piVar1 + 8))();
    }
    iVar2 = *(int *)((int)this + 0x88);
    if (iVar2 != 0) {
      *(undefined4 *)((int)this + 0x88) = 0;
                    /* WARNING: Could not recover jumptable at 0x009a19d5. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*(int *)(iVar2 + 4) + 4))();
      return;
    }
  }
  return;
}

