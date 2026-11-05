/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */


/* Verified PC 1.67 registration table at 0x01181690 (TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_GetImportedSimResourceKeys [assembly=ScriptCore
   token=0x060000AB; pKeyTable: System.Byte[]&, getTravelImports: System.Boolean;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Travel proof review: cdecl outkey table and low byte getTravelImports. Uses functorvtable
   01049ef0 fornormal and01049ef8 fortravelkeys; original callbacks00995400/20 filtertype 04f88964
   andGroupId bit0. Keytablehas32-bitcount plus16bytes/key, returns signed32count;
   hostarraycreation/copy remainsvirtualcall boundary. */

int __cdecl
ScriptCore.DownloadContent::DownloadContent_GetImportedSimResourceKeys
          (undefined4 param_1,char param_2)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  size_t sVar6;
  undefined ***pppuVar7;
  undefined **local_60;
  undefined **local_5c;
  char *local_58;
  undefined1 local_54 [4];
  undefined1 auStack_50 [20];
  int iStack_3c;
  undefined **ppuStack_38;
  undefined4 *puStack_34;
  undefined4 uStack_8;
  
  iVar5 = 0;
  piVar2 = (int *)FUN_004afe80();
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  local_60 = &PTR_LAB_01049ef0;
  local_5c = &PTR_LAB_01049ef8;
  pppuVar7 = &local_60;
  if (param_2 != '\0') {
    pppuVar7 = &local_5c;
  }
  local_58 = "Scratch/DownloadContent/keyList";
  FUN_007d9500(local_54,&local_58);
  iVar3 = (**(code **)(*piVar2 + 0x20))(local_54,pppuVar7,0);
  if (iVar3 != 0) {
    iVar5 = (int)local_5c - (int)local_60 >> 4;
    sVar6 = iVar5 * 0x10 + 4;
    FUN_004df4c0(&ppuStack_38,(void *)0x0,sVar6,'\0',1,(int *)0x0,"Scratch/DownloadContent/KeyTable"
                );
    StreamReader_Construct(auStack_50,&ppuStack_38,1);
    cVar1 = FUN_007d8a00(&local_60,(int)auStack_50);
    if (cVar1 == '\0') {
      StreamReader_ReleaseAuxiliary(auStack_50);
      ppuStack_38 = &PTR_FUN_00fb6c00;
      if (puStack_34 != (undefined4 *)0x0) {
        MemoryBacking_ReleaseReference(puStack_34);
      }
      ppuStack_38 = &PTR_LAB_00faaa04;
      if (local_60 != (undefined **)0x0) {
        Memory_FreeIfNonNull(local_60);
      }
      return 0;
    }
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar2 + 0x80))(uStack_8,sVar6);
    if (iStack_3c == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = *(undefined4 *)(iStack_3c + 8);
    }
    (**(code **)(*piVar2 + 0x98))(uStack_8,uVar4,0,sVar6);
    StreamReader_ReleaseAuxiliary(auStack_50);
    ppuStack_38 = &PTR_FUN_00fb6c00;
    if (puStack_34 != (undefined4 *)0x0) {
      MemoryBacking_ReleaseReference(puStack_34);
    }
  }
  if (local_60 != (undefined **)0x0) {
    Memory_FreeIfNonNull(local_60);
  }
  return iVar5;
}

