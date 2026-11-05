/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst role, original PC1.67. Physical caller-cleaned four words/plain RET, low-byte status.
   Requires reference store, optional marker0D160D16 selectsUInt16 key-count instead ofUInt8; UInt32
   body length first, seek past body to read external key handles, seek back and invoke full outfit
   loader, then restore position after handles. Returned owner is published only on success; cleanup
   releases partial owner/temporary keys. The marker does not move the key count before the body. */

undefined1 __cdecl
SimOutfit_ReadCachedRecord(void *param_1,void *param_2,int *param_3,undefined4 *param_4)

{
  undefined1 uVar1;
  bool bVar2;
  char cVar3;
  undefined4 *puVar4;
  int *this;
  int iVar5;
  uint uVar6;
  ushort uVar7;
  byte bStack_25;
  uint uStack_24;
  uint uStack_20;
  uint uStack_1c;
  char *pcStack_18;
  int iStack_14;
  void *apvStack_10 [4];
  
  if (param_2 == (void *)0x0) {
    return 0;
  }
  puVar4 = (undefined4 *)FUN_004e4500(0x2d0,"CAS/SimOutfitResource/CreateFromStream",0);
  if ((puVar4 == (undefined4 *)0x0) || (this = FUN_005e6f00(puVar4), this == (int *)0x0)) {
    return 0;
  }
  (**(code **)*this)();
  iVar5 = StreamContext_GetPositionAndMarkNegative(param_1);
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&uStack_20,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  if (uStack_20 == 0xd160d16) {
    uStack_20 = 2;
  }
  else {
    uStack_20 = 1;
    StreamContext_SeekWithSignedAbsoluteGuard(param_1,iVar5,0);
  }
  pcStack_18 = "CAS/SimOutfitResource/CreateFromStream";
  FUN_007d9500(apvStack_10,&pcStack_18);
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&uStack_1c,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  if ((*(char *)((int)param_1 + 0x14) != '\0') &&
     (bVar2 = StreamReader_CheckArrayBytes(param_1,uStack_1c,1), bVar2)) {
    iStack_14 = StreamContext_GetPositionAndMarkNegative(param_1);
    StreamContext_SeekWithSignedAbsoluteGuard(param_1,uStack_1c,1);
    uVar7 = 0;
    uStack_24 = 0;
    if (uStack_20 == 2) {
      ReadUInt16AndAccumulateStatus(param_1,(ushort *)&uStack_24);
    }
    else {
      StreamReader_ReadByteInto(param_1,&bStack_25);
      uStack_24 = (uint)bStack_25;
    }
    if ((*(char *)((int)param_1 + 0x14) != '\0') &&
       (bVar2 = StreamReader_CheckArrayBytes(param_1,uStack_24 & 0xffff,uStack_20), bVar2)) {
      FUN_007998a0(apvStack_10,uStack_24 & 0xffff);
      if ((ushort)uStack_24 != 0) {
        do {
          ReferenceStore_ReadHandle(param_2,param_1,(uint *)&pcStack_18);
          if ((*(char *)((int)param_1 + 0x14) == '\0') ||
             (uVar6 = ResourceReferences_ResolveWideHandle
                                (param_2,(uint *)&pcStack_18,
                                 (undefined4 *)((uint)uVar7 * 0x10 + (int)apvStack_10[0])),
             (char)uVar6 == '\0')) goto LAB_005eba6e;
          uVar7 = uVar7 + 1;
        } while (uVar7 < (ushort)uStack_24);
      }
      iVar5 = StreamContext_GetPositionAndMarkNegative(param_1);
      StreamContext_SeekWithSignedAbsoluteGuard(param_1,iStack_14,0);
      cVar3 = SimOutfit_ReadWire(this,*(int **)((int)param_1 + 8),param_3,(int *)apvStack_10);
      if (cVar3 != '\0') {
        StreamContext_SeekWithSignedAbsoluteGuard(param_1,iVar5,0);
        *param_4 = this;
        uVar1 = *(undefined1 *)((int)param_1 + 0x14);
        if (apvStack_10[0] != (void *)0x0) {
          Memory_FreeIfNonNull(apvStack_10[0]);
        }
        return uVar1;
      }
LAB_005eba6e:
      if (apvStack_10[0] != (void *)0x0) {
        Memory_FreeIfNonNull(apvStack_10[0]);
      }
      (**(code **)(*this + 4))();
      return 0;
    }
  }
  if (apvStack_10[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_10[0]);
  }
  (**(code **)(*this + 4))();
  return 0;
}

