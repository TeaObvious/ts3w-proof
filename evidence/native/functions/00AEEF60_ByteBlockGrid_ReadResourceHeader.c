/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction persistence contract): ECX grid. Read06DC847E
   version/dimensions,allocate uniform/ref storage,read detailed byte count and UInt16 refs. Success
   leaves stream open for parent to read uniform then detailed buffers. Header alone is not complete
   payload. It does not validate a project64-paint cap. */

undefined4 __thiscall
ByteBlockGrid_ReadResourceHeader
          (void *this,void *param_1,uint param_2,uint param_3,undefined4 param_4)

{
  void *this_00;
  bool bVar1;
  undefined3 extraout_var;
  uint uVar2;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  undefined3 uVar3;
  uint local_14;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  uint local_4;
  
  this_00 = param_1;
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x6dc847e;
  local_4 = param_2;
  if (*(int *)((int)param_1 + 4) == 0) {
    bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_10,0);
    uVar3 = extraout_var;
    if (!bVar1) goto LAB_00aef06a;
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_14,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&param_2,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  ByteBlockGrid_SetDimensions(this,(int)param_1,param_2);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&param_3,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  ByteVector_ResizeZeroed((void *)((int)this + 0x20),param_3);
  uVar2 = Stream_ReadUtf16UnitsEndian
                    (*(int **)((int)this_00 + 8),*(ushort **)((int)this + 0x30),
                     *(int *)((int)this + 0x34) - (int)*(ushort **)((int)this + 0x30) >> 1,
                     *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,(byte)uVar2);
  uVar3 = extraout_var_00;
  if (*(char *)((int)this_00 + 0x14) == '\0') {
    ResourceStreamContext_Close(this_00);
    uVar3 = extraout_var_01;
  }
LAB_00aef06a:
  return CONCAT31(uVar3,*(undefined1 *)((int)this_00 + 0x14));
}

