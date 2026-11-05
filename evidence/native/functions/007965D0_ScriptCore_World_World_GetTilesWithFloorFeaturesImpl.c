/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163ab8 (TS3W.exe).
   ScriptCore.World::World_GetTilesWithFloorFeaturesImpl [assembly=ScriptCore token=0x0600085B;
   lotId: System.UInt64, roomDefinition: Sims3.SimIFace.eRoomDefinition, featureFlags:
   Sims3.SimIFace.FloorFeatureFlags, mask: System.UInt16; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 complete799byte body/248instructions. Physical cdecl fiveDWORD slots: lotGUIDlow/high,
   signed roomDefinition, fullDWORD requestedFlags, maskword in final stackslot; plainRET EAXmanaged
   array handle/0. Requires world/lot/room manager. Iterates EVERY live level bottom-up, then X,
   then Z; each AB6600 gets FULL requestedDWORD and mask. When flag layer exists, All0 succeeds even
   for implicit zero-valued cells, so enumeration0 returns all bounded cells; sparse nonzero-only
   iteration is wrong. Missing flag layer causes All0false. On selected All match, room queried
   viaB470E0 with requested definition, then low16 X/Z/level/room packed at shifts0/16/32/48
   (coordinates valid compact signed lot domain). After All failure only, requestedbit4 plus rain
   manager enables independent outside-room/rain testD6DFF0. That extra rain fallback is NOT
   equivalent to stored flag4 and is not established by the cell predicate. Returns null for no
   matches; allocation/copy through runtime virtual88 andA0. This is static control flow, not
   executed gameplay. */

undefined * __cdecl
ScriptCore.World::World_GetTilesWithFloorFeaturesImpl
          (ulonglong lotId,int roomDefinition,uint requestedFlags,ushort requestedMask)

{
  void *pvVar1;
  undefined *puVar2;
  bool bVar3;
  char cVar4;
  byte bVar5;
  short sVar6;
  int *piVar7;
  int iVar8;
  uint uVar9;
  undefined4 uVar10;
  int iVar11;
  uint *puVar12;
  uint uVar13;
  uint *puVar14;
  undefined2 local_7c;
  char local_7a;
  ushort local_78;
  char local_76;
  undefined1 local_75;
  ushort local_74;
  char local_72;
  undefined1 local_71;
  undefined *local_70;
  void *local_6c;
  int local_68;
  int local_64;
  float local_60;
  float local_5c;
  int local_58;
  int local_54;
  uint local_50;
  uint local_4c;
  uint local_48;
  uint local_44;
  uint *local_40;
  uint *local_3c;
  uint *local_38;
  char *local_34;
  float local_30;
  undefined4 uStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20 [3];
  float fStack_14;
  
  pvVar1 = DAT_011edbc4;
  puVar14 = (uint *)0x0;
  local_70 = (undefined *)0x0;
  if (((DAT_011edbc4 == (void *)0x0) ||
      (piVar7 = WorldObjects_FindLotByGuid(DAT_011edbc4,(uint)lotId,lotId._4_4_,(uint *)0x0),
      piVar7 == (int *)0x0)) || (local_6c = (void *)piVar7[0xa6], local_6c == (void *)0x0)) {
    return (undefined *)0x0;
  }
  local_64 = *(int *)((int)pvVar1 + 0x74);
  iVar8 = piVar7[0x5d];
  local_68 = piVar7[0x5e];
  iVar11 = piVar7[0x60];
  local_7c._0_1_ = 0xff;
  local_7c._1_1_ = 0xff;
  local_7a = (char)piVar7[0x5f];
  puVar12 = (uint *)0x0;
  local_40 = (uint *)0x0;
  local_3c = (uint *)0x0;
  local_38 = (uint *)0x0;
  local_34 = "Scripting/WorldHost";
  local_58 = iVar8;
  local_54 = iVar11;
  if (local_7a <= iVar11) {
    do {
      local_7c._0_1_ = 0;
      if (0 < iVar8) {
        do {
          local_7c = (ushort)(byte)local_7c;
          puVar12 = puVar14;
          if (0 < local_68) {
            do {
              bVar3 = LotFloorFeatures_TestAll
                                (piVar7,(char *)&local_7c,requestedFlags,requestedMask);
              if (bVar3) {
                local_78 = local_7c;
                local_76 = local_7a;
                local_75 = 1;
                iVar8 = FUN_00b470e0(local_6c,(char *)&local_78,roomDefinition,'\x01');
                uVar9 = (int)local_7c._1_1_ << 0x10 | (int)(char)(byte)local_7c;
                uVar13 = iVar8 << 0x10 | (int)local_7a & 0xffffU | (int)uVar9 >> 0x1f;
                local_50 = uVar9;
                local_4c = uVar13;
                if (puVar12 < local_38) {
LAB_0079682a:
                  local_3c = puVar12 + 2;
                  puVar14 = local_3c;
                  if (puVar12 != (uint *)0x0) {
                    *puVar12 = uVar9;
                    puVar12[1] = uVar13;
                  }
                }
                else {
                  puVar14 = &local_50;
LAB_00796842:
                  FUN_00572360(&local_40,puVar12,puVar14);
                  puVar14 = local_3c;
                }
              }
              else {
                puVar14 = puVar12;
                if (((requestedFlags >> 2 & 1) != 0) && (local_64 != 0)) {
                  local_74 = local_7c;
                  local_72 = local_7a;
                  local_71 = 1;
                  sVar6 = FUN_00b470e0(local_6c,(char *)&local_74,roomDefinition,'\x01');
                  if (sVar6 == 0) {
                    FUN_00ab16e0(piVar7,(float)(int)(char)(byte)local_7c,(float)(int)local_7c._1_1_,
                                 &local_60,&local_5c);
                    fStack_28 = local_5c;
                    fStack_24 = local_60;
                    uStack_2c = 0;
                    local_30 = local_60;
                    local_20[0] = local_60;
                    local_20[1] = 0.0;
                    local_20[2] = local_5c;
                    fStack_14 = local_60;
                    uVar10 = Seasons_HasRainPuddleAtPoint(local_20,piVar7,'\x01','\0');
                    if ((char)uVar10 != '\0') {
                      uVar9 = (int)local_7c._1_1_ << 0x10 | (int)(char)(byte)local_7c;
                      uVar13 = (int)uVar9 >> 0x1f | (int)local_7a & 0xffffU;
                      local_48 = uVar9;
                      local_44 = uVar13;
                      if (puVar12 < local_38) goto LAB_0079682a;
                      puVar14 = &local_48;
                      goto LAB_00796842;
                    }
                  }
                }
              }
              cVar4 = local_7c._1_1_ + '\x01';
              local_7c = CONCAT11(cVar4,(byte)local_7c);
              iVar8 = local_58;
              puVar12 = puVar14;
            } while (cVar4 < local_68);
          }
          bVar5 = (byte)local_7c + 1;
          iVar11 = local_54;
          local_7c._0_1_ = bVar5;
        } while ((char)bVar5 < iVar8);
      }
      puVar12 = local_40;
      local_7a = local_7a + '\x01';
    } while (local_7a <= iVar11);
    if (local_40 != puVar14) {
      piVar7 = (int *)GetGlobalInterfacePointer_11D5BBC();
      iVar8 = (int)puVar14 - (int)puVar12 >> 3;
      (**(code **)(*piVar7 + 0x88))(&local_70,iVar8);
      (**(code **)(*piVar7 + 0xa0))(&local_78,puVar12,0,iVar8);
    }
  }
  puVar2 = local_70;
  if (puVar12 != (uint *)0x0) {
    Memory_FreeIfNonNull(puVar12);
  }
  return puVar2;
}

