/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 SPT section instruction contract. ECXtree+cursorstack RET4, no Boolean result.
   Sectiontag71000 dispatchedbycaller; outeruntil71015,
   templatebegin71002/end71014;71001reservespointervector+128/12C/130 whenrequestedcapacitylarger
   (UInt32compare), not actualrecordcount/exactmatch. MeshInfoallocation30hex: namestring0,
   vertexvector+10/14/18, indexvector+20/24/28.71003name;71004vertexreserve
   helper7BE580unexpanded;71005vertexbegin/71011end;71012indexreserve,71013rawDWORDappend. Vertices
   actualappend56bytes independentlyofdeclaredcapacity, growhelperwhenfull; no
   index-versus-vertex-rangeguard inthisbody. Atvertexstart ZERO exactlyfirst12floatlanes(48bytes),
   NOTUVlanes12/13;71006..9 rawfloat3copies tolanes0/3/6/9;71010 readsUVtwoFLOAT32. MissingUV is
   notprovenzero and canretainstackcontents; not a gameplayuninitializedclaimbeyond thisproducer.
   All14DWORDcopiedonappend. Allocatorfailures, vectorhelpers, requiredfieldadmission and
   downstreamattributeaxis/semanticnames remainopen. Completeenvelopeincludingalignmentretained; no
   malformed-input safety inferred. */

void __thiscall SptTree_ReadLeafMeshSection(void *this,int *cursor)

