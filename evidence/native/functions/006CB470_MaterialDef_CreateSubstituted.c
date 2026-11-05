/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. ECX=definition; overrides pointer, UInt32 count, two BYTE
   flags, output definition pointer; RET20, Boolean AL. Override MEMORY stride is 0x28=40 bytes.
   Allocates 0x40 bytes for SubstitutedMaterialDef; allocation false leaves output unwritten.
   Retains and publishes output BEFORE parameter construction. Copies identity DWORDs28/2C. Existing
   typed count uses signed-positive iteration and six tag1..6 switch entries. Tag1 takes FIRST
   matching override hash, marks used, and uses its pointer+20 with the EXISTING element count;
   override count/type is not checked for this replacement. Tags2/3 copy original without searching.
   Tags4..6 mark the first matching hash USED BEFORE the resource-type gate; allow-type-change0
   compares only old ResourceKey.TYPE against override+18. Compatible tag4 uses key16 at +10; tag6
   uses DWORD+8. Other matched types lack a generic validation here. Unmatched original records
   remain. Append-missing adds only unused tag1(pointer20/count24) and tag4(key16) overrides.
   Builder duplicate policy is not established. Copies bytes3C/3D, serializes through 6CB120, cleans
   local state and returns true. No general finite/count/resource admission or transaction
   guarantee. Six switch pointers6CB8D4..EB are data outside the function body; backend
   program/raster behavior remains separate. */

bool __thiscall
MaterialDef_CreateSubstituted
          (void *this,byte *overrides,uint overrideCount,byte allowResourceTypeChange,
          byte appendMissing,void **outputDefinition)

