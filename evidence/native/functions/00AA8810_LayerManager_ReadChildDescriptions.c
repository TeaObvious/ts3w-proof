/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name, original PC 1.67 TS3W.exe. Reads exact layer-description type 03D86EA4,
   group 0, current layer identity. UInt16 layer version <5; UTF-16 name then UInt32 child count.
   Child IDs are UInt32 below version 2 and UInt64 otherwise, followed by UInt32 manager type.
   Creates only these described children using 00C64000 and appends them to this layer's child
   vector +A0. No enumeration of orphan LDES resources occurs. Hidden constructor arguments and
   recovered pointer-like type locals remain ABI/decompiler limitations; field roles are analyst
   inference. */

undefined1 __thiscall LayerManager_ReadChildDescriptions(void *this,int *resourceReader)

{
  int *piVar1;
  int *this_00;
  bool bVar2;
  int *piVar3;
  uint local_28;
  uint childCount;
  uint local_20;
  wchar_t *local_1c;
  uint local_18 [3];
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this_00 = resourceReader;
  local_c = *(undefined4 *)((int)this + 0x4c);
  local_18[2] = *(undefined4 *)((int)this + 0x48);
  local_8 = 0x3d86ea4;
  local_4 = 0;
  bVar2 = ResourceStreamContext_OpenWrite(resourceReader,local_18 + 2,0);
  if (!bVar2) {
    return 0;
  }
  FUN_00d4d2a0((uint *)((int)this + 0xa0));
  bVar2 = Stream_ReadUInt16((void *)this_00[2],(ushort *)((int)this + 0x78),this_00[4]);
  StreamReader_AccumulateStatus(this_00,bVar2);
  if (4 < *(ushort *)((int)this + 0x78)) {
    return 0;
  }
  StreamContext_ReadUtf16String(this_00,(undefined4 *)((int)this + 0x50));
  bVar2 = Stream_ReadUInt32((void *)this_00[2],&childCount,this_00[4]);
  StreamReader_AccumulateStatus(this_00,bVar2);
  local_28 = 0;
  if (childCount != 0) {
    do {
                    /* Iterate the descriptor's child count. For version>=2 read one UInt64 child
                       ID; older records widen one UInt32 to UInt64. A UInt32 manager type follows;
                       no LDES package scan determines admission. */
      if (*(ushort *)((int)this + 0x78) < 2) {
        bVar2 = Stream_ReadUInt32((void *)this_00[2],&local_20,this_00[4]);
        StreamReader_AccumulateStatus(this_00,bVar2);
        local_18[0] = local_20;
        local_18[1] = 0;
      }
      else {
        bVar2 = Stream_ReadUInt64((void *)this_00[2],(ulonglong *)local_18,this_00[4]);
        StreamReader_AccumulateStatus(this_00,bVar2);
      }
      bVar2 = Stream_ReadUInt32((void *)this_00[2],(uint *)&local_1c,this_00[4]);
      StreamReader_AccumulateStatus(this_00,bVar2);
                    /* Create the row's child manager via 00C64000, establish parent pointer +10,
                       and append successful child to vector +A0/+A4/+A8. Only descriptor-listed
                       children are admitted. */
      piVar3 = FUN_00c64000(*(void **)((int)this + 0xc),local_1c);
      resourceReader = piVar3;
      if (piVar3 != (int *)0x0) {
        (**(code **)*piVar3)();
        piVar3[4] = (int)this;
        piVar1 = *(int **)((int)this + 0xa4);
        if (piVar1 < *(int **)((int)this + 0xa8)) {
          *(int **)((int)this + 0xa4) = piVar1 + 1;
          if (piVar1 != (int *)0x0) {
            *piVar1 = (int)piVar3;
            (**(code **)*piVar3)();
          }
        }
        else {
          FUN_00c65ad0((uint *)((int)this + 0xa0),piVar1,(int *)&resourceReader);
          piVar3 = resourceReader;
        }
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar3 + 4))();
        }
      }
      local_28 = local_28 + 1;
    } while (local_28 < childCount);
  }
  ResourceStreamContext_Close(this_00);
  return (char)this_00[5];
}

