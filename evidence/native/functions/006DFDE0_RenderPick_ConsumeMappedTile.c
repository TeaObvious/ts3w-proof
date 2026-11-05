/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 rendered-pick contract. ECX=pick manager, no stack arguments, RET void. Only
   consumes when signed pendingX(+40)>=0 AND ready byte15 nonzero. Clears ready before lookup;
   copies pending X/Y to completed48/4C, resets packed60=0/index58/aux5C=-1, snapshots64 matrix
   bytes80->C0, clears pending40/44=-1 BEFORE missing-surface/map failure. Surface tag6EE45453,
   mip0/map flags2. Successful mapping scans EXACT16 rows/16 columns at data+row*pitch+column*4;
   center pixel is data+8*pitch+32. Per key (low16-1, including FFFFFFFF background) keep smallest
   unsigned squared distance to(8,8), then smaller COMPLETE packed UInt32 on equal distance. Map
   stores first insertion; update does not reorder. Default is center packed pixel. If distinct
   keys>1, ascending bucket/head-chain traversal considers borrowed scene object flags44&800;
   strictly smaller unsigned distance replaces, equal priority distances preserve first traversal.
   No general nearest-object fallback. Stores selected packed60, low16-1 index58, clears float4
   point70. Nonnegative index: byte101 mode chooses auxiliary high byte into5C; otherwise high16
   depth reconstructs float4 with selected SSE operations and saved C0..F0 rows. Scale fields30/34
   and matrix rows are FLOAT32 memory, not integer values converted by C casts. The decompiler
   int-pointer aliases/casts at these field accesses and point writes are BIT-REINTERPRETATION
   artifacts; there are no float-to-int conversions in point stores. Unmaps and destroys temporary
   map on successful mapped path. Mapping failure leaves prior point70 untouched after invalidating
   indices. Full GPU encoding, generation ownership, scheduling, input dimensions, resource producer
   and exceptional containment remain open. */

void __thiscall RenderPick_ConsumeMappedTile(void *this)

