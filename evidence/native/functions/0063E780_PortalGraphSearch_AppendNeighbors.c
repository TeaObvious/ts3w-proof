/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Packed key high16 room/low16portal; specialfffe
   start,ffffgoal. Builds intra-room adjacency, lazy connection selectorsffff invalid/fffe
   unresolved, and opposite-room counterpart of same portal. Optional exclusion check is used for
   intra-room nodes. Returns number appended, not boolean. */

uint __thiscall
PortalGraphSearch_AppendNeighbors
          (void *this,void *routeContext,void *lotGraph,uint nodeKey,void *outNodes,bool exclude)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint *puVar4;
  int iVar5;
  int *piVar6;
  bool bVar7;
  undefined2 uVar8;
  int iVar9;
  short sVar10;
  uint uVar11;
  uint uVar12;
  ushort uVar13;
  int *piVar14;
  void *pvVar15;
  uint uVar16;
  undefined3 in_stack_00000015;
  ushort uVar17;
  uint local_14;
  
  pvVar15 = lotGraph;
  iVar2 = *(int *)((int)outNodes + 4);
  iVar3 = *(int *)outNodes;
  uVar11 = nodeKey >> 0x10;
  uVar17 = (ushort)(nodeKey >> 0x10);
  FUN_0063db10(this,lotGraph,uVar17);
  if (uVar11 < (uint)((*(int *)((int)pvVar15 + 0x94) - *(int *)((int)pvVar15 + 0x90)) / 0x44)) {
    sVar10 = (short)nodeKey;
    iVar1 = *(int *)((int)pvVar15 + 0x90) + uVar11 * 0x44;
    if (sVar10 == -2) {
      if (*(short *)((int)this + 4) == -2) {
        uVar8 = FUN_006347c0(*(undefined4 *)((int)routeContext + 0x40),pvVar15,uVar17,
                             (float *)((int)this + 8),'\0');
        *(undefined2 *)((int)this + 4) = uVar8;
      }
      if (*(ushort *)((int)this + 4) != 0xffff) {
        routeContext = (void *)(uVar11 * 0x10000);
        nodeKey = (uint)*(ushort *)((int)this + 4) + (int)routeContext;
        if ((exclude == false) || (bVar7 = LotRouteGraph_IsNodeExcluded(this,pvVar15), !bVar7)) {
          Int32Vector_AppendValue(outNodes,&nodeKey);
        }
        piVar14 = (int *)((uint)*(ushort *)((int)this + 4) * 0x10 + *(int *)(iVar1 + 0x34));
        uVar12 = 0;
        uVar11 = piVar14[1] - *piVar14 >> 3;
        if (uVar11 != 0) {
          do {
            uVar16 = (uint)*(ushort *)(*piVar14 + uVar12 * 8) + (int)routeContext;
            nodeKey = uVar16;
            if ((exclude == false) || (bVar7 = LotRouteGraph_IsNodeExcluded(this,lotGraph), !bVar7))
            {
              puVar4 = *(uint **)((int)outNodes + 4);
              if (puVar4 < *(uint **)((int)outNodes + 8)) {
                *(uint **)((int)outNodes + 4) = puVar4 + 1;
                if (puVar4 != (uint *)0x0) {
                  *puVar4 = uVar16;
                }
              }
              else {
                FUN_00982420(outNodes,puVar4,&nodeKey);
              }
            }
            uVar12 = uVar12 + 1;
          } while (uVar12 < uVar11);
        }
      }
    }
    else {
      uVar12 = nodeKey & 0xffff;
      if (uVar12 < (uint)(*(int *)(iVar1 + 0x38) - *(int *)(iVar1 + 0x34) >> 4)) {
        if (uVar17 == *(ushort *)((int)this + 0x20)) {
          if (*(short *)((int)this + 6) == -2) {
            uVar8 = FUN_006347c0(*(undefined4 *)((int)routeContext + 0x40),pvVar15,uVar17,
                                 (float *)((int)this + 0x14),'\0');
            sVar10 = (short)nodeKey;
            *(undefined2 *)((int)this + 6) = uVar8;
          }
          if ((*(short *)((int)this + 6) != -1) &&
             ((sVar10 == *(short *)((int)this + 6) ||
              ((piVar14 = (int *)(uVar12 * 0x10 + *(int *)(iVar1 + 0x34)),
               (piVar14[1] - *piVar14 & 0xfffffff8U) == 8 &&
               (*(short *)*piVar14 == *(short *)((int)this + 6))))))) {
            routeContext = (void *)(uVar11 * 0x10000 + 0xffff);
            Int32Vector_AppendValue(outNodes,&routeContext);
          }
        }
        iVar5 = *(int *)(*(int *)(iVar1 + 4) + uVar12 * 4);
        piVar14 = (int *)(*(int *)(iVar1 + 0x34) + uVar12 * 0x10);
        iVar9 = piVar14[1] - *piVar14 >> 3;
        if (iVar9 != 0) {
          uVar13 = (ushort)nodeKey;
          if (iVar9 == 1) {
            uVar13 = *(ushort *)*piVar14;
            routeContext = (void *)(uVar11 * 0x10000 + (uint)uVar13);
            if ((exclude == false) || (bVar7 = LotRouteGraph_IsNodeExcluded(this,pvVar15), !bVar7))
            {
              Int32Vector_AppendValue(outNodes,&routeContext);
            }
          }
          piVar14 = (int *)((uint)uVar13 * 0x10 + *(int *)(iVar1 + 0x34));
          local_14 = 0;
          uVar12 = piVar14[1] - *piVar14 >> 3;
          pvVar15 = lotGraph;
          if (uVar12 != 0) {
            do {
              uVar13 = *(ushort *)(*piVar14 + local_14 * 8);
              if (uVar13 != (ushort)nodeKey) {
                pvVar15 = (void *)(uVar11 * 0x10000 + (uint)uVar13);
                routeContext = pvVar15;
                if ((exclude == false) ||
                   (bVar7 = LotRouteGraph_IsNodeExcluded(this,lotGraph), !bVar7)) {
                  piVar6 = *(int **)((int)outNodes + 4);
                  if (piVar6 < *(int **)((int)outNodes + 8)) {
                    *(int **)((int)outNodes + 4) = piVar6 + 1;
                    if (piVar6 != (int *)0x0) {
                      *piVar6 = (int)pvVar15;
                    }
                  }
                  else {
                    FUN_00982420(outNodes,piVar6,&routeContext);
                  }
                }
              }
              local_14 = local_14 + 1;
              pvVar15 = lotGraph;
            } while (local_14 < uVar12);
          }
        }
        uVar13 = *(ushort *)(iVar5 + 0x48);
        if (uVar13 == uVar17) {
          uVar13 = *(ushort *)(iVar5 + 0x4a);
        }
        if (uVar13 != 0xffff) {
          iVar1 = *(int *)((int)pvVar15 + 0x90);
          uVar11 = (uint)uVar13;
          _exclude = iVar1 + uVar11 * 0x44;
          uVar16 = *(int *)(iVar1 + 8 + uVar11 * 0x44) - *(int *)(iVar1 + 4 + uVar11 * 0x44) >> 2;
          uVar12 = 0;
          if (uVar16 != 0) {
            do {
              if (*(int *)(*(int *)(_exclude + 4) + uVar12 * 4) == iVar5) {
                nodeKey = uVar11 * 0x10000 + (uVar12 & 0xffff);
                puVar4 = *(uint **)((int)outNodes + 4);
                if (puVar4 < *(uint **)((int)outNodes + 8)) {
                  *(uint **)((int)outNodes + 4) = puVar4 + 1;
                  if (puVar4 != (uint *)0x0) {
                    *puVar4 = nodeKey;
                  }
                }
                else {
                  FUN_00982420(outNodes,puVar4,&nodeKey);
                }
              }
              uVar12 = uVar12 + 1;
            } while (uVar12 < uVar16);
          }
        }
      }
    }
  }
  return (*(int *)((int)outNodes + 4) - *(int *)outNodes >> 2) - (iVar2 - iVar3 >> 2);
}

