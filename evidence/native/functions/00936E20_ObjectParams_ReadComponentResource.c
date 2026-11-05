/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX resource plus1stackstream pointer/RET4, ALBoolean.
   UInt32format; onlyformat>=7 reads reference-table header99D570. Bytecount component hashes,
   registry937530 masks OR into+28; unknownhashignored. Byteparametercount<=32;
   UInt32namebytecount<=256 then rawbytes/hash and controlbyte. Controls0/3 consume
   UInt32byteLength+rawbytes,1/2 below7 inline16bytes(instance64/group32/type32),>=7
   UInt32index<keycount;4 consumesUInt32; default consumes no payload. Per-recordstatus failure
   false. Format>=4 attempts flagbyte, format5 extraDWORD; these finalread statuses are accumulated
   but NOT checked before AL1. Nativeconstructor defaults matter to that tail, not new
   mandatorytrailer guards. Stream endian/context behavior belongs primitives; no
   UTF8character-count interpretation. */

bool __thiscall ObjectParams_ReadComponentResource(void *this,int *param_1)

{
  bool bVar1;
  char cVar2;
  void *this_00;
  uint uVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  byte bVar7;
  undefined4 *puVar8;
  uint *valueOut;
  byte local_13e;
  byte local_13d;
  char local_13c [8];
  void *local_134;
  uint local_12c;
  char local_128;
  uint local_124;
  char *local_120;
  uint local_11c;
  uint local_118;
  void *local_114;
  void *local_110;
  int local_10c;
  undefined1 local_100 [256];
  
  local_114 = this;
  StreamReader_Construct(local_13c,param_1,1);
  local_11c = 0;
  local_120 = "Objects/ObjectResource/KeyTable";
  FUN_007d9500(&local_110,&local_120);
  bVar1 = Stream_ReadUInt32(local_134,&local_11c,local_12c);
  StreamReader_AccumulateStatus(local_13c,bVar1);
  if ((6 < local_11c) &&
     (cVar2 = ReferenceTable_ReadResourceKeys(local_13c,&local_110), cVar2 == '\0')) {
    if (local_110 != (void *)0x0) {
      Memory_FreeIfNonNull(local_110);
    }
    StreamReader_ReleaseAuxiliary(local_13c);
    return false;
  }
  local_13e = 0;
  bVar1 = Stream_ReadByte(local_134,&local_13e);
  StreamReader_AccumulateStatus(local_13c,bVar1);
  this_00 = ObjectRegistry_GetGlobal();
  bVar7 = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  if (local_13e != 0) {
    do {
      bVar1 = Stream_ReadUInt32(local_134,(uint *)&local_120,local_12c);
      StreamReader_AccumulateStatus(local_13c,bVar1);
      uVar3 = ObjectRegistry_FindMaskByNameHash(this_00,(uint)local_120);
      if (uVar3 != 0) {
        *(uint *)((int)this + 0x28) = *(uint *)((int)this + 0x28) | uVar3;
      }
      bVar7 = bVar7 + 1;
    } while (bVar7 < local_13e);
  }
  if (local_128 != '\0') {
    local_120 = (char *)0x40;
    bVar1 = Stream_ReadByte(local_134,&local_13e);
    StreamReader_AccumulateStatus(local_13c,bVar1);
    if ((local_128 != '\0') && (local_13e < 0x21)) {
      FUN_00936d50((void *)((int)this + 0x2c),(uint)local_13e);
      local_118 = 0;
      local_13d = 0;
      uVar3 = local_10c - (int)local_110 >> 4;
      if (local_13e != 0) {
        do {
          puVar8 = (undefined4 *)((uint)local_13d * 0x40 + *(int *)((int)this + 0x2c));
          bVar1 = Stream_ReadUInt32(local_134,&local_124,local_12c);
          StreamReader_AccumulateStatus(local_13c,bVar1);
          if ((local_128 == '\0') || (0x100 < local_124)) goto LAB_00937261;
          uVar4 = (**(code **)(*param_1 + 0x30))(local_100,local_124);
          bVar1 = uVar4 == local_124;
          if (!bVar1) {
            StreamReader_AccumulateStatus(local_13c,0);
          }
          local_128 = bVar1;
          uVar5 = FUN_007d0000((int)local_100,local_124);
          *puVar8 = uVar5;
          bVar1 = Stream_ReadByte(local_134,(byte *)(puVar8 + 0xf));
          StreamReader_AccumulateStatus(local_13c,bVar1);
          cVar2 = local_128;
          switch(*(byte *)(puVar8 + 0xf)) {
          case 0:
          case 3:
            bVar1 = Stream_ReadUInt32(local_134,&local_124,local_12c);
            StreamReader_AccumulateStatus(local_13c,bVar1);
            if (local_128 == '\0') goto LAB_00937261;
            FUN_00409e00(puVar8 + 1,local_124);
            uVar4 = (**(code **)(*param_1 + 0x30))(puVar8[1],local_124);
            cVar2 = uVar4 == local_124;
            if (!(bool)cVar2) {
              StreamReader_AccumulateStatus(local_13c,0);
            }
            break;
          case 1:
            if (local_11c < 7) {
              FUN_005fe990(local_13c,puVar8 + 6);
              StreamReader_ReadUInt32Into(local_13c,puVar8 + 9);
              valueOut = puVar8 + 8;
              goto LAB_00937196;
            }
            StreamReader_ReadUInt32Into(local_13c,&local_118);
            if (uVar3 <= local_118) goto LAB_00937261;
            puVar6 = (undefined4 *)(local_118 * 0x10 + (int)local_110);
            puVar8[6] = *puVar6;
            puVar8[7] = puVar6[1];
            puVar8[8] = puVar6[2];
            puVar8[9] = puVar6[3];
            cVar2 = local_128;
            break;
          case 2:
            if (local_11c < 7) {
              FUN_005fe990(local_13c,puVar8 + 10);
              StreamReader_ReadUInt32Into(local_13c,puVar8 + 0xd);
              valueOut = puVar8 + 0xc;
              goto LAB_00937196;
            }
            StreamReader_ReadUInt32Into(local_13c,&local_118);
            if (uVar3 <= local_118) goto LAB_00937261;
            puVar6 = (undefined4 *)(local_118 * 0x10 + (int)local_110);
            puVar8[10] = *puVar6;
            puVar8[0xb] = puVar6[1];
            puVar8[0xc] = puVar6[2];
            puVar8[0xd] = puVar6[3];
            cVar2 = local_128;
            break;
          case 4:
            valueOut = puVar8 + 0xe;
LAB_00937196:
            StreamReader_ReadUInt32Into(local_13c,valueOut);
            cVar2 = local_128;
          }
          local_128 = cVar2;
          if (local_128 == '\0') goto LAB_00937261;
          local_120 = local_120 + (puVar8[2] - puVar8[1]) + 0x40;
          local_13d = local_13d + 1;
          this = local_114;
        } while (local_13d < local_13e);
      }
      if (3 < local_11c) {
        bVar1 = Stream_ReadByte(local_134,(byte *)((int)this + 0x3c));
        StreamReader_AccumulateStatus(local_13c,bVar1);
      }
      if (local_11c == 5) {
        bVar1 = Stream_ReadUInt32(local_134,(uint *)&local_114,local_12c);
        StreamReader_AccumulateStatus(local_13c,bVar1);
      }
      FUN_00731be0(this,(int)local_120);
      if (local_110 != (void *)0x0) {
        Memory_FreeIfNonNull(local_110);
      }
      StreamReader_ReleaseAuxiliary(local_13c);
      return true;
    }
  }
LAB_00937261:
  if (local_110 != (void *)0x0) {
    Memory_FreeIfNonNull(local_110);
  }
  StreamReader_ReleaseAuxiliary(local_13c);
  return false;
}

