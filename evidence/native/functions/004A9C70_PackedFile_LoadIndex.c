/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original DBPF role: Provider vtable+8C. Header count zero creates/keeps empty
   index without invoking raw row parser. Nonzero count reads index byte extent and calls index
   vtable+34 with markLoaded1. Physical extent, not header count, bounds raw parser. */

bool __fastcall PackedFile_LoadIndex(int *param_1)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  size_t sVar4;
  bool bVar5;
  undefined4 uStack_24;
  undefined4 uStack_20;
  char *pcStack_1c;
  void *apvStack_18 [2];
  int iStack_10;
  int *piStack_c;
  
  bVar5 = false;
  if (((int *)param_1[0xb4] != (int *)0x0) &&
     (iVar2 = (**(code **)(*(int *)param_1[0xb4] + 0xc))(), iVar2 != 0)) {
    iVar2 = (**(code **)(*(int *)param_1[0xb4] + 0xc))();
    param_1[0xcc] = iVar2;
  }
  if (param_1[0xcc] == 0) {
    bVar5 = true;
    if (param_1[0xb4] == 0) {
      iVar2 = (**(code **)(*param_1 + 100))(3);
      param_1[0xb4] = iVar2;
    }
    iVar2 = (**(code **)(*(int *)param_1[0xb4] + 0xc))();
    if (iVar2 == 0) {
      (**(code **)(*param_1 + 0xa0))();
    }
  }
  else {
    if (param_1[0xb4] == 0) {
      iVar2 = (**(code **)(*param_1 + 100))(3);
      param_1[0xb4] = iVar2;
    }
    if ((int *)param_1[0xb4] != (int *)0x0) {
      iVar2 = (**(code **)(*(int *)param_1[0xb4] + 0xc))();
      if (iVar2 == 0) {
        uStack_24 = FUN_0092f9c0();
        uStack_20 = 0;
        pcStack_1c = "ResourceSystem/ResourceMan/DPF";
        FUN_004a97a0(apvStack_18,param_1[0xcd],&uStack_24);
        FUN_004e1c00((LPCRITICAL_SECTION)(param_1 + 0xa8),(uint *)&DAT_00fb3508);
        uVar3 = FUN_004a7820(param_1,param_1[0xcb] + param_1[0x97]);
        if ((char)uVar3 != '\0') {
          sVar4 = PackedFile_ReadBytes(param_1,apvStack_18[0],param_1[0xcd]);
          bVar5 = sVar4 == param_1[0xcd];
        }
        FUN_004e1cc0((LPCRITICAL_SECTION)(param_1 + 0xa8));
        cVar1 = '\0';
        if (((bVar5 != false) &&
            (cVar1 = (**(code **)(*(int *)param_1[0xb4] + 0x34))(apvStack_18[0],param_1[0xcd],1),
            cVar1 != '\0')) && ((undefined4 *)param_1[0xb5] != (undefined4 *)0x0)) {
          cVar1 = (*(code *)**(undefined4 **)param_1[0xb5])(param_1,apvStack_18[0],param_1[0xcd]);
        }
        if (apvStack_18[0] != (void *)0x0) {
          (**(code **)(*piStack_c + 0xc))(apvStack_18[0],iStack_10 - (int)apvStack_18[0]);
        }
        if (cVar1 == '\0') {
          return false;
        }
      }
      cVar1 = (**(code **)(*param_1 + 0x94))();
      if ((cVar1 == '\0') && (*(char *)((int)param_1 + 0xe) == '\0')) {
        return false;
      }
      if ((*(byte *)(param_1 + 5) & 2) != 0) {
        (**(code **)(*param_1 + 0xa0))();
      }
      *(undefined1 *)(param_1 + 0xb6) = 0;
      return true;
    }
  }
  return bVar5;
}

