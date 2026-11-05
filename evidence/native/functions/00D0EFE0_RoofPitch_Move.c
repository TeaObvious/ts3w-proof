/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX tool plus two signed pointer-coordinate words, RET8. If unpressed14 or no
   selection44/hover5C, calls hover. Otherwise wrapped signed abs(acceptedY68-currentY)>10 gates.
   CVTSI2SS(currentY-pressY64), DIVSS scale60, SUBSS from negative zeroF998F0 yields delta passed
   D2AD80 with selected IDs plus unselected hover. Writes acceptedY68 only after
   pitch/preview/highlight calls. No arbitrary FP control/exception or undoable-math parity claim.
    */

void __thiscall RoofPitch_Move(void *this,int param_1,int param_2)

{
  uint *puVar1;
  int iVar2;
  undefined4 *puVar3;
  uint uVar4;
  undefined4 *puVar5;
  int *piVar6;
  int iVar7;
  uint uVar8;
  undefined4 *puVar9;
  char *local_24 [2];
  int local_1c;
  undefined4 local_18 [2];
  undefined4 *local_10;
  undefined4 *local_c;
  
  if ((*(char *)((int)this + 0x14) == '\0') ||
     ((iVar2 = *(int *)((int)this + 0x44), iVar2 == 0 && (*(int *)((int)this + 0x5c) == -1)))) {
    RoofPitch_UpdateHoveredRoof(this,param_1,param_2);
  }
  else {
    uVar4 = *(int *)((int)this + 0x68) - param_2;
    uVar8 = (int)uVar4 >> 0x1f;
    if (10 < (int)((uVar4 ^ uVar8) - uVar8)) {
      local_1c = param_2 - *(int *)((int)this + 100);
      local_24[0] = "World/UserToolRoofPitch/roofvector";
      FUN_00d4c330(&local_10,iVar2,local_24);
      puVar3 = local_10;
      iVar7 = iVar2;
      puVar9 = local_10;
      if (iVar2 != 0) {
        for (; iVar7 != 0; iVar7 = iVar7 + -1) {
          *puVar9 = 0;
          puVar9 = puVar9 + 1;
        }
      }
      local_c = local_10 + iVar2;
      puVar9 = (undefined4 *)(*(int *)((int)this + 0x3c) + *(int *)((int)this + 0x40) * 4);
      local_24[0] = (char *)*puVar9;
      puVar5 = PickCandidateMap_Begin((void *)((int)this + 0x38),local_18);
      FUN_00d0e880((undefined4 *)*puVar5,puVar5[1],(undefined4 *)local_24[0],puVar9,puVar3);
      puVar1 = (uint *)((int)this + 0x5c);
      if ((*puVar1 != 0xffffffff) &&
         (iVar2 = *(int *)(*(int *)((int)this + 0x3c) + *(int *)((int)this + 0x40) * 4),
         piVar6 = (int *)FUN_008b26c0((void *)((int)this + 0x38),local_18,puVar1), *piVar6 == iVar2)
         ) {
        Int32Vector_AppendValue(&local_10,puVar1);
      }
      FUN_00d2ad80(*(void **)((int)this + 0x34),
                   FLOAT_00f998f0 - (float)local_1c / *(float *)((int)this + 0x60),(int *)&local_10)
      ;
      FUN_00d0eb40(this,1);
      FUN_00d0ea80(this,*puVar1,1);
      *(int *)((int)this + 0x68) = param_2;
      if (local_10 != (undefined4 *)0x0) {
        Memory_FreeIfNonNull(local_10);
      }
    }
  }
  FUN_008c6a50();
  return;
}

