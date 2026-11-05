/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete48-instruction body: iterate nonnull pointer rows in component[+8,+C),
   call7FFF70(driver), then driver+8 virtual+4. Only if resulting EAX nonzero call global manager
   virtual+D4(driver,0x20); if its AL is true release that interface a second time. After traversal
   reset end to begin and set AL1; upper24 return bits unspecified. RET4 consumes a stack word
   missing from stored one-arg fastcall C; caller94D530 explicitly pushes0. Manager+D4 pointer
   invalidation and listener traversal are established by the attached host-reset contract; broader
   external ownership remains open. No new cleanup/idempotence/exception guarantee.
   
   Analyst note (PC1.67 SACS host reset contract): Component drain after94D490 reset and component
   deletion. For each driver detach its controller listeners via7FFF70, release component intrusive
   reference through driver+8 virtual+4. When a reference survives, call global manager+D4(driver
   pointer,type20hex); this slot resolves to76A6D0 in vtables1008960 and108C6D0. It erases reverse
   pointer lookup and zeros the handle-map pointer, independent of script keeping numeric handle. AL
   true causes another intrusive release. Clear component end to begin. RET4, AL-only result;
   simplified stored C prototype omits consumed stack word. This closes prior uncertainty about+D4
   handle invalidation, not arbitrary external reference ownership. */

undefined4 __fastcall SACS_ComponentReleaseDriverRows_94D320(int param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 in_EAX;
  int iVar3;
  int *piVar4;
  int *piVar5;
  
  piVar1 = *(int **)(param_1 + 0xc);
  for (piVar5 = *(int **)(param_1 + 8); piVar5 != piVar1; piVar5 = piVar5 + 1) {
    iVar2 = *piVar5;
    if (iVar2 != 0) {
      SacsDriver_DetachControllerListeners(iVar2);
      iVar3 = (**(code **)(*(int *)(iVar2 + 8) + 4))();
      in_EAX = 0;
      if (iVar3 != 0) {
        piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
        in_EAX = (**(code **)(*piVar4 + 0xd4))(iVar2,0x20);
        if ((char)in_EAX != '\0') {
          in_EAX = (**(code **)(*(int *)(iVar2 + 8) + 4))();
        }
      }
    }
  }
  *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_1 + 8);
  return CONCAT31((int3)((uint)in_EAX >> 8),1);
}

