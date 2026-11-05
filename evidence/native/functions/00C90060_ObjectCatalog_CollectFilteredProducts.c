/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX catalog,
   include/exclude descriptor and output-vector pointers RET8. Six groups:
   room32,function32,buySub64,buySub2_64,buyRoomSub64,build32. Group inactive only when include
   allones and excludezero. Active group requires include intersection and no exclude intersection.
   If BOTH buySub groups active, include acceptance is OR across them; exclusions from BOTH still
   veto. Other active groups combine by AND. Iterates map+C0 in24-byte entries, appends borrowed
   nonnull product pointers; visibility/status and package precedence are not proved by this
   function. */

void __thiscall ObjectCatalog_CollectFilteredProducts(void *this,uint *param_1,void *param_2)

{
  int *piVar1;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  bool bVar7;
  void *this_00;
  int iVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  
  this_00 = param_2;
  if ((*param_1 != 0xffffffff) || (bVar2 = false, param_1[9] != 0)) {
    bVar2 = true;
  }
  if ((param_1[1] != 0xffffffff) || (bVar3 = false, param_1[10] != 0)) {
    bVar3 = true;
  }
  if (((param_1[2] & param_1[3]) != 0xffffffff) ||
     (bVar4 = false, param_1[0xc] != 0 || param_1[0xd] != 0)) {
    bVar4 = true;
  }
  if (((param_1[4] & param_1[5]) != 0xffffffff) ||
     (bVar7 = false, param_1[0xe] != 0 || param_1[0xf] != 0)) {
    bVar7 = true;
  }
  if (((param_1[6] & param_1[7]) != 0xffffffff) ||
     (bVar5 = false, param_1[0x10] != 0 || param_1[0x11] != 0)) {
    bVar5 = true;
  }
  if ((param_1[8] != 0xffffffff) || (bVar6 = false, param_1[0x12] != 0)) {
    bVar6 = true;
  }
  iVar8 = *(int *)((int)this + 0xc0);
  if (iVar8 != *(int *)((int)this + 0xc4)) {
    do {
      param_2 = *(void **)(iVar8 + 0x10);
      if (((param_2 != (void *)0x0) &&
          ((!bVar2 ||
           (((*param_1 & *(uint *)((int)param_2 + 0xac)) != 0 &&
            ((param_1[9] & *(uint *)((int)param_2 + 0xac)) == 0)))))) &&
         ((!bVar3 ||
          (((param_1[1] & *(uint *)((int)param_2 + 0xb0)) != 0 &&
           ((param_1[10] & *(uint *)((int)param_2 + 0xb0)) == 0)))))) {
        if (bVar4) {
          uVar12 = *(uint *)((int)param_2 + 0xb8);
          uVar11 = *(uint *)((int)param_2 + 0xbc);
          if (bVar7) {
            if ((((param_1[2] & uVar12) != 0 || (param_1[3] & uVar11) != 0) ||
                ((*(uint *)((int)param_2 + 0xc0) & param_1[4]) != 0 ||
                 (*(uint *)((int)param_2 + 0xc4) & param_1[5]) != 0)) &&
               ((param_1[0xc] & uVar12) == 0 && (param_1[0xd] & uVar11) == 0)) {
              uVar9 = *(uint *)((int)param_2 + 0xc0) & param_1[0xe];
              uVar10 = *(uint *)((int)param_2 + 0xc4) & param_1[0xf];
LAB_00c9020b:
              if (uVar9 == 0 && uVar10 == 0) goto LAB_00c9020f;
            }
          }
          else if ((param_1[2] & uVar12) != 0 || (param_1[3] & uVar11) != 0) {
            uVar9 = param_1[0xc];
            uVar10 = param_1[0xd];
LAB_00c90207:
            uVar9 = uVar9 & uVar12;
            uVar10 = uVar10 & uVar11;
            goto LAB_00c9020b;
          }
        }
        else if (bVar7) {
          uVar12 = *(uint *)((int)param_2 + 0xc0);
          uVar11 = *(uint *)((int)param_2 + 0xc4);
          if ((param_1[4] & uVar12) != 0 || (param_1[5] & uVar11) != 0) {
            uVar9 = param_1[0xe];
            uVar10 = param_1[0xf];
            goto LAB_00c90207;
          }
        }
        else {
LAB_00c9020f:
          if (bVar5) {
            if (((param_1[6] & *(uint *)((int)param_2 + 200)) == 0 &&
                 (param_1[7] & *(uint *)((int)param_2 + 0xcc)) == 0) ||
               ((param_1[0x10] & *(uint *)((int)param_2 + 200)) != 0 ||
                (param_1[0x11] & *(uint *)((int)param_2 + 0xcc)) != 0)) goto LAB_00c9027c;
          }
          if ((!bVar6) ||
             (((param_1[8] & *(uint *)((int)param_2 + 0xd0)) != 0 &&
              ((param_1[0x12] & *(uint *)((int)param_2 + 0xd0)) == 0)))) {
            piVar1 = *(int **)((int)this_00 + 4);
            if (piVar1 < *(int **)((int)this_00 + 8)) {
              *(int **)((int)this_00 + 4) = piVar1 + 1;
              if (piVar1 != (int *)0x0) {
                *piVar1 = (int)param_2;
              }
            }
            else {
              FUN_00982420(this_00,piVar1,&param_2);
            }
          }
        }
      }
LAB_00c9027c:
      iVar8 = iVar8 + 0x18;
    } while (iVar8 != *(int *)((int)this + 0xc4));
  }
  return;
}

