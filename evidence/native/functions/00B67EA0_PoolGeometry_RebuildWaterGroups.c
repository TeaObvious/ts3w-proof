/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX geometry, no stack arguments; AL success narrower than stored
   undefined4. Reset observed work-vector ends, scan Z outer/X inner, test X*depth+Z presence bits
   and invoke B67950 per occupied tile. Nonempty attribute groups reach retained
   allocation/format/upload/scene/bounds children. Their full GPU formats/lifetime/cleanup and
   current material/atlas equivalence remain open. Descriptive role, not recovered symbol. */

uint __fastcall PoolGeometry_RebuildWaterGroups(int *param_1)

{
  uint uVar1;
  void *this;
  int iVar2;
  uint uVar3;
  uint extraout_EAX;
  undefined4 uVar4;
  uint extraout_EAX_00;
  undefined4 extraout_EAX_01;
  uint uVar5;
  char local_27;
  undefined1 local_26;
  undefined1 local_25;
  uint local_24;
  undefined1 local_20 [4];
  undefined4 *local_1c;
  uint local_18;
  int local_14;
  float local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  if ((char)param_1[0x9a] != '\0') {
    this = LoadPump_ReadFrameServiceGlobal();
    if (this != (void *)0x0) {
      FUN_006e82f0(this,param_1);
      FUN_00725a00(*(void **)((int)this + 0x4f4));
    }
    *(undefined1 *)(param_1 + 0x9a) = 0;
  }
  param_1[0x92] = param_1[0x91];
  param_1[0x96] = param_1[0x95];
  local_10 = 1.0;
  local_c = 0x40000000;
  local_4 = "Misc/PoolGeometry/CreateGeometry/geomPartMap";
  local_18 = 1;
  local_1c = &DAT_0114d900;
  local_14 = 0;
  local_8 = 0;
  uVar3 = *(uint *)(param_1[0x84] + 100);
  uVar1 = *(uint *)(param_1[0x84] + 0x60);
  local_24 = 0;
  if (uVar3 != 0) {
    do {
      uVar5 = 0;
      if (uVar1 != 0) {
        do {
          iVar2 = param_1[0x88] * uVar5 + local_24;
          if ((*(byte *)((iVar2 >> 3) + param_1[0x89]) & '\x01' << ((byte)iVar2 & 7)) != 0) {
            local_25 = (undefined1)param_1[0x99];
            local_26 = (undefined1)local_24;
            local_27 = (char)uVar5;
            PoolGeometry_AppendPackedWaterTile(param_1,&local_27,local_20);
          }
          uVar5 = uVar5 + 1;
        } while (uVar5 < uVar1);
      }
      local_24 = local_24 + 1;
    } while (local_24 < uVar3);
    if (local_14 != 0) {
      uVar4 = FUN_00b669f0(param_1,local_20);
      if ((char)uVar4 != '\0') {
        FUN_00b67570(param_1,(int)local_20);
        FUN_00b66780(param_1);
        uVar4 = FUN_00b674d0((int)local_1c,local_18);
        local_14 = 0;
        if (1 < local_18) {
          Memory_FreeIfNonNull(local_1c);
          uVar4 = extraout_EAX_01;
        }
        return CONCAT31((int3)((uint)uVar4 >> 8),1);
      }
      uVar3 = FUN_00b674d0((int)local_1c,local_18);
      local_14 = 0;
      if (1 < local_18) {
        Memory_FreeIfNonNull(local_1c);
        return extraout_EAX_00 & 0xffffff00;
      }
      goto LAB_00b67fe4;
    }
  }
  uVar3 = FUN_00b674d0((int)local_1c,local_18);
  local_14 = 0;
  if (1 < local_18) {
    Memory_FreeIfNonNull(local_1c);
    uVar3 = extraout_EAX;
  }
LAB_00b67fe4:
  return uVar3 & 0xffffff00;
}

