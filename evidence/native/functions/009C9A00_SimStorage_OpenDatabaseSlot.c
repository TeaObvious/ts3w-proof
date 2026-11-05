/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original instruction review: this in ECX, database slot descriptor and appendflagstack, RET 8.
   Pathdescriptor+30 storesallocated0x398-byte mpDatabase; existing path required,
   opensdatabasevirtual+18(3,2,0), then009c8ae0 hook. BooleanAL. Slotsconfigured by009ca280;
   detailedfilesystemhelpersemantics remainoutsideproof. */

bool __thiscall SimStorage_OpenDatabaseSlot(void *this,void *slotDescriptor,bool appendName)

{
  char cVar1;
  undefined4 *puVar2;
  void *pvVar3;
  undefined4 uVar4;
  short *allocation;
  undefined2 *puVar5;
  undefined3 in_stack_00000009;
  short *local_10;
  undefined1 *local_c;
  undefined2 *local_8;
  char *local_4;
  
  cVar1 = FUN_004dd040(*(short **)slotDescriptor);
  if (cVar1 == '\0') {
    return false;
  }
  allocation = (short *)&DAT_011c8e54;
  puVar5 = &DAT_011c8e56;
  local_4 = "Scratch/DownloadContent/SimStorageManager/fullDatabasePath";
  local_10 = (short *)&DAT_011c8e54;
  local_c = &DAT_011c8e54;
  local_8 = &DAT_011c8e56;
  if (_appendName == 0) {
    if (*(int *)((int)slotDescriptor + 0x10) == *(int *)((int)slotDescriptor + 0x14))
    goto LAB_009c9ad1;
    puVar2 = FUN_004e4760(0x398,"ResourceSystem/DownloadContent/SimStorageManager/mpDatabase",0);
    if (puVar2 == (undefined4 *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = PackedFile_InitializeProvider(puVar2,*(short **)((int)slotDescriptor + 0x10),0);
    }
  }
  else {
    FUN_0040e840(&local_10,(ushort *)L"%s%s");
    puVar2 = FUN_004e4760(0x398,"ResourceSystem/DownloadContent/SimStorageManager/mpDatabase",0);
    allocation = local_10;
    if (puVar2 == (undefined4 *)0x0) {
      pvVar3 = (void *)0x0;
      puVar5 = local_8;
    }
    else {
      pvVar3 = PackedFile_InitializeProvider(puVar2,local_10,0);
      puVar5 = local_8;
    }
  }
  *(void **)((int)slotDescriptor + 0x30) = pvVar3;
LAB_009c9ad1:
  if (*(int *)((int)slotDescriptor + 0x30) != 0) {
    (*(code *)**(undefined4 **)(*(int *)((int)slotDescriptor + 0x30) + 4))();
    cVar1 = (**(code **)(**(int **)((int)slotDescriptor + 0x30) + 4))();
    if (cVar1 != '\0') {
      cVar1 = (**(code **)(**(int **)((int)slotDescriptor + 0x30) + 0x18))(3,2,0);
      if (cVar1 != '\0') {
        uVar4 = FUN_009c8ae0(*(int *)((int)slotDescriptor + 0x30));
        if ((2 < (int)((int)puVar5 - (int)allocation & 0xfffffffeU)) && (allocation != (short *)0x0)
           ) {
          Memory_FreeIfNonNull(allocation);
        }
        return SUB41(uVar4,0);
      }
    }
  }
  if ((2 < (int)((int)puVar5 - (int)allocation & 0xfffffffeU)) && (allocation != (short *)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  return false;
}

