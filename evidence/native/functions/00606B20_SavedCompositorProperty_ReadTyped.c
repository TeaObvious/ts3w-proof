/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 typed compositor property reader. ECX property owner; stack4 full dispatch type,
   stack8 propertyId, stackC raw stream, stack10 key adapter, stack14 mode; RET14, AL Boolean
   result. Types0..13 select existing scalar/vector/resource/skip readers. Type12 initializes
   full16-byte resourcezero; null adapter reads raw key, mode1 readsUInt16 then adapter+8, mode2
   passes reader wrapper to adapter+0C, other modes readbyte. Adapter return is ignored; property
   setter supplies return. Type13 skips UInt16 length and returns1; unknown type returns0.
   Full346instructions940ownedbytes; jump-table data at606ECC remains outside body.
   Property-loop606F10 and setter child policies remain unchanged. */

bool __thiscall
SavedCompositorProperty_ReadTyped
          (void *this,uint propertyType,uint propertyId,void *stream,void *keyAdapter,uint mode)

{
  void *stream_00;
  void *pvVar1;
  undefined4 uVar2;
  float local_28 [2];
  uint local_20 [2];
  undefined1 local_18 [24];
  
  pvVar1 = keyAdapter;
  stream_00 = stream;
  switch(propertyType) {
  case 0:
    Stream_ReadBoolean(stream,&stream);
    uVar2 = FUN_00606430(this,propertyId,0,(byte *)&stream);
    return (char)uVar2 != '\0';
  case 1:
    Stream_ReadByte(stream,(byte *)&stream);
    uVar2 = FUN_006064b0(this,propertyId,1,(byte *)&stream);
    return (char)uVar2 != '\0';
  case 2:
    Stream_ReadUInt16(stream,(ushort *)&stream,1);
    uVar2 = FUN_00606520(this,propertyId,2,(short *)&stream);
    return (char)uVar2 != '\0';
  case 3:
    Stream_ReadUInt32(stream,(uint *)&stream,1);
    uVar2 = FUN_00606590(this,propertyId,3,(uint *)&stream);
    return (char)uVar2 != '\0';
  case 4:
    Stream_ReadUInt64(stream,(ulonglong *)local_28,1);
    uVar2 = FUN_00606600(this,propertyId,4,(uint *)local_28);
    return (char)uVar2 != '\0';
  case 5:
    Stream_ReadByte(stream,(byte *)&stream);
    uVar2 = FUN_00606670(this,propertyId,5,(byte *)&stream);
    return (char)uVar2 != '\0';
  case 6:
    Stream_ReadUInt16(stream,(ushort *)&stream,1);
    uVar2 = FUN_006066e0(this,propertyId,6,(ushort *)&stream);
    return (char)uVar2 != '\0';
  case 7:
    Stream_ReadUInt32(stream,(uint *)&stream,1);
    uVar2 = FUN_00606750(this,propertyId,7,(uint *)&stream);
    return (char)uVar2 != '\0';
  case 8:
    Stream_ReadUInt64(stream,(ulonglong *)local_28,1);
    uVar2 = FUN_006067c0(this,propertyId,8,(ulonglong *)local_28);
    return (char)uVar2 != '\0';
  case 9:
    Stream_ReadUInt32(stream,(uint *)&stream,1);
    uVar2 = FUN_00606830(this,propertyId,9,(float *)&stream);
    return (char)uVar2 != '\0';
  case 10:
    Stream_ReadUInt32ArrayByByteOrder(stream,(uint *)local_28,4,1);
    uVar2 = FUN_006068b0(this,propertyId,10,local_28);
    return (char)uVar2 != '\0';
  case 0xb:
    Stream_ReadUInt32ArrayByByteOrder(stream,(uint *)local_28,4,1);
    uVar2 = FUN_00606960(propertyId,0xb,local_28);
    return (char)uVar2 != '\0';
  case 0xc:
    break;
  case 0xd:
    Stream_ReadUInt16(stream,(ushort *)&stream,1);
    (**(code **)(*(int *)stream_00 + 0x28))((uint)stream & 0xffff,1);
    return true;
  default:
    return false;
  }
  local_28[0] = 0.0;
  local_28[1] = 0.0;
  local_20[0] = 0;
  local_20[1] = 0;
  if (keyAdapter == (void *)0x0) {
    Stream_ReadUInt64(stream,(ulonglong *)local_28,1);
    Stream_ReadUInt32(stream_00,local_20 + 1,1);
    Stream_ReadUInt32(stream_00,local_20,1);
  }
  else if (mode == 2) {
    StreamReader_Construct(local_18,stream,1);
    (**(code **)(*(int *)pvVar1 + 0xc))(local_18,local_28);
    StreamReader_ReleaseAuxiliary(local_18);
  }
  else if (mode == 1) {
    Stream_ReadUInt16(stream,(ushort *)&stream,1);
    (**(code **)(*(int *)pvVar1 + 8))(stream,local_28);
  }
  else {
    Stream_ReadByte(stream,(byte *)&stream);
    (**(code **)(*(int *)pvVar1 + 8))((uint)stream & 0xff,local_28);
  }
  uVar2 = FUN_006069d0(this,propertyId,0xc,(uint *)local_28);
  return (char)uVar2 != '\0';
}

