/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ModelProxyWrap_TextureTest. Export ordinal(s):
   1960. Entry VA: 0x10986d60. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060001A5. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl ModelProxyWrap_TextureTest(uint *param_1)

{
  undefined4 uVar1;
  void *this;
  int iVar2;
  uint uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  void *unaff_EBX;
  int iVar7;
  int *unaff_ESI;
  uint uVar8;
  int *this_00;
  int *piVar9;
  undefined4 local_40 [2];
  int local_38;
  void *local_34;
  int *piStack_1c;
  void *pvStack_10;
  undefined4 uStack_c;
  int iStack_8;
  int iStack_4;
  
                    /* 0x986d60  1960  ModelProxyWrap_TextureTest */
  local_34 = DAT_10c7bd88;
  uVar1 = FUN_1058d190(DAT_10c7bd88,0x6cc0fd85,&local_38);
  if ((char)uVar1 != '\0') {
    iVar7 = 0;
    this = (void *)FUN_104d2030(param_1);
    FUN_10945ab0((int)this);
    iVar2 = FUN_104c7160(this,0);
    uVar3 = FUN_105186b0(iVar2);
    uVar8 = 0;
    if (uVar3 != 0) {
      do {
        if (iVar7 != 0) goto LAB_10986e13;
        iVar4 = FUN_10945ab0(*(int *)(*(int *)(iVar2 + 0x40) + uVar8 * 4));
        FUN_104c01b0(iVar4);
        iVar4 = FUN_1094d7b0(iVar4);
        if (((iVar4 == -0x3e41a652) &&
            (puVar5 = FUN_101de950(local_34,local_38), puVar5 != (undefined4 *)0x0)) &&
           (*(short *)((int)puVar5 + 6) == 5)) {
          iVar7 = puVar5[3];
        }
        uVar8 = uVar8 + 1;
      } while (uVar8 < uVar3);
      if (iVar7 != 0) {
LAB_10986e13:
        puVar5 = *(undefined4 **)(iVar7 + 0x30);
        this_00 = (int *)0x0;
        local_40[0] = 0;
        piVar9 = (int *)&DAT_10b9698c;
        (**(code **)*puVar5)(puVar5,&DAT_10b9698c,local_40);
        (**(code **)(*unaff_ESI + 0x48))(unaff_ESI,0,&stack0xffffffb8);
        puVar6 = (undefined4 *)FUN_10918eb0(0x34,"ModelProxyWrap_TextureTest",0);
        if (puVar6 != (undefined4 *)0x0) {
          this_00 = FUN_10412e00(puVar6);
        }
        (**(code **)(*this_00 + 4))();
        FUN_10411220(local_40);
        uVar1 = FUN_10412ec0(this_00,uStack_c,iStack_8,1,0x3d,0x100);
        if ((char)uVar1 != '\0') {
          FUN_104126f0(this_00,0);
          if ((piStack_1c != (int *)0x0) &&
             (iVar7 = (**(code **)(*piStack_1c + 0x34))(piStack_1c,&stack0xffffffb8,0,0x10),
             -1 < iVar7)) {
            memcpy(unaff_EBX,pvStack_10,iStack_8 * iStack_4);
            (**(code **)(*piStack_1c + 0x38))(piStack_1c);
            D3DXLoadSurfaceFromSurface(piVar9,0,0,piStack_1c,0,0,3,0);
            D3DXFilterTexture(puVar5,0,0xffffffff,0xffffffff);
          }
          (**(code **)(*this_00 + 8))();
        }
        (**(code **)(*piVar9 + 8))(piVar9);
        FUN_10410fe0((undefined4 *)&stack0xffffffbc);
      }
    }
  }
  return;
}

