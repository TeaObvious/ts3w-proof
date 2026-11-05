/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 bounded monitor poll. Physical ECX is monitor interface at allocation+0x0C; two
   opaque stack DWORDs are popped by every RET8 and are not read. Body80instructions172bytes
   ends0079341B; following4padding bytes and next3420 function excluded. Vtable01011968+4 selects
   this entry; constructor007894A0 installs that interface. Missing world manager completes false
   through0078ECB0(0) then returns AL0. A nonzero stored lot GUID resolves throughC62810(flag0);
   missing lot completes true. Otherwise interface at this-0C virtual+18 tests each selected lot;
   ALtrue triggers virtual+10 continuation, ALfalse or exhausted list completes true. Zero GUID
   scans C687A0(0) pointer range. Completion result is separate from this poll's AL. Decompiler
   signature/stack aliases are inferred, not a recovered prototype. No one-second backoff or
   failed-revision receipt policy is established here. */

uint __fastcall DetailedLotMonitor_PollLoadedLots(int param_1)

{
  undefined4 *puVar1;
  char cVar2;
  uint uVar3;
  int *piVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  
  if (DAT_011edbc4 == (void *)0x0) {
    uVar3 = FUN_0078ecb0((void *)(param_1 + -0xc),0);
    return uVar3 & 0xffffff00;
  }
  if (*(uint *)(param_1 + 0xc) == 0 && *(uint *)(param_1 + 0x10) == 0) {
    piVar4 = (int *)FUN_00c687a0(DAT_011edbc4,'\0');
    puVar6 = (undefined4 *)*piVar4;
    puVar1 = (undefined4 *)piVar4[1];
    if (puVar6 != puVar1) {
      do {
        cVar2 = (**(code **)(*(int *)(param_1 + -0xc) + 0x18))(*puVar6);
        if (cVar2 != '\0') {
          uVar5 = (**(code **)(*(int *)(param_1 + -0xc) + 0x10))();
          return CONCAT31((int3)((uint)uVar5 >> 8),1);
        }
        puVar6 = puVar6 + 1;
      } while (puVar6 != puVar1);
    }
  }
  else {
    piVar4 = WorldObjects_FindLotByGuid
                       (DAT_011edbc4,*(uint *)(param_1 + 0xc),*(uint *)(param_1 + 0x10),(uint *)0x0)
    ;
    if (piVar4 != (int *)0x0) {
      cVar2 = (**(code **)(*(int *)(param_1 + -0xc) + 0x18))(piVar4);
      if (cVar2 != '\0') {
        uVar5 = (**(code **)(*(int *)(param_1 + -0xc) + 0x10))();
        return CONCAT31((int3)((uint)uVar5 >> 8),1);
      }
    }
  }
  uVar5 = FUN_0078ecb0((void *)(param_1 + -0xc),1);
  return CONCAT31((int3)((uint)uVar5 >> 8),1);
}

