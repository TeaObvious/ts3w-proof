/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadIntersectionWrap_CreatePaintingMask. Export
   ordinal(s): 2051. Entry VA: 0x1098c130. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000219. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl RoadIntersectionWrap_CreatePaintingMask(int param_1)

{
  int iVar1;
  void *this;
  int iVar2;
  float fVar3;
  uint uVar4;
  undefined4 uVar5;
  uint in_EAX;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  uint uVar6;
  uint uVar7;
  ulonglong uVar8;
  double dVar9;
  double dVar10;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float afStack_50 [19];
  
  iVar2 = DAT_10c700c4;
  if ((((param_1 != 0) && (DAT_10c700c4 != 0)) && (in_EAX = FUN_10234f10(DAT_10c700c4), in_EAX != 0)
      ) && (iVar1 = *(int *)(iVar2 + 0x54), iVar1 != 0)) {
    this = (void *)FUN_106b6a50(iVar1);
    in_EAX = 0;
    if (this != (void *)0x0) {
      iVar2 = FUN_10409fe0(iVar2);
      in_EAX = 0;
      if (iVar2 != 0) {
        FUN_1013a9a0(afStack_50,param_1 + 0x50);
        FUN_1013be90(afStack_50,1.0,0xf);
        FUN_1013cfc0(&fStack_80,(undefined1 (*) [16])afStack_50);
        fStack_70 = fStack_74;
        fStack_6c = fStack_74;
        fStack_68 = fStack_74;
        fStack_64 = fStack_74;
        dVar9 = ceil((double)fStack_74);
        fStack_70 = fStack_78;
        fStack_6c = fStack_78;
        fStack_68 = fStack_78;
        fStack_64 = fStack_78;
        dVar10 = ceil((double)fStack_78);
        fStack_60 = fStack_7c;
        fStack_5c = fStack_7c;
        fStack_58 = fStack_7c;
        fStack_54 = fStack_7c;
        fStack_70 = fStack_80;
        fStack_6c = fStack_80;
        fStack_68 = fStack_80;
        fStack_64 = fStack_80;
        floor((double)fStack_80);
        uVar8 = FUN_10a90930(extraout_ECX,extraout_EDX);
        uVar7 = (uint)uVar8;
        floor((double)fStack_60);
        uVar8 = FUN_10a90930(extraout_ECX_00,extraout_EDX_00);
        fVar3 = (float)uVar8;
        fStack_5c = fVar3;
        if ((int)uVar7 <= (int)dVar10) {
          do {
            if ((int)fVar3 <= (int)dVar9) {
              uVar6 = (uint)fVar3;
              do {
                uVar4 = FUN_101548a0((float)(int)uVar7,(float)(int)uVar6,afStack_50);
                if ((char)uVar4 != '\0') {
                  FUN_101f1d00(this,uVar7,uVar6,1,1.0);
                }
                uVar6 = uVar6 + 1;
                fVar3 = fStack_5c;
              } while ((int)uVar6 <= (int)dVar9);
            }
            uVar7 = uVar7 + 1;
          } while ((int)uVar7 <= (int)dVar10);
        }
        uVar5 = FUN_101f0490((int)this);
        return CONCAT31((int3)((uint)uVar5 >> 8),1);
      }
    }
  }
  return in_EAX & 0xffffff00;
}

