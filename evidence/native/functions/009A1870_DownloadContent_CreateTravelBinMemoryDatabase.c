/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: creates0xa0-byte UI/ExportBin/MemoryDB object, opens with
   virtual+18(3,6,0), attaches throughresourcehost+34(1,database,0). Failure
   closes/detaches/releases and clears output. Low AL Boolean; creation is a temporary in-memory
   travelbin, not TravelDB.package. */

bool __cdecl DownloadContent_CreateTravelBinMemoryDatabase(void **databaseOut)

{
  void *pvVar1;
  char cVar2;
  int *piVar3;
  undefined4 *this;
  void *pvVar4;
  int *piVar5;
  
  piVar3 = (int *)FUN_004afe80();
  if (piVar3 == (int *)0x0) {
    return false;
  }
  this = FUN_004e4760(0xa0,"UI/ExportBin/MemoryDB",0);
  if (this == (undefined4 *)0x0) {
    pvVar4 = (void *)0x0;
  }
  else {
    pvVar4 = FUN_0072b850(this,0);
  }
  pvVar1 = *databaseOut;
  if (pvVar4 != pvVar1) {
    if (pvVar4 != (void *)0x0) {
      (*(code *)**(undefined4 **)((int)pvVar4 + 4))();
    }
    *databaseOut = pvVar4;
    if (pvVar1 != (void *)0x0) {
      (**(code **)(*(int *)((int)pvVar1 + 4) + 4))();
    }
  }
  if (*databaseOut != (int *)0x0) {
    cVar2 = (**(code **)(*(int *)*databaseOut + 4))();
    if (cVar2 != '\0') {
      cVar2 = (**(code **)(*(int *)*databaseOut + 0x18))(3,6,0);
      if (cVar2 != '\0') {
        cVar2 = (**(code **)(*piVar3 + 0x34))(1,*databaseOut,0);
        if (cVar2 != '\0') {
          return true;
        }
      }
    }
    piVar3 = *databaseOut;
    if (piVar3 != (int *)0x0) {
      piVar5 = (int *)FUN_004afe80();
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 0x34))(0,piVar3,0);
        (**(code **)(*piVar3 + 0x1c))();
        (**(code **)(*piVar3 + 8))();
      }
    }
    pvVar4 = *databaseOut;
    if (pvVar4 != (void *)0x0) {
      *databaseOut = (void *)0x0;
      (**(code **)(*(int *)((int)pvVar4 + 4) + 4))();
    }
  }
  return false;
}

