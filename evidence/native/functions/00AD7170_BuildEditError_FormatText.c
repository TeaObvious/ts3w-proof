/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. If +2C holds a string object, copies it and returns1. Otherwise
   builds the World/LotEditError request. With zero +28 flags, instruction AD73D5 reads
   [errorCode*4+01183F60]; exact code4A row01184088 points01068478, original key CantBePickedup.
   Placement-choice flags use separate strings. Existing owned body754B; ECX receiver and one
   output-string DWORD, RET4. */

undefined4 __thiscall BuildEditError_FormatText(void *this,undefined4 *param_1)

{
  uint uVar1;
  char cVar2;
  undefined4 *puVar3;
  char *pcVar4;
  char *pcVar5;
  char *pcVar6;
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined *local_18;
  char *local_14;
  void *local_10 [2];
  int local_8;
  
  if ((undefined2 *)*param_1 != (undefined2 *)param_1[1]) {
    *(undefined2 *)*param_1 = 0;
    param_1[1] = *param_1;
  }
  puVar3 = *(undefined4 **)((int)this + 0x2c);
  if (puVar3 != (undefined4 *)0x0) {
    if (puVar3 != param_1) {
      FUN_00408d60(param_1,(void *)*puVar3,(undefined2 *)puVar3[1]);
    }
    return 1;
  }
  local_20 = &DAT_011c8e54;
  local_1c = &DAT_011c8e54;
  uVar1 = *(uint *)((int)this + 0x28);
  local_14 = "World/LotEditError";
  local_18 = &DAT_011c8e55;
  if (uVar1 == 0) {
    pcVar5 = (&PTR_DAT_01183f60)[*(int *)this];
    do {
      pcVar6 = pcVar5;
      pcVar5 = pcVar6 + 1;
      pcVar4 = (&PTR_DAT_01183f60)[*(int *)this];
    } while (*pcVar6 != '\0');
  }
  else {
    pcVar5 = PTR_s_MustPlaceInWater_01184054;
    if (uVar1 != 0x400c) {
      if ((*(void **)((int)this + 0x30) == (void *)0x0) ||
         (cVar2 = FUN_00b00f00(*(void **)((int)this + 0x30),uVar1,-999,'\x01'), cVar2 == '\0')) {
        pcVar5 = "PlacementChoicesHeader";
      }
      else {
        pcVar5 = "PlacementChoicesHeaderEntireObject";
      }
      FUN_00405a60(&local_20,pcVar5);
      if ((*(uint *)((int)this + 0x28) & 0x100) == 0) {
        if ((*(uint *)((int)this + 0x28) & 1) != 0) {
          FUN_00405a60(&local_20,",PlacementChoicesSeparator");
          FUN_00405a60(&local_20,",PlacementChoicesOnTerrain");
        }
        if ((*(byte *)((int)this + 0x28) & 2) != 0) {
          FUN_00405a60(&local_20,",PlacementChoicesSeparator");
          pcVar5 = ",PlacementChoicesOnFloor";
          goto LAB_00ad728d;
        }
      }
      else {
        FUN_00405a60(&local_20,",PlacementChoicesSeparator");
        pcVar5 = ",PlacementChoicesHasSupport";
LAB_00ad728d:
        FUN_00405a60(&local_20,pcVar5);
      }
      if ((*(byte *)((int)this + 0x28) & 4) != 0) {
        FUN_00405a60(&local_20,",PlacementChoicesSeparator");
        FUN_00405a60(&local_20,",PlacementChoicesOnPool");
      }
      if ((*(byte *)((int)this + 0x28) & 8) != 0) {
        FUN_00405a60(&local_20,",PlacementChoicesSeparator");
        FUN_00405a60(&local_20,",PlacementChoicesOnPond");
      }
      if ((*(uint *)((int)this + 0x28) & 0x4000) != 0) {
        FUN_00405a60(&local_20,",PlacementChoicesSeparator");
        FUN_00405a60(&local_20,",PlacementChoicesOnSea");
      }
      if ((*(byte *)((int)this + 0x28) & 0x10) != 0) {
        FUN_00405a60(&local_20,",PlacementChoicesSeparator");
        FUN_00405a60(&local_20,",PlacementChoicesOnFencePost");
      }
      if ((*(byte *)((int)this + 0x28) & 0x80) != 0) {
        FUN_00405a60(&local_20,",PlacementChoicesSeparator");
        FUN_00405a60(&local_20,",PlacementChoicesOnRoof");
      }
      if ((*(byte *)((int)this + 0x28) & 0x40) != 0) {
        FUN_00405a60(&local_20,",PlacementChoicesSeparator");
        FUN_00405a60(&local_20,",PlacementChoicesInAir");
      }
      if ((*(uint *)((int)this + 0x28) & 0x200) != 0) {
        FUN_00405a60(&local_20,",PlacementChoicesSeparator");
        FUN_00405a60(&local_20,",PlacementChoicesNoLotEdge");
      }
      if ((*(uint *)((int)this + 0x28) & 0x400) != 0) {
        FUN_00405a60(&local_20,",PlacementChoicesSeparator");
        FUN_00405a60(&local_20,",PlacementChoicesNoTopFloor");
      }
      if ((*(byte *)((int)this + 0x28) & 0x20) != 0) {
        FUN_00405a60(&local_20,",PlacementChoicesSeparator");
        FUN_00405a60(&local_20,",PlacementChoicesOnAnySurface");
      }
      goto LAB_00ad73f9;
    }
    do {
      pcVar6 = pcVar5;
      pcVar5 = pcVar6 + 1;
      pcVar4 = PTR_s_MustPlaceInWater_01184054;
    } while (*pcVar6 != '\0');
  }
  FUN_00405910(&local_20,pcVar4,pcVar6);
LAB_00ad73f9:
  puVar3 = FUN_004f3c90(local_10,&local_20);
  if (puVar3 != param_1) {
    FUN_00408d60(param_1,(void *)*puVar3,(undefined2 *)puVar3[1]);
  }
  if ((2 < (int)(local_8 - (int)local_10[0] & 0xfffffffeU)) && (local_10[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(local_10[0]);
  }
  if ((1 < (int)local_18 - (int)local_20) && (local_20 != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(local_20);
  }
  return 0;
}

