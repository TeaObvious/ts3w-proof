/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  char cVar2;
  uint uVar3;
  int *piVar4;
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
  cVar2 = FUN_007d84c0(resourceReader,local_18 + 2,'\0');
  if (cVar2 == '\0') {
    return 0;
  }
  FUN_00d4d2a0((uint *)((int)this + 0xa0));
  uVar3 = FUN_004dd8e0((int *)this_00[2],(ushort *)((int)this + 0x78));
  FUN_007d79f0(this_00,(byte)uVar3);
  if (*(ushort *)((int)this + 0x78) < 5) {
    FUN_007d96b0(this_00,(undefined4 *)((int)this + 0x50));
    uVar3 = FUN_004dd980((int *)this_00[2],&childCount);
    FUN_007d79f0(this_00,(byte)uVar3);
    local_28 = 0;
    if (childCount != 0) {
      do {
                    /* Iterate the descriptor's child count. For version>=2 read one UInt64 child
                       ID; older records widen one UInt32 to UInt64. A UInt32 manager type follows;
                       no LDES package scan determines admission. */
        if (*(ushort *)((int)this + 0x78) < 2) {
          uVar3 = FUN_004dd980((int *)this_00[2],&local_20);
          FUN_007d79f0(this_00,(byte)uVar3);
          local_18[0] = local_20;
          local_18[1] = 0;
        }
        else {
          uVar3 = FUN_004ddab0((int *)this_00[2],local_18);
          FUN_007d79f0(this_00,(byte)uVar3);
        }
        uVar3 = FUN_004dd980((int *)this_00[2],(uint *)&local_1c);
        FUN_007d79f0(this_00,(byte)uVar3);
                    /* Create the row's child manager via 00C64000, establish parent pointer +10,
                       and append successful child to vector +A0/+A4/+A8. Only descriptor-listed
                       children are admitted. */
        piVar4 = FUN_00c64000(*(void **)((int)this + 0xc),local_1c);
        resourceReader = piVar4;
        if (piVar4 != (int *)0x0) {
          (**(code **)*piVar4)();
          piVar4[4] = (int)this;
          piVar1 = *(int **)((int)this + 0xa4);
          if (piVar1 < *(int **)((int)this + 0xa8)) {
            *(int **)((int)this + 0xa4) = piVar1 + 1;
            if (piVar1 != (int *)0x0) {
              *piVar1 = (int)piVar4;
              (**(code **)*piVar4)();
            }
          }
          else {
            FUN_00c65ad0((uint *)((int)this + 0xa0),piVar1,(int *)&resourceReader);
            piVar4 = resourceReader;
          }
          if (piVar4 != (int *)0x0) {
            (**(code **)(*piVar4 + 4))();
          }
        }
        local_28 = local_28 + 1;
      } while (local_28 < childCount);
    }
    FUN_007d7a70((int)this_00);
    return (char)this_00[5];
  }
  return 0;
}