{
  uint *puVar1;
  undefined4 *puVar2;
  uint uVar3;
  int *outputString;
  float *pfVar4;
  void *pvVar5;
  int iVar6;
  float *pfVar7;
  int *piStack_6c;
  float afStack_68 [3];
  float afStack_5c [3];
  float afStack_50 [3];
  float afStack_44 [3];
  float afStack_38 [13];
  float fStack_4;
  
  uVar3 = SptCursor_ReadWordLE(cursor);
  do {
    if (uVar3 == 0x11559) {
      uVar3 = SptCursor_ReadWordLE(cursor);
      piStack_6c = *(int **)((int)this + 0x128);
      if ((uint)(*(int *)((int)this + 0x130) - (int)piStack_6c >> 2) < uVar3) {
        iVar6 = *(int *)((int)this + 300);
        if (uVar3 == 0) {
          pvVar5 = (void *)0x0;
        }
        else {
          pvVar5 = (void *)FUN_004e4500(uVar3 * 4,*(undefined4 *)((int)this + 0x134),0);
        }
        memmove(pvVar5,piStack_6c,iVar6 - (int)piStack_6c);
        if (*(void **)((int)this + 0x128) != (void *)0x0) {
          Memory_FreeIfNonNull(*(void **)((int)this + 0x128));
        }
        iVar6 = *(int *)((int)this + 0x128);
        *(void **)((int)this + 0x128) = pvVar5;
        *(void **)((int)this + 300) =
             (void *)((int)pvVar5 + (*(int *)((int)this + 300) - iVar6 >> 2) * 4);
        *(void **)((int)this + 0x130) = (void *)((int)pvVar5 + uVar3 * 4);
      }
    }
    else if (uVar3 == 0x1155a) {
      if (DAT_011d9624 == (int *)0x0) {
        outputString = FUN_004e6f20(DAT_011cc864,0x30,0);
      }
      else {
        outputString = (int *)(**(code **)(*DAT_011d9624 + 4))(0x30,0x10);
      }
      if (outputString == (int *)0x0) {
        outputString = (int *)0x0;
      }
      else {
        _DAT_011d9628 = _DAT_011d9628 + 0x30;
        outputString[3] = (int)"SpeedTree/MeshInfo";
        *outputString = (int)&DAT_011c8e54;
        outputString[1] = (int)&DAT_011c8e54;
        outputString[2] = (int)&DAT_011c8e55;
        outputString[4] = 0;
        outputString[5] = 0;
        outputString[6] = 0;
        outputString[7] = (int)"SpeedTree/MeshInfo";
        outputString[8] = 0;
        outputString[9] = 0;
        outputString[10] = 0;
        outputString[0xb] = (int)"SpeedTree/MeshInfo";
      }
      uVar3 = SptCursor_ReadWordLE(cursor);
      do {
        pvVar5 = (void *)0x0;
        switch(uVar3) {
        case 0x1155b:
          SptCursor_ReadByteString(cursor,outputString);
          break;
        case 0x1155c:
          uVar3 = SptCursor_ReadWordLE(cursor);
          FUN_007be580(outputString + 4,uVar3);
          break;
        case 0x1155d:
          uVar3 = SptCursor_ReadWordLE(cursor);
                    /* Only12FLOAT32stores zero recordbytes0..47. UVbytes48..55
                       arewrittenONLYby71010at7BF76D; copy56bytesat7BF7B9 doesnot createzerodefault.
                        */
          afStack_38[2] = 0.0;
          afStack_38[1] = 0.0;
          afStack_38[0] = 0.0;
          afStack_38[5] = 0.0;
          afStack_38[4] = 0.0;
          afStack_38[3] = 0.0;
          afStack_38[8] = 0.0;
          afStack_38[7] = 0.0;
          afStack_38[6] = 0.0;
          afStack_38[0xb] = 0.0;
          afStack_38[10] = 0.0;
          afStack_38[9] = 0.0;
          do {
            switch(uVar3) {
            case 0x1155e:
              pfVar4 = SptCursor_ReadFloat3LE(cursor,afStack_68);
              afStack_38[0] = *pfVar4;
              afStack_38[1] = pfVar4[1];
              afStack_38[2] = pfVar4[2];
              break;
            case 0x1155f:
              pfVar4 = SptCursor_ReadFloat3LE(cursor,afStack_5c);
              afStack_38[3] = *pfVar4;
              afStack_38[4] = pfVar4[1];
              afStack_38[5] = pfVar4[2];
              break;
            case 0x11560:
              pfVar4 = SptCursor_ReadFloat3LE(cursor,afStack_50);
              afStack_38[6] = *pfVar4;
              afStack_38[7] = pfVar4[1];
              afStack_38[8] = pfVar4[2];
              break;
            case 0x11561:
              pfVar4 = SptCursor_ReadFloat3LE(cursor,afStack_44);
              afStack_38[9] = *pfVar4;
              afStack_38[10] = pfVar4[1];
              afStack_38[0xb] = pfVar4[2];
              break;
            case 0x11562:
              afStack_38[0xc] = SptCursor_ReadFloatLE(cursor);
              fStack_4 = SptCursor_ReadFloatLE(cursor);
            }
            uVar3 = SptCursor_ReadWordLE(cursor);
          } while (uVar3 != 0x11563);
          pfVar4 = (float *)outputString[5];
          if (pfVar4 < (float *)outputString[6]) {
            outputString[5] = (int)(pfVar4 + 0xe);
            if (pfVar4 != (float *)0x0) {
              pfVar7 = afStack_38;
                    /* REP MOVSD14 copies complete56byte vertex; declaredcapacity doesnotset
                       actualcount. Fourfloat3lanes +twoUVwords. */
              for (iVar6 = 0xe; iVar6 != 0; iVar6 = iVar6 + -1) {
                *pfVar4 = *pfVar7;
                pfVar7 = pfVar7 + 1;
                pfVar4 = pfVar4 + 1;
              }
            }
          }
          else {
            FUN_00b587a0(outputString + 4,pfVar4,afStack_38);
          }
          break;
        case 0x11564:
          uVar3 = SptCursor_ReadWordLE(cursor);
          piStack_6c = (int *)outputString[8];
          if ((uint)(outputString[10] - (int)piStack_6c >> 2) < uVar3) {
            iVar6 = outputString[9];
            if (uVar3 != 0) {
              pvVar5 = (void *)FUN_004e4500(uVar3 * 4,outputString[0xb],0);
            }
            memmove(pvVar5,piStack_6c,iVar6 - (int)piStack_6c);
            if ((void *)outputString[8] != (void *)0x0) {
              Memory_FreeIfNonNull((void *)outputString[8]);
            }
            iVar6 = outputString[8];
            outputString[8] = (int)pvVar5;
            outputString[9] = (int)((int)pvVar5 + (outputString[9] - iVar6 >> 2) * 4);
            outputString[10] = (int)((int)pvVar5 + uVar3 * 4);
          }
          break;
        case 0x11565:
          piStack_6c = (int *)SptCursor_ReadWordLE(cursor);
          puVar1 = (uint *)outputString[9];
          if (puVar1 < (uint *)outputString[10]) {
            outputString[9] = (int)(puVar1 + 1);
            if (puVar1 != (uint *)0x0) {
              *puVar1 = (uint)piStack_6c;
            }
          }
          else {
            FUN_00982420(outputString + 8,puVar1,&piStack_6c);
          }
        }
        uVar3 = SptCursor_ReadWordLE(cursor);
      } while (uVar3 != 0x11566);
      puVar2 = *(undefined4 **)((int)this + 300);
      piStack_6c = outputString;
      if (puVar2 < *(undefined4 **)((int)this + 0x130)) {
        *(undefined4 **)((int)this + 300) = puVar2 + 1;
        if (puVar2 != (undefined4 *)0x0) {
          *puVar2 = outputString;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0x128),puVar2,&piStack_6c);
      }
    }
    uVar3 = SptCursor_ReadWordLE(cursor);
  } while (uVar3 != 0x11567);
  return;
}