{
  int iVar1;
  char *pcVar2;
  uint **ppuVar3;
  void *arg0;
  uint uVar4;
  uint **ppuVar5;
  int *piVar6;
  uint uVar7;
  uint *puVar8;
  int *piVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  char *local_a0;
  int *local_9c;
  int *local_98;
  uint *local_94;
  uint local_90;
  int *local_8c;
  uint local_88;
  uint *local_84 [2];
  int local_7c;
  uint local_78;
  undefined4 *local_74;
  undefined1 local_70 [4];
  void *local_6c;
  uint local_68;
  uint local_64;
  uint local_50;
  uint *local_4c;
  uint local_48;
  PC167_SurfaceMapping mappedTile;
  undefined1 local_1c [24];
  
  if ((-1 < *(int *)((int)this + 0x40)) && (*(char *)((int)this + 0x15) != '\0')) {
    *(undefined1 *)((int)this + 0x15) = 0;
    local_8c = this;
    local_74 = SurfaceRegistry_FindValueByTag(DAT_011cfcdc,0x6ee45453);
    *(undefined4 *)((int)this + 0x48) = *(undefined4 *)((int)this + 0x40);
    *(undefined4 *)((int)this + 0x60) = 0;
    *(undefined4 *)((int)this + 0x4c) = *(undefined4 *)((int)this + 0x44);
    *(undefined4 *)((int)this + 0x58) = 0xffffffff;
    *(undefined4 *)((int)this + 0x5c) = 0xffffffff;
    *(undefined4 *)((int)this + 0xc0) = *(undefined4 *)((int)this + 0x80);
    *(undefined4 *)((int)this + 0xc4) = *(undefined4 *)((int)this + 0x84);
    *(undefined4 *)((int)this + 200) = *(undefined4 *)((int)this + 0x88);
    *(undefined4 *)((int)this + 0xcc) = *(undefined4 *)((int)this + 0x8c);
    *(undefined4 *)((int)this + 0xd0) = *(undefined4 *)((int)this + 0x90);
    *(undefined4 *)((int)this + 0xd4) = *(undefined4 *)((int)this + 0x94);
    *(undefined4 *)((int)this + 0xd8) = *(undefined4 *)((int)this + 0x98);
    *(undefined4 *)((int)this + 0xdc) = *(undefined4 *)((int)this + 0x9c);
    *(undefined4 *)((int)this + 0xe0) = *(undefined4 *)((int)this + 0xa0);
    *(undefined4 *)((int)this + 0xe4) = *(undefined4 *)((int)this + 0xa4);
    *(undefined4 *)((int)this + 0xe8) = *(undefined4 *)((int)this + 0xa8);
    *(undefined4 *)((int)this + 0xec) = *(undefined4 *)((int)this + 0xac);
    *(undefined4 *)((int)this + 0xf0) = *(undefined4 *)((int)this + 0xb0);
    *(undefined4 *)((int)this + 0xf4) = *(undefined4 *)((int)this + 0xb4);
    *(undefined4 *)((int)this + 0xf8) = *(undefined4 *)((int)this + 0xb8);
    *(undefined4 *)((int)this + 0xfc) = *(undefined4 *)((int)this + 0xbc);
    *(undefined4 *)((int)this + 0x40) = 0xffffffff;
    *(undefined4 *)((int)this + 0x44) = 0xffffffff;
    if ((local_74 != (undefined4 *)0x0) &&
       (Surface_MapTextureLevel((void *)*local_74,&mappedTile,0,2), mappedTile.bits != (void *)0x0))
    {
      local_98 = (int *)((int)mappedTile.bits + mappedTile.rowPitchBytes * 8 + 0x20);
      local_a0 = "Scratch/RenderPickManager/IndexToObjInfoMap";
      PickCandidateMap_Construct(local_70,&local_a0);
      local_9c = (int *)0x0;
      do {
        local_7c = (8 - (int)local_9c) * (8 - (int)local_9c);
        local_a0 = (char *)0x0;
        do {
          pcVar2 = local_a0;
          uVar4 = *(uint *)((int)mappedTile.bits +
                           (int)local_a0 * 4 + (int)local_9c * mappedTile.rowPitchBytes);
          uVar7 = (uVar4 & 0xffff) - 1;
          local_88 = uVar7;
          PickCandidateMap_FindIterator(local_70,local_84,&local_88);
          local_94 = (uint *)((8 - (int)pcVar2) * (8 - (int)pcVar2) + local_7c);
          local_90 = uVar4;
          if (local_84[0] == *(uint **)((int)local_6c + local_68 * 4)) {
            local_78 = local_78 & 0xffffff00;
            local_50 = uVar7;
            local_4c = local_94;
            local_48 = uVar4;
            PickCandidateMap_InsertFirst(local_70,local_1c,&local_50,local_78);
          }
          else {
            ppuVar5 = (uint **)(local_84[0] + 1);
                    /* Unsigned per-key distance compare; on equal distance choose smaller full
                       packed UInt32. Update retains node position. */
            if ((local_94 < (uint *)local_84[0][1]) ||
               ((ppuVar3 = ppuVar5, local_94 <= (uint *)local_84[0][1] && (uVar4 < local_84[0][2])))
               ) {
              ppuVar3 = &local_94;
            }
            *ppuVar5 = *ppuVar3;
            local_84[0][2] = (uint)ppuVar3[1];
          }
          local_a0 = local_a0 + 1;
        } while (local_a0 < &DAT_00000010);
        local_9c = (int *)((int)local_9c + 1);
      } while (local_9c < 0x10);
      piVar6 = (int *)*local_98;
      piVar9 = local_8c;
      local_9c = piVar6;
      if (1 < local_64) {
        local_a0 = (char *)0xffffffff;
        PickCandidateMap_Begin(local_70,&local_94);
        piVar9 = local_8c;
        local_84[0] = *(uint **)((int)local_6c + local_68 * 4);
        puVar8 = local_94;
        if (local_94 != local_84[0]) {
          do {
            local_98 = (int *)puVar8[2];
            pcVar2 = (char *)puVar8[1];
            arg0 = RenderScene_GetBorrowedAtIndex((void *)piVar9[1],*puVar8);
                    /* Unsigned strict distance improvement only. Equal priority distance retains
                       first bucket/head traversal candidate. */
            if (((arg0 != (void *)0x0) &&
                (uVar4 = GetNativeDescriptorTypeName_Field44(arg0), (uVar4 & 0x800) != 0)) &&
               (pcVar2 < local_a0)) {
              local_9c = local_98;
              local_a0 = pcVar2;
            }
            for (puVar8 = (uint *)puVar8[3]; puVar8 == (uint *)0x0; puVar8 = (uint *)*puVar8) {
              puVar8 = (uint *)(local_90 + 4);
              local_90 = local_90 + 4;
            }
            piVar6 = local_9c;
          } while (puVar8 != local_84[0]);
        }
      }
      iVar1 = ((uint)piVar6 & 0xffff) - 1;
      piVar9[0x18] = (int)piVar6;
      piVar9[0x16] = iVar1;
      piVar9[0x1c] = 0;
      piVar9[0x1d] = 0;
      piVar9[0x1e] = 0;
      piVar9[0x1f] = 0;
      if (-1 < iVar1) {
        if (*(char *)((int)piVar9 + 0x101) == '\0') {
                    /* MULSS reads FLOAT32 scale at manager+34 directly. Numeric casts of int-typed
                       receiver fields in C are type-punning artifacts. */
          fVar10 = (DAT_00ff85ac - ((float)piVar9[0x13] + DAT_00ff85ac) * (float)piVar9[0xd]) *
                   *(float *)(*piVar9 + 0x10);
                    /* MULSS reads FLOAT32 scale at manager+30 directly; camera+0C/10 and saved
                       matrix rows are also raw float32 lanes. */
          fVar11 = (((float)piVar9[0x12] + DAT_00ff85ac) * (float)piVar9[0xc] - DAT_00ff85ac) *
                   *(float *)(*piVar9 + 0xc);
          fVar12 = DAT_00ff86a4 / ((float)((uint)piVar6 >> 0x10) * _DAT_00ff86a8 - DAT_00ff86a0);
                    /* MOVAPS stores four FLOAT bits. Decompiled (int) arithmetic assignments are
                       receiver-type artifacts, not CVTTSS2SI conversions. */
          piVar9[0x1c] = (int)(((fVar10 * (float)piVar9[0x34] + fVar11 * (float)piVar9[0x30]) -
                               (float)piVar9[0x38]) * fVar12 + (float)piVar9[0x3c]);
          piVar9[0x1d] = (int)(((fVar10 * (float)piVar9[0x35] + fVar11 * (float)piVar9[0x31]) -
                               (float)piVar9[0x39]) * fVar12 + (float)piVar9[0x3d]);
          piVar9[0x1e] = (int)(((fVar10 * (float)piVar9[0x36] + fVar11 * (float)piVar9[0x32]) -
                               (float)piVar9[0x3a]) * fVar12 + (float)piVar9[0x3e]);
          piVar9[0x1f] = (int)(((fVar10 * (float)piVar9[0x37] + fVar11 * (float)piVar9[0x33]) -
                               (float)piVar9[0x3b]) * fVar12 + (float)piVar9[0x3f]);
        }
        else {
          piVar9[0x17] = (uint)piVar6 >> 0x18;
        }
      }
      Surface_UnmapIfMapped((void *)*local_74,&mappedTile);
      FUN_004d90b0((int)local_6c,local_68);
      local_64 = 0;
      if (1 < local_68) {
        Memory_FreeIfNonNull(local_6c);
      }
    }
  }
  return;
}

