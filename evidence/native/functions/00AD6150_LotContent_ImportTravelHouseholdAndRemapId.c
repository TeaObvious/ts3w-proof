/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original instruction review: source adapter pointer, returns64ID EDX:EAX or0. Reads
   HouseholdTypeKeyList for type062853a8, chooses first household entry, obtains destination content
   database, generates new ID via007cfe00, copies referenced resources then reads/writes
   resource00283095 under old/newIDs using00ad59e0 remapping. Decompiler unrecovered ESI/EBP vector
   bounds are call-cleanup artifacts; no implicit input registers are supplied here. */

undefined8 LotContent_ImportTravelHouseholdAndRemapId(uint *param_1)

{
  ulonglong instance;
  ulonglong uVar1;
  void *this;
  bool bVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  ulonglong *unaff_EBP;
  ulonglong *unaff_ESI;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  char *local_d0;
  undefined **local_cc;
  undefined4 local_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  int *apiStack_bc [6];
  undefined **ppuStack_a4;
  undefined8 uStack_9c;
  undefined4 uStack_90;
  undefined1 auStack_8c [96];
  undefined1 auStack_2c [44];
  
  local_cc = &PTR_LAB_00fd92b0;
  local_c8 = 0x62853a8;
  local_dc = 0;
  local_d8 = 0;
  local_d4 = 0;
  local_d0 = "Lot/LotContentManager/HouseholdTypeKeyList";
  (**(code **)(*(int *)*param_1 + 0x30))(&local_dc,&local_cc);
  this = DAT_011ea6a4;
  if (unaff_ESI == unaff_EBP) {
    if (unaff_ESI != (ulonglong *)0x0) {
      Memory_FreeIfNonNull(unaff_ESI);
    }
    return 0;
  }
  FUN_007d7900(apiStack_bc);
  uVar3 = FUN_009a16e0(this,apiStack_bc);
  if ((char)uVar3 != '\0') {
    uVar1 = *unaff_ESI;
    uVar3 = *(undefined4 *)((int)unaff_ESI + 4);
    instance = *unaff_ESI;
    uStack_9c = FUN_007cfe00('\0');
    uStack_90 = (undefined4)((ulonglong)uStack_9c >> 0x20);
    uVar4 = (undefined4)uStack_9c;
    local_cc = &PTR_LAB_01066cec;
    ppuStack_a4 = &PTR_LAB_01068e94;
    uStack_c4 = (int)uVar1;
    uStack_c0 = uVar3;
    iVar5 = FUN_007d9130(apiStack_bc[0],(int *)*param_1);
    if (iVar5 != 0) {
      ResourceReferences_ConstructContext(auStack_8c,0);
      bVar2 = ReferenceStore_ReadResource(auStack_8c,param_1,0x283095,instance,1);
      if (bVar2) {
        FUN_00ad59e0((int)auStack_2c,apiStack_bc,param_1);
        uVar3 = uStack_90;
        ReferenceStore_WriteResource
                  (auStack_8c,apiStack_bc,0x283095,CONCAT44(uStack_90,uVar4),(void *)0x0);
        FUN_007d6890((int)auStack_8c);
        local_cc = &PTR_LAB_00fb3ccc;
        StreamReader_ReleaseAuxiliary(apiStack_bc);
        if (unaff_ESI != (ulonglong *)0x0) {
          Memory_FreeIfNonNull(unaff_ESI);
        }
        return CONCAT44(uVar3,uVar4);
      }
      FUN_007d6890((int)auStack_8c);
    }
  }
  StreamReader_ReleaseAuxiliary(apiStack_bc);
  if (unaff_ESI != (ulonglong *)0x0) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  return 0;
}

