/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete body: owner+4 nonnull; Animation mask11DD484 lookup and interface+8 virtual+20
   must return nonnull rig-resource interface(component+20), not ComponentRuntime+24. Scan component
   pointer vector+8..+C. For nonnull driver with intrusive count(driver+4)==1 and800260 ALtrue,
   overwrite current slot from last, end-=4, reload end, release driver+8 virtual+4 and recheck same
   slot; otherwise advance. No reverse/stable removal. Count producer889AF0/7C9620 and component
   admission94D5B0 establish intrusive reference/component retain; complete handle/watch ownership
   distribution unresolved. */

void __fastcall SACS_ComponentCollectQuiescentSoleRefDrivers_94D390(int param_1)

{
  void *pvVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  int *piVar5;
  
  if (((*(void **)(param_1 + 4) != (void *)0x0) &&
      (pvVar1 = Object_GetComponentByMask(*(void **)(param_1 + 4),DAT_011dd484),
      pvVar1 != (void *)0x0)) &&
     (iVar2 = (**(code **)(*(int *)((int)pvVar1 + 8) + 0x20))(), iVar2 != 0)) {
    piVar4 = *(int **)(param_1 + 0xc);
    piVar5 = *(int **)(param_1 + 8);
    if (piVar5 != piVar4) {
      do {
        iVar2 = *piVar5;
        if (((iVar2 == 0) || (*(int *)(iVar2 + 4) != 1)) ||
           (uVar3 = SACS_DriverIsQuiescentAL_800260(iVar2), (char)uVar3 == '\0')) {
          piVar5 = piVar5 + 1;
        }
        else {
          *piVar5 = *(int *)(*(int *)(param_1 + 0xc) + -4);
          *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + -4;
          piVar4 = *(int **)(param_1 + 0xc);
          (**(code **)(*(int *)(iVar2 + 8) + 4))();
        }
      } while (piVar5 != piVar4);
    }
  }
  return;
}

