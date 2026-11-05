/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note; existing FUN name retained.
   ECX bin owner, filename descriptor and out-provider stackwords, RET8, lowALstatus. Nonzero owner+78 rejects without output initialization. User path first; only failed4DBD70 file-presence predicate searches installed table reverse. Existing invalid package does not retry lower files. Success writes out and increments secondary ref; owner+78 also retains provider. Full virtual methods/4A9290 failure/close and9A4F40 conditional retirement remain separate; no new safe OOM fallback inferred from genuine C. */
uint __thiscall FUN_009a2eb0(void *this,undefined4 param_1,int *param_2)

{
  void *pvVar1;
  int iVar2;
  char cVar3;
  uint in_EAX;
  uint uVar4;
  uint uVar5;
  undefined4 *this_00;
  void *pvVar6;
  undefined4 uVar7;
  undefined4 extraout_EAX;
  uint extraout_EAX_00;
  LPCWSTR allocation;
  uint uVar8;
  undefined4 local_14;
  LPCWSTR local_10;
  undefined1 *local_c;
  undefined2 *local_8;
  char *local_4;
  
  if (*(int *)((int)this + 0x78) != 0) {
    return in_EAX & 0xffffff00;
  }
  local_10 = (LPCWSTR)&DAT_011c8e54;
  local_c = &DAT_011c8e54;
  local_4 = "Scratch/DownloadContent/ExportBin/DeletePackage";
  local_8 = &DAT_011c8e56;
  FUN_0040e840(&local_10,(ushort *)L"%s%s");
  allocation = local_10;
  uVar4 = FUN_004dbd70(local_10);
  if ((char)uVar4 == '\0') {
    uVar8 = 0;
    uVar5 = FUN_00595620(0x11cede0);
    uVar4 = 0;
    if (uVar5 != 0) {
      do {
        FUN_00595640(&DAT_011cede0,(uVar5 - uVar8) - 1,&local_14);
        FUN_0040e840(&local_10,(ushort *)L"%s%s");
        allocation = local_10;
        uVar4 = FUN_004dbd70(local_10);
        if ((char)uVar4 != '\0') goto LAB_009a2f7b;
        uVar8 = uVar8 + 1;
      } while (uVar8 < uVar5);
    }
    uVar5 = (int)local_8 - (int)allocation;
  }
  else {
LAB_009a2f7b:
    this_00 = FUN_004e4760(0x398,"Lot/Layer/LayerFile",0);
    if (this_00 == (undefined4 *)0x0) {
      pvVar6 = (void *)0x0;
    }
    else {
      pvVar6 = PackedFile_InitializeProvider(this_00,allocation,0);
    }
    pvVar1 = *(void **)((int)this + 0x78);
    if (pvVar6 != pvVar1) {
      if (pvVar6 != (void *)0x0) {
        (*(code *)**(undefined4 **)((int)pvVar6 + 4))();
      }
      *(void **)((int)this + 0x78) = pvVar6;
      if (pvVar1 != (void *)0x0) {
        (**(code **)(*(int *)((int)pvVar1 + 4) + 4))();
      }
    }
    cVar3 = (**(code **)(**(int **)((int)this + 0x78) + 4))();
    if (cVar3 != '\0') {
      cVar3 = (**(code **)(**(int **)((int)this + 0x78) + 0x18))(1,3,0);
      if (cVar3 != '\0') {
        iVar2 = *(int *)((int)this + 0x78);
        *param_2 = iVar2;
        uVar7 = (*(code *)**(undefined4 **)(iVar2 + 4))();
        if ((2 < (int)((int)local_8 - (int)allocation & 0xfffffffeU)) &&
           (allocation != (LPCWSTR)0x0)) {
          Memory_FreeIfNonNull(allocation);
          uVar7 = extraout_EAX;
        }
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
    }
    if (*(undefined2 **)((int)this + 0x24) != *(undefined2 **)((int)this + 0x28)) {
      **(undefined2 **)((int)this + 0x24) = 0;
      *(undefined4 *)((int)this + 0x28) = *(undefined4 *)((int)this + 0x24);
    }
    (**(code **)(**(int **)((int)this + 0x78) + 8))();
    iVar2 = *(int *)((int)this + 0x78);
    uVar4 = 0;
    if (iVar2 != 0) {
      *(undefined4 *)((int)this + 0x78) = 0;
      uVar4 = (**(code **)(*(int *)(iVar2 + 4) + 4))();
    }
    uVar5 = (int)local_8 - (int)allocation;
  }
  if ((2 < (int)(uVar5 & 0xfffffffe)) && (allocation != (LPCWSTR)0x0)) {
    Memory_FreeIfNonNull(allocation);
    uVar4 = extraout_EAX_00;
  }
  return uVar4 & 0xffffff00;
}

