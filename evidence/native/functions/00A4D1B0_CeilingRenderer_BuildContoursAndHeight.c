/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* PC1.67 original static instructions. ECX temporary context plus3stackDWORDs/RET0C. Builds
   bounds-relative part data, converts connected group boundaries and applies contour/hole helpers.
   On first contour: roomID0 reads packed above level height -.15 and stores level-1; enclosed
   selects L+1, negative/top +3 or selected ground room +6, with SSE binary32 ADDSS/SUBSS. CVTTSS2SI
   converts contour XY then signed lowbyte indexes. Contour child geometry/inset and allocation
   failures remain independent children; not a per-quarter triangle renderer. */

void __thiscall
CeilingRenderer_BuildContoursAndHeight(void *this,int *param_1,int *param_2,void *param_3)

{
  char cVar1;
  void *pvVar2;
  int *piVar3;
  int iVar4;
  char cVar5;
  char cVar6;
  int iVar7;
  char *pcVar8;
  undefined4 *puVar9;
  float *pfVar10;
  float fVar11;
  char *local_485c;
  char local_4855;
  void *local_4854;
  int local_4850;
  undefined4 local_484c;
  undefined4 local_4848;
  char *local_4844;
  uint local_4840;
  undefined4 local_483c;
  undefined4 local_4838;
  char *local_4834;
  uint local_4830;
  undefined4 *local_482c;
  undefined4 *local_4828;
  int local_481c [2];
  float *local_4814;
  float *local_4810;
  float local_4800 [4607];
  undefined4 uStack_4;
  
  uStack_4 = 0xa4d1ba;
  local_4850 = (param_1[2] - *param_1) + 1;
  iVar7 = ((param_1[3] - param_1[1]) + 1) * local_4850;
  iVar4 = iVar7 * 4;
  local_485c = "LotRenderer/CeilingRenderManager/DataArray";
  local_4854 = this;
  FUN_00d4c330(&local_482c,iVar4,&local_485c);
  puVar9 = local_482c;
  if (iVar4 != 0) {
    for (; iVar4 != 0; iVar4 = iVar4 + -1) {
      *puVar9 = 0xffffffff;
      puVar9 = puVar9 + 1;
    }
  }
  local_4828 = local_482c + iVar7 * 4;
  FUN_00a4a400(param_1,param_2,(int *)&local_482c);
  local_485c = (char *)(uint)*(ushort *)((int)param_3 + 0x14);
  iVar4 = *(int *)((int)this + 4);
  iVar7 = *(int *)(*(int *)(iVar4 + 0x17c) + *(int *)(iVar4 + 0x180) * 4);
  piVar3 = (int *)FUN_00ae43c0((void *)(iVar4 + 0x178),local_481c,(short *)&local_485c);
  local_4855 = *piVar3 != iVar7;
  iVar4 = param_2[1] - *param_2 >> 5;
  local_484c = 0;
  local_4848 = 0;
  local_483c = 0;
  local_4838 = 0;
  local_4844 = "LotRenderer/CeilingRenderManager/LocationToIndexMap";
  local_4840 = 0x332;
  local_4834 = "LotRenderer/CeilingRendererManager/IndexSet";
  local_4830 = 0x7fd;
  local_485c = (char *)0x0;
  local_481c[0] = iVar4;
  if (0 < iVar4) {
    do {
      pvVar2 = local_4854;
      pcVar8 = local_485c;
      local_4814 = local_4800;
      local_4810 = local_4800;
      FUN_00a4cae0(local_4850,(int)local_485c,(int)local_485c * 0x20 + *param_2,param_1,
                   (int *)&local_482c,(int *)&local_4814,&local_484c);
      if (pcVar8 == (char *)0x0) {
        iVar4 = *(int *)(*(int *)((int)pvVar2 + 4) + 0x230);
        cVar5 = (char)(int)local_4814[1];
        cVar1 = *(char *)(local_4814 + 2);
        cVar6 = (char)(int)*local_4814;
        if (*(short *)((int)param_3 + 0x14) == 0) {
          iVar7 = *(int *)(iVar4 + 0x78);
          *(float *)((int)param_3 + 0x10) =
               *(float *)(*(int *)(iVar7 + 0x10) +
                         ((((int)cVar1 - *(int *)(iVar4 + 0xc)) * *(int *)(iVar7 + 4) + (int)cVar6)
                          * *(int *)(iVar7 + 8) + (int)cVar5) * 4) - 0.15;
          iVar4 = cVar1 + -1;
        }
        else {
          if ((*(int *)(*(int *)((int)pvVar2 + 4) + 0x6c) < (int)(char)(cVar1 + '\x01')) ||
             (cVar1 < '\0')) {
            iVar7 = *(int *)(iVar4 + 0x78);
            fVar11 = *(float *)(*(int *)(iVar7 + 0x10) +
                               ((((int)cVar1 - *(int *)(iVar4 + 0xc)) * *(int *)(iVar7 + 4) +
                                (int)cVar6) * *(int *)(iVar7 + 8) + (int)cVar5) * 4) + 3.0;
          }
          else if ((local_4855 == '\0') || (cVar1 != '\0')) {
            iVar7 = *(int *)(iVar4 + 0x78);
            fVar11 = *(float *)(*(int *)(iVar7 + 0x10) +
                               ((((int)(char)(cVar1 + '\x01') - *(int *)(iVar4 + 0xc)) *
                                 *(int *)(iVar7 + 4) + (int)cVar6) * *(int *)(iVar7 + 8) +
                               (int)cVar5) * 4);
          }
          else {
            iVar7 = *(int *)(iVar4 + 0x78);
            fVar11 = *(float *)(*(int *)(iVar7 + 0x10) +
                               ((-*(int *)(iVar4 + 0xc) * *(int *)(iVar7 + 4) + (int)cVar6) *
                                *(int *)(iVar7 + 8) + (int)cVar5) * 4) + 6.0;
          }
          *(float *)((int)param_3 + 0x10) = fVar11 - 0.15;
          iVar4 = (int)cVar1;
        }
        *(int *)((int)param_3 + 0x18) = iVar4;
        iVar4 = local_481c[0];
        pcVar8 = local_485c;
      }
      FUN_00a4c390((int *)&local_4814,param_3,&local_483c);
      if (local_4814 < local_4810) {
        pfVar10 = local_4814 + 3;
        iVar7 = (uint)((int)local_4810 + (-1 - (int)local_4814)) / 0x120 + 1;
        do {
          pvVar2 = (void *)*pfVar10;
          if ((pvVar2 != (void *)0x0) && (pvVar2 != (void *)pfVar10[4])) {
            Memory_FreeIfNonNull(pvVar2);
          }
          pfVar10 = pfVar10 + 0x48;
          iVar7 = iVar7 + -1;
          pcVar8 = local_485c;
        } while (iVar7 != 0);
      }
      if ((local_4814 != (float *)0x0) && (local_4814 != local_4800)) {
        Memory_FreeIfNonNull(local_4814);
      }
      local_485c = pcVar8 + 1;
    } while ((int)local_485c < iVar4);
  }
  if (-1 < (int)local_4830) {
    PayloadCleanup_NoOperation((byte *)(local_4830 & 0x7fffffff));
  }
  FUN_007cd020(&local_483c);
  if (-1 < (int)local_4840) {
    PayloadCleanup_NoOperation((byte *)(local_4840 & 0x7fffffff));
  }
  FUN_007cd020(&local_484c);
  if (local_482c != (undefined4 *)0x0) {
    Memory_FreeIfNonNull(local_482c);
  }
  return;
}

