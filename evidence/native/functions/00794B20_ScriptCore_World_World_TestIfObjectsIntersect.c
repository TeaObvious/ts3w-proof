/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011634a0 (TS3W.exe).
   ScriptCore.World::World_TestIfObjectsIntersect [assembly=ScriptCore token=0x06000798; obj1Id:
   System.UInt64, obj2Id: System.UInt64, mat1: Sims3.SimIFace.Matrix44&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reviewed registered
   contract: cdecl two GUIDs and nonnull Matrix44 pointer. Retains both native objects with LOCK INC
   refcount and balances references on normal exits. Resolves lot and resource 0x00affdb0. Composes
   supplied matrix with lot matrix, extracts position/heading through 0x00b06980, selects level and
   builds placement request against second object. Returns AL=(0x00b45410 status ==0). Missing
   matrix/object/lot/resource returns false. Full placement solver status semantics remain outside
   this bounded contract. */

bool __cdecl
ScriptCore.World::World_TestIfObjectsIntersect
          (ulonglong objectGuid1,ulonglong objectGuid2,float *matrix1)

{
  char cVar1;
  void *pvVar2;
  void *object;
  int *piVar3;
  float *pfVar4;
  int iVar5;
  void *local_230;
  void *local_22c;
  float fStack_228;
  void *pvStack_224;
  float fStack_220;
  float fStack_21c;
  float fStack_218;
  float fStack_214;
  float fStack_210;
  float fStack_20c;
  float fStack_208;
  float fStack_204;
  float fStack_200;
  float fStack_1fc;
  float fStack_1f8;
  float fStack_1f4;
  float fStack_1f0;
  undefined4 uStack_1ec;
  undefined4 uStack_1e8;
  undefined4 uStack_1e4;
  float fStack_1e0;
  float fStack_1dc;
  float fStack_1d8;
  float fStack_1d4;
  float fStack_1d0;
  float fStack_1cc;
  float fStack_1c8;
  float fStack_1c4;
  float fStack_1c0;
  float fStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  float fStack_1b0;
  float fStack_1ac;
  float fStack_1a8;
  float fStack_1a4;
  float fStack_1a0;
  float fStack_19c;
  float fStack_198;
  float fStack_194;
  float fStack_190;
  float fStack_18c;
  float fStack_188;
  float fStack_184;
  float fStack_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  float fStack_170;
  float fStack_16c;
  float fStack_168;
  float fStack_164;
  float fStack_160;
  float fStack_15c;
  float fStack_158;
  float fStack_154;
  float fStack_150;
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float fStack_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  void *pvStack_130;
  void *pvStack_12c;
  float fStack_128;
  undefined4 uStack_124;
  int iStack_120;
  float fStack_11c;
  undefined4 uStack_118;
  void *pvStack_114;
  undefined1 uStack_107;
  undefined1 uStack_af;
  undefined1 uStack_ae;
  void *pvStack_98;
  uint auStack_50 [19];
  
  if (matrix1 != (float *)0x0) {
    pvVar2 = ObjectRegistry_GetGlobal();
    if (pvVar2 != (void *)0x0) {
      object = ObjectRegistry_FindBorrowed(pvVar2,objectGuid1);
      local_230 = object;
      if (object != (void *)0x0) {
        LOCK();
        *(int *)((int)object + 4) = *(int *)((int)object + 4) + 1;
        UNLOCK();
        local_22c = ObjectRegistry_FindBorrowed(pvVar2,objectGuid2);
        if (local_22c != (void *)0x0) {
          LOCK();
          *(int *)((int)local_22c + 4) = *(int *)((int)local_22c + 4) + 1;
          UNLOCK();
          piVar3 = (int *)FUN_0068f130((int)object);
          if (piVar3 != (int *)0x0) {
            pvVar2 = (void *)(**(code **)(*piVar3 + 0xc))(0x90566b0e);
            if (pvVar2 != (void *)0x0) {
              pvStack_224 = Object_FindCatalogInfo(object);
              if (pvStack_224 != (void *)0x0) {
                FUN_0076c430(matrix1,&fStack_1b0);
                pfVar4 = (float *)Lot_BuildWorldToLocalPoseMatrix(pvVar2,auStack_50);
                fStack_1c0 = pfVar4[4];
                fStack_1bc = pfVar4[5];
                fStack_1b8 = pfVar4[6];
                fStack_1b4 = pfVar4[7];
                fStack_1e0 = *pfVar4;
                fStack_1dc = pfVar4[1];
                fStack_1d8 = pfVar4[2];
                fStack_1d4 = pfVar4[3];
                fStack_200 = pfVar4[8];
                fStack_1fc = pfVar4[9];
                fStack_1f8 = pfVar4[10];
                fStack_1f4 = pfVar4[0xb];
                fStack_220 = pfVar4[0xc];
                fStack_21c = pfVar4[0xd];
                fStack_218 = pfVar4[0xe];
                fStack_214 = pfVar4[0xf];
                fStack_210 = fStack_1a0 * fStack_1e0 + fStack_19c * fStack_1c0 +
                             fStack_198 * fStack_200;
                fStack_20c = fStack_1a0 * fStack_1dc + fStack_19c * fStack_1bc +
                             fStack_198 * fStack_1fc;
                fStack_208 = fStack_1a0 * fStack_1d8 + fStack_19c * fStack_1b8 +
                             fStack_198 * fStack_1f8;
                fStack_204 = fStack_1a0 * fStack_1d4 + fStack_19c * fStack_1b4 +
                             fStack_198 * fStack_1f4;
                fStack_1d0 = fStack_194 * fStack_220;
                fStack_1cc = fStack_194 * fStack_21c;
                fStack_1c8 = fStack_194 * fStack_218;
                fStack_1c4 = fStack_194 * fStack_214;
                fStack_170 = fStack_1b0 * fStack_1e0 + fStack_1ac * fStack_1c0 +
                             fStack_1a8 * fStack_200 + fStack_1a4 * fStack_220;
                fStack_16c = fStack_1b0 * fStack_1dc + fStack_1ac * fStack_1bc +
                             fStack_1a8 * fStack_1fc + fStack_1a4 * fStack_21c;
                fStack_168 = fStack_1b0 * fStack_1d8 + fStack_1ac * fStack_1b8 +
                             fStack_1a8 * fStack_1f8 + fStack_1a4 * fStack_218;
                fStack_164 = fStack_1b0 * fStack_1d4 + fStack_1ac * fStack_1b4 +
                             fStack_1a8 * fStack_1f4 + fStack_1a4 * fStack_214;
                fStack_160 = fStack_1d0 + fStack_210;
                fStack_15c = fStack_1cc + fStack_20c;
                fStack_158 = fStack_1c8 + fStack_208;
                fStack_154 = fStack_1c4 + fStack_204;
                fStack_150 = fStack_184 * fStack_220 +
                             fStack_190 * fStack_1e0 + fStack_18c * fStack_1c0 +
                             fStack_188 * fStack_200;
                fStack_14c = fStack_184 * fStack_21c +
                             fStack_190 * fStack_1dc + fStack_18c * fStack_1bc +
                             fStack_188 * fStack_1fc;
                fStack_148 = fStack_184 * fStack_218 +
                             fStack_190 * fStack_1d8 + fStack_18c * fStack_1b8 +
                             fStack_188 * fStack_1f8;
                fStack_144 = fStack_184 * fStack_214 +
                             fStack_190 * fStack_1d4 + fStack_18c * fStack_1b4 +
                             fStack_188 * fStack_1f4;
                fStack_140 = fStack_174 * fStack_220 +
                             fStack_180 * fStack_1e0 + fStack_17c * fStack_1c0 +
                             fStack_178 * fStack_200;
                fStack_13c = fStack_174 * fStack_21c +
                             fStack_180 * fStack_1dc + fStack_17c * fStack_1bc +
                             fStack_178 * fStack_1fc;
                fStack_138 = fStack_174 * fStack_218 +
                             fStack_180 * fStack_1d8 + fStack_17c * fStack_1b8 +
                             fStack_178 * fStack_1f8;
                fStack_134 = fStack_174 * fStack_214 +
                             fStack_180 * fStack_1d4 + fStack_17c * fStack_1b4 +
                             fStack_178 * fStack_1f4;
                fStack_228 = 0.0;
                FUN_00b06980((int *)0x0,&fStack_170,&fStack_1f0,&fStack_228);
                iVar5 = Lot_SelectLevelByMidpointHeight(pvVar2,&fStack_1f0,'\x01');
                fStack_210 = fStack_1f0;
                fStack_20c = (float)uStack_1ec;
                fStack_208 = (float)uStack_1e8;
                fStack_204 = (float)uStack_1e4;
                fStack_220 = fStack_1f0;
                fStack_21c = (float)uStack_1e8;
                FUN_00793b80(&pvStack_130);
                fStack_128 = fStack_220;
                pvStack_114 = pvStack_224;
                fStack_11c = fStack_228;
                uStack_124 = fStack_21c;
                uStack_118 = 0;
                uStack_107 = 0;
                uStack_af = 0;
                uStack_ae = 1;
                pvStack_98 = local_22c;
                pvStack_130 = object;
                pvStack_12c = pvVar2;
                iStack_120 = iVar5;
                cVar1 = ObjectPlacement_TestLotAdmission((int *)&pvStack_130,(void *)0x0);
                FUN_00793aa0((int)&pvStack_130);
                FUN_007462e0((int *)&local_22c);
                FUN_007462e0((int *)&local_230);
                return cVar1 == '\0';
              }
            }
          }
        }
        FUN_007462e0((int *)&local_22c);
      }
      FUN_007462e0((int *)&local_230);
    }
  }
  return false;
}