{
  undefined4 *this_00;
  uint uVar1;
  uint uVar2;
  uint *puVar3;
  byte *pbVar4;
  int local_88;
  int local_84;
  uint *local_80;
  int local_7c;
  uint local_78;
  int local_74;
  void *local_6c;
  int local_68;
  int local_64 [8];
  undefined4 local_44;
  undefined4 local_40;
  int local_3c;
  undefined4 local_38;
  undefined1 *local_34;
  undefined1 *local_30;
  undefined1 local_20 [32];
  
  local_6c = this;
  local_34 = local_20;
  local_30 = local_20;
  this_00 = FUN_004e4500(0x40,"Renderer/Material/SubstitutedMaterialDef",0,0,0,0);
  if (this_00 == (undefined4 *)0x0) {
    if ((local_34 != (undefined1 *)0x0) && (local_34 != local_20)) {
      Memory_FreeIfNonNull(local_34);
    }
    return false;
  }
  *this_00 = &PTR_FUN_00fb3c14;
  LOCK();
  this_00[1] = 0;
  UNLOCK();
  this_00[2] = 0;
  this_00[3] = 0;
  this_00[4] = 0;
  this_00[5] = 0;
  this_00[8] = 0;
  this_00[9] = 0;
  this_00[7] = 0;
  this_00[6] = 0;
  *this_00 = &PTR_FUN_00ff6b2c;
  this_00[0xc] = 0;
  this_00[0xe] = 0;
  this_00[10] = 0;
  this_00[0xd] = 0;
  this_00[0xb] = 0;
  *(undefined1 *)(this_00 + 0xf) = 0;
  *(undefined1 *)((int)this_00 + 0x3d) = 0;
  FUN_006cb420(&local_34,overrideCount);
  uVar1 = 0;
  if (overrideCount != 0) {
    do {
      local_34[uVar1] = 0;
      uVar1 = uVar1 + 1;
    } while (uVar1 < overrideCount);
  }
  (**(code **)*this_00)();
  *outputDefinition = this_00;
  this_00[10] = *(undefined4 *)((int)this + 0x28);
  this_00[0xb] = *(undefined4 *)((int)this + 0x2c);
  FUN_00799680(local_64);
  FUN_00799140(&local_84,*(undefined4 *)((int)this + 0x30));
  local_68 = FUN_00799150(&local_84);
  local_88 = 0;
  if (0 < local_68) {
    do {
      FUN_007991e0(&local_84,local_88,(int *)&local_80);
      uVar1 = FUN_007991b0(&local_84,local_88);
      switch(local_74) {
      case 1:
        uVar2 = 0;
        if (overrideCount != 0) {
          puVar3 = (uint *)(overrides + 4);
          do {
            if (*puVar3 == uVar1) {
              local_34[uVar2] = 1;
              if (overrides + uVar2 * 0x28 != (byte *)0x0) {
                FUN_007999d0(local_64,uVar1,*(void **)(overrides + uVar2 * 0x28 + 0x20),local_7c);
                goto switchD_006cb5e4_default;
              }
              break;
            }
            uVar2 = uVar2 + 1;
            puVar3 = puVar3 + 10;
          } while (uVar2 < overrideCount);
        }
        FUN_007999d0(local_64,uVar1,local_80,local_7c);
        break;
      case 2:
        FUN_007999f0(local_64,uVar1,local_80,local_7c);
        break;
      case 3:
        FUN_00799a10(local_64,uVar1,local_80,local_7c);
        break;
      case 4:
      case 5:
      case 6:
        uVar2 = 0;
        if (overrideCount != 0) {
          puVar3 = (uint *)(overrides + 4);
          do {
            if (*puVar3 == uVar1) {
                    /* Marks matchedoverrideUSED before resourceTYPEcompatibility check;
                       failedtypecheck doesnotappendthatentrylater. */
                    /* Marks matching override USED before checking resource TYPE. A failed type
                       check prevents later append of this entry. */
              local_34[uVar2] = 1;
              pbVar4 = overrides + uVar2 * 0x28;
              if (pbVar4 == (byte *)0x0) break;
              if (allowResourceTypeChange == 0) {
                local_44 = 0;
                local_40 = 0;
                local_3c = 0;
                local_38 = 0;
                FUN_007992f0(&local_84,local_88,&local_44);
                if (local_3c != *(int *)(pbVar4 + 0x18)) break;
              }
              if (*(int *)pbVar4 == 4) {
                FUN_00799a30(local_64,uVar1,*(int *)(pbVar4 + 0x10),*(int *)(pbVar4 + 0x14),
                             *(int *)(pbVar4 + 0x18),*(int *)(pbVar4 + 0x1c),local_78);
              }
              else if (*(int *)pbVar4 == 6) {
                    /* Three stack DWORDs: hash, override+8 value, existing auxiliary word. Prior
                       decompiler call omitted the value/auxiliary words. */
                FUN_00799ab0(local_64,uVar1,*(uint *)(pbVar4 + 8),local_78);
              }
              goto switchD_006cb5e4_default;
            }
            uVar2 = uVar2 + 1;
            puVar3 = puVar3 + 10;
          } while (uVar2 < overrideCount);
        }
        if (local_74 == 4) {
          FUN_00799a30(local_64,uVar1,*local_80,local_80[1],local_80[2],local_80[3],local_78);
        }
        else if (local_74 == 6) {
          FUN_00799ab0(local_64,uVar1,(uint)local_80,local_78);
        }
        else if (local_74 == 5) {
          FUN_00799ab0(local_64,uVar1,*local_80,local_78);
        }
      }
switchD_006cb5e4_default:
      local_88 = local_88 + 1;
    } while (local_88 < local_68);
  }
  if ((appendMissing != 0) && (uVar1 = 0, overrideCount != 0)) {
    pbVar4 = overrides + 0x24;
    do {
      if (local_34[uVar1] == '\0') {
        if (*(int *)(pbVar4 + -0x24) == 1) {
          FUN_007999d0(local_64,*(int *)(pbVar4 + -0x20),*(void **)(pbVar4 + -4),*(int *)pbVar4);
        }
        else if (*(int *)(pbVar4 + -0x24) == 4) {
          FUN_00799a30(local_64,*(int *)(pbVar4 + -0x20),*(int *)(pbVar4 + -0x14),
                       *(int *)(pbVar4 + -0x10),*(int *)(pbVar4 + -0xc),*(int *)(pbVar4 + -8),0);
        }
      }
      uVar1 = uVar1 + 1;
      pbVar4 = pbVar4 + 0x28;
    } while (uVar1 < overrideCount);
  }
  *(undefined1 *)(this_00 + 0xf) = *(undefined1 *)((int)local_6c + 0x3c);
  *(undefined1 *)((int)this_00 + 0x3d) = *(undefined1 *)((int)local_6c + 0x3d);
  FUN_006cb120(this_00,local_64);
  FUN_007996b0(local_64);
  if ((local_34 != (undefined1 *)0x0) && (local_34 != local_20)) {
    Memory_FreeIfNonNull(local_34);
  }
  return true;
}

