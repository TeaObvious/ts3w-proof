/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note; existing FUN name retained.
   Physical ECX receiver plus THREE stackwords directory descriptor, installed lowbyte, productDWORD; RET0C. Genuine C omits product argument. 9A56AB..C5 loads/pushes allthree to9A4F40. TESTBL at9A56CA selects user-only secondary pass, ignoring AddPackage AL. Folder enumeration4DA580 flags2/100000, linked-list order; sort/recursion/admission not guessed. Owned ranges5600..569E and56A0..5826 inclusive; 569F NOP90 is a nonowned gap. Secondary9BCFD0/9A1F40/9A4660 semantics remain open, not inferred from DeletePackage scratch labels. */
void __thiscall FUN_009a5600(void *this,undefined4 *param_1,char param_2)

{
  short *allocation;
  char cVar1;
  uint uVar2;
  undefined4 *this_00;
  int *piVar3;
  undefined4 uVar4;
  void *unaff_ESI;
  int ****local_3ac;
  int ****local_3a4;
  int ****local_3a0;
  undefined4 local_39c;
  undefined4 local_398;
  char *local_394;
  short *local_390;
  undefined1 *local_38c;
  undefined2 *local_388;
  char *local_384;
  undefined4 local_380;
  _GUID local_37c;
  undefined4 auStack_36c [10];
  undefined4 auStack_344 [209];
  
  uVar2 = FUN_004dc130((LPCWSTR)*param_1);
  if ((char)uVar2 != '\0') {
    local_380 = 0;
    local_37c.Data1 = 0;
    local_37c.Data2 = 0;
    local_37c.Data3 = 0;
    local_37c.Data4[0] = '\0';
    local_37c.Data4[1] = '\0';
    local_37c.Data4[2] = '\0';
    local_37c.Data4[3] = '\0';
    local_39c = FUN_004d9c90();
    local_3a4 = (int ****)&local_3a4;
    local_398 = 0;
    local_394 = "Scratch/DownloadContent/ExportBinFileList";
    local_3a0 = local_3a4;
    uVar2 = FUN_004da580((short *)*param_1,(int *)local_3a4,(ushort *)L"*.package",2,0x100000);
    *(uint *)((int)this + 0x74) = uVar2;
    local_3ac = local_3a4;
    if ((int *****)local_3a4 != &local_3a4) {
      do {
        LibraryBin_AddPackageAndClassifyProvenance(local_3ac + 3);
        if (param_2 == '\0') {
          local_390 = (short *)&DAT_011c8e54;
          local_38c = &DAT_011c8e54;
          local_384 = "Scratch/DownloadContent/ExportBin/DeletePackage";
          local_388 = &DAT_011c8e56;
          FUN_0040e840(&local_390,(ushort *)L"%s%s");
          this_00 = FUN_004e4760(0x398,"Scratch/DownloadContent/ExportBin/db",0);
          allocation = local_390;
          if ((this_00 != (undefined4 *)0x0) &&
             (piVar3 = PackedFile_InitializeProvider(this_00,local_390,0), piVar3 != (int *)0x0)) {
            (**(code **)piVar3[1])();
            cVar1 = (**(code **)(*piVar3 + 4))();
            if (cVar1 != '\0') {
              cVar1 = (**(code **)(*piVar3 + 0x18))(1,3,0);
              if (cVar1 != '\0') {
                FUN_009b3bf0(auStack_36c);
                cVar1 = FUN_009bcfd0(auStack_36c,piVar3,(undefined *)0x0);
                if (cVar1 != '\0') {
                  FUN_00500c90(&local_37c,auStack_344);
                  uVar4 = FUN_009a1f40(unaff_ESI,&local_37c);
                  if ((char)uVar4 == '\0') {
                    FUN_009a4660(unaff_ESI,&local_37c,(short *)local_3ac[3]);
                  }
                }
                (**(code **)(*piVar3 + 0x1c))();
                FUN_009b3e50((int)auStack_36c);
              }
              (**(code **)(*piVar3 + 8))();
            }
            (**(code **)(piVar3[1] + 4))();
          }
          if ((2 < (int)((int)local_388 - (int)allocation & 0xfffffffeU)) &&
             (allocation != (short *)0x0)) {
            Memory_FreeIfNonNull(allocation);
          }
        }
        local_3ac = (int ****)*local_3ac;
      } while ((int *****)local_3ac != &local_3a4);
    }
    FUN_00456ec0(&local_3a4);
  }
  return;
}

