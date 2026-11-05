/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* Analyst: SSET record reader. Requires SSET marker, reads mode/key pairs, variable-length fields
   and the remaining variant/bytecode section through ShaderSet_ReadVariantParametersAndBytecode.
   Decompiler alloca/stack names are synthetic; check stream lengths, byte counts and low-byte
   result in machine code. */

uint ShaderSet_ReadSSET(undefined4 *param_1,uint param_2)

{
  uint *puVar1;
  bool bVar2;
  uint extraout_EAX;
  undefined4 *puVar3;
  int *this;
  undefined4 uVar4;
  uint uVar5;
  undefined1 *extraout_EAX_00;
  void *extraout_EAX_01;
  void *pvVar6;
  int iVar7;
  void *pvStack_106c;
  undefined1 *local_1068;
  undefined1 *local_1064;
  undefined *local_1060;
  char *local_105c;
  int *local_1058;
  uint uStack_1054;
  int local_1050;
  uint uStack_104c;
  uint local_1048;
  uint uStack_1044;
  uint uStack_1040;
  void *local_103c;
  uint uStack_1038;
  uint uStack_1034;
  char *pcStack_102c;
  undefined4 *puStack_1028;
  undefined4 *puStack_1024;
  uint **ppuStack_1020;
  char *pcStack_101c;
  undefined4 *puStack_1018;
  undefined4 auStack_1014 [511];
  char *pcStack_818;
  uint *puStack_814;
  uint *puStack_810;
  uint auStack_800 [511];
  undefined4 uStack_4;
  
  uStack_4 = 0x79cc0a;
  bVar2 = Stream_ReadUInt32((void *)param_1[2],(uint *)&local_103c,param_1[4]);
  StreamReader_AccumulateStatus(param_1,bVar2);
  if (local_103c != (void *)0x54455353) {
    StreamReader_AccumulateStatus(param_1,0);
    *(undefined1 *)(param_1 + 5) = 0;
    return extraout_EAX & 0xffffff00;
  }
  local_1068 = &DAT_011c8e54;
  local_1064 = &DAT_011c8e54;
  local_105c = "Shader/Library";
  local_1060 = &DAT_011c8e55;
  ShaderStream_ReadAlignedString(param_1,&local_1068);
  local_1050 = FUN_007d0000((int)local_1068,(int)local_1064 - (int)local_1068);
  puVar3 = (undefined4 *)FUN_004e4500(0x50,"Shader/ShaderFactory/AnnotatedShaderSet",0);
  if (puVar3 == (undefined4 *)0x0) {
    local_1058 = (int *)0x0;
    this = local_1058;
  }
  else {
    this = FUN_007a0240(puVar3);
    local_1058 = this;
    if (this != (int *)0x0) {
      (**(code **)*this)();
    }
  }
  bVar2 = Stream_ReadUInt32((void *)param_1[2],&local_1048,param_1[4]);
  StreamReader_AccumulateStatus(param_1,bVar2);
  uStack_104c = 0;
  if (local_1048 != 0) {
    do {
      bVar2 = Stream_ReadUInt32((void *)param_1[2],&uStack_1040,param_1[4]);
      StreamReader_AccumulateStatus(param_1,bVar2);
      bVar2 = Stream_ReadUInt32((void *)param_1[2],&uStack_1044,param_1[4]);
      StreamReader_AccumulateStatus(param_1,bVar2);
      puVar1 = (uint *)this[4];
      uStack_1034 = uStack_1044;
      uStack_1038 = uStack_1040;
      if (puVar1 < (uint *)this[5]) {
        this[4] = (int)(puVar1 + 2);
        if (puVar1 != (uint *)0x0) {
          *puVar1 = uStack_1040;
          puVar1[1] = uStack_1044;
        }
      }
      else {
        FUN_0040c540(this + 3,puVar1,&uStack_1038);
      }
      uStack_104c = uStack_104c + 1;
    } while (uStack_104c < local_1048);
  }
  bVar2 = Stream_ReadUInt32((void *)param_1[2],&uStack_1054,param_1[4]);
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = StreamReader_CheckArrayBytes(param_1,uStack_1054,1);
  if (bVar2) {
    puStack_814 = auStack_800;
    puStack_810 = auStack_800;
    FUN_0044fd10(&puStack_814,uStack_1054);
    uVar4 = Stream_ReadUInt32ArrayByByteOrder((int *)param_1[2],puStack_814,uStack_1054,param_1[4]);
    StreamReader_AccumulateStatus(param_1,(byte)uVar4);
    bVar2 = Stream_ReadUInt32((void *)param_1[2],(uint *)&pvStack_106c,param_1[4]);
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = StreamReader_CheckArrayBytes(param_1,(uint)pvStack_106c,0x10);
    if (bVar2) {
      puStack_1028 = auStack_1014;
      ppuStack_1020 = &puStack_814;
      pcStack_101c = "Shader/ShaderLibrary/ShaderSetFields";
      puStack_1024 = puStack_1028;
      puStack_1018 = puStack_1028;
      FUN_0079cb50(&puStack_1028,(uint)pvStack_106c);
      pvVar6 = (void *)0x0;
      if (pvStack_106c != (void *)0x0) {
        iVar7 = 0;
        do {
          puVar1 = (uint *)((int)puStack_1028 + iVar7);
          bVar2 = Stream_ReadUInt32((void *)param_1[2],puVar1,param_1[4]);
          StreamReader_AccumulateStatus(param_1,bVar2);
          StreamContext_ReadCountedByteString(param_1,puVar1 + 1);
          bVar2 = Stream_ReadUInt32((void *)param_1[2],puVar1 + 5,param_1[4]);
          StreamReader_AccumulateStatus(param_1,bVar2);
          bVar2 = Stream_ReadUInt32((void *)param_1[2],puVar1 + 6,param_1[4]);
          StreamReader_AccumulateStatus(param_1,bVar2);
          bVar2 = Stream_ReadUInt32((void *)param_1[2],puVar1 + 7,param_1[4]);
          StreamReader_AccumulateStatus(param_1,bVar2);
          pvVar6 = (void *)((int)pvVar6 + 1);
          iVar7 = iVar7 + 0x20;
          this = local_1058;
        } while (pvVar6 < pvStack_106c);
      }
      this[2] = local_1050;
      FUN_00b7b140(this + 7,puStack_814,
                   (int)(puStack_814 + ((int)puStack_810 - (int)puStack_814 >> 2)));
      FUN_0079c8a0(this + 0xb,puStack_1028,
                   puStack_1028 + ((int)puStack_1024 - (int)puStack_1028 >> 5) * 8);
      FUN_004f3c90(&uStack_1038,&local_1068);
      (**(code **)(*this + 0x14))(uStack_1038);
      if ((2 < (int)(uStack_1034 - (int)local_103c & 0xfffffffe)) && (local_103c != (void *)0x0)) {
        Memory_FreeIfNonNull(local_103c);
      }
      if (*(char *)(param_1 + 5) == '\0') {
        StreamReader_AccumulateStatus(param_1,0);
      }
      else {
        uVar5 = ShaderSet_ReadVariantParametersAndBytecode
                          (this,(int *)param_1[2],param_1[4],param_2);
        if ((char)uVar5 != '\0') {
          *param_1 = this;
          FUN_0079c150((uint)pcStack_102c,(uint)puStack_1028);
          if ((pcStack_102c != (char *)0x0) && (pcStack_102c != pcStack_101c)) {
            Memory_FreeIfNonNull(pcStack_102c);
          }
          if ((pcStack_818 != (char *)0x0) &&
             (pcStack_818 != "Shader/ShaderLibrary/ShaderSetBytecode")) {
            Memory_FreeIfNonNull(pcStack_818);
          }
          if ((1 < (int)local_1064 - (int)pvStack_106c) && (pvStack_106c != (void *)0x0)) {
            Memory_FreeIfNonNull(pvStack_106c);
            pvStack_106c = extraout_EAX_01;
          }
          return CONCAT31((int3)((uint)pvStack_106c >> 8),1);
        }
        StreamReader_AccumulateStatus(param_1,0);
      }
      *(undefined1 *)(param_1 + 5) = 0;
      FUN_0079c150((uint)pcStack_102c,(uint)puStack_1028);
      if ((pcStack_102c != (char *)0x0) && (pcStack_102c != pcStack_101c)) {
        Memory_FreeIfNonNull(pcStack_102c);
      }
      if ((pcStack_818 != (char *)0x0) && (pcStack_818 != "Shader/ShaderLibrary/ShaderSetBytecode"))
      {
        Memory_FreeIfNonNull(pcStack_818);
      }
      (**(code **)(*this + 4))();
      goto LAB_0079d0b6;
    }
    StreamReader_AccumulateStatus(param_1,0);
    *(undefined1 *)(param_1 + 5) = 0;
    if ((puStack_814 != (uint *)0x0) && (puStack_814 != auStack_800)) {
      Memory_FreeIfNonNull(puStack_814);
    }
  }
  else {
    StreamReader_AccumulateStatus(param_1,0);
    *(undefined1 *)(param_1 + 5) = 0;
  }
  if (this != (int *)0x0) {
    (**(code **)(*this + 4))();
  }
LAB_0079d0b6:
  if ((1 < (int)local_1060 - (int)local_1068) && (local_1068 != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(local_1068);
    local_1068 = extraout_EAX_00;
  }
  return (uint)local_1068 & 0xffffff00;
}

