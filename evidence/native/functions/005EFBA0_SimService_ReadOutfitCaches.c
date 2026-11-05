/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst role, original PC1.67. ECX SimService, package-context stack word/RET4, AL status. Read
   reference table then try342779A7:0:20001 first. If opened, validate versions1..8, load shared
   step pool,10001 compositors, then consecutive30001+ chunks until absence; a malformed opened
   split cache does not fall back. Only missing20001 selects legacy instance1. Native compositor
   recreation and ownership are part of this complete body, distinct from a tool that extracts
   outfit records alone. */

undefined1 __thiscall SimService_ReadOutfitCaches(void *this,undefined4 *param_1)

{
  bool bVar1;
  byte bVar2;
  undefined4 uVar3;
  int iVar4;
  uint local_100;
  undefined1 local_fc [8];
  void *local_f4;
  uint local_ec;
  undefined1 local_e8;
  int local_e4 [24];
  undefined1 local_84 [132];
  
  FUN_007d7950(local_fc,param_1);
  local_ec = 1;
  ResourceReferences_ConstructContext(local_84,0);
  ReferenceStore_ReadResource(local_84,local_fc,0xbbb9d2,1,0);
  local_e4[4] = 1;
  local_e4[5] = 0;
  local_e4[6] = 0x342779a7;
  local_e4[7] = 0;
  local_e4[8] = 0x20001;
  local_e4[9] = 0;
  local_e4[10] = 0x342779a7;
  local_e4[0xb] = 0;
  bVar1 = ResourceStreamContext_OpenRead(local_fc,local_e4 + 8,0);
  if (bVar1) {
    bVar1 = Stream_ReadUInt32(local_f4,&local_100,local_ec);
    StreamReader_AccumulateStatus(local_fc,bVar1);
    if (local_100 - 1 < 8) {
      FUN_00602c10(local_e4 + 0xc);
      bVar2 = SavedModelSharedSteps_Read(local_e4 + 0xc,local_fc,local_84);
      if (bVar2 != 0) {
        ResourceStreamContext_Close(local_fc);
        local_e4[0] = 0x10001;
        local_e4[1] = 0;
        local_e4[2] = 0x342779a7;
        local_e4[3] = 0;
        bVar1 = ResourceStreamContext_OpenWrite(local_fc,local_e4,0);
        if (((bVar1) && (StreamReader_ReadUInt32Into(local_fc,&local_100), local_100 - 1 < 8)) &&
           (uVar3 = FUN_005ef870(local_fc,(uint)local_84,(int)(local_e4 + 0xc),local_100),
           (char)uVar3 != '\0')) {
          ResourceStreamContext_Close(local_fc);
          iVar4 = 0x30001;
          local_e4[0] = 0x30001;
          local_e4[1] = 0;
          local_e4[2] = 0x342779a7;
          local_e4[3] = 0;
          bVar1 = ResourceStreamContext_OpenRead(local_fc,local_e4,0);
          if (bVar1) {
            do {
              StreamReader_ReadUInt32Into(local_fc,&local_100);
              if (((local_100 == 0) || (8 < local_100)) ||
                 (uVar3 = SimService_ReadCachedOutfitRecords(local_fc,local_84,local_100),
                 (char)uVar3 == '\0')) goto LAB_005efc7e;
              ResourceStreamContext_Close(local_fc);
              iVar4 = iVar4 + 1;
              local_e4[1] = 0;
              local_e4[2] = 0x342779a7;
              local_e4[3] = 0;
              local_e4[0] = iVar4;
              bVar1 = ResourceStreamContext_OpenRead(local_fc,local_e4,0);
            } while (bVar1);
          }
          FUN_00607d00(local_e4 + 0xc);
          goto LAB_005efe07;
        }
      }
LAB_005efc7e:
      FUN_00607d00(local_e4 + 0xc);
    }
  }
  else {
    bVar1 = ResourceStreamContext_OpenRead(local_fc,local_e4 + 4,0);
    if ((bVar1) &&
       (uVar3 = SimService_ReadLegacyOutfitCache(local_fc,local_84), (char)uVar3 != '\0')) {
      ResourceStreamContext_Close(local_fc);
LAB_005efe07:
      *(undefined1 *)((int)this + 0x138) = 1;
      FUN_007d6890((int)local_84);
      StreamReader_ReleaseAuxiliary(local_fc);
      return local_e8;
    }
  }
  FUN_007d6890((int)local_84);
  StreamReader_ReleaseAuxiliary(local_fc);
  return 0;
}

