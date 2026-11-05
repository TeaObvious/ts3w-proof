/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* Analyst PC1.67 SPT section instruction contract. ECXmapbank+cursorstack RET4, parenttag60000;
   loopuntil60001.60002readssevenchannelsatbank0;60005at+90;60009at+100;60006bytestringat+170.60003/4discardoneword
   thenreadcount, SIGNEDJLE skips<=0, positivecount parsesrecords andAPPENDS112byte
   sevenstringrecords tovector+70or+80 (doesnotclear). Eachappenddeepcopiessevenstrings,
   releases7temporarystrings; existingcapacity/growhelperspreserved.
   Repeatedsinglechanneltagsreplace; repeatedcollectionsappend.
   Originalswitchtable7B656Cestablishestagjoin. Decompiler register0x10 temporary-destructionpointer
   and allocator3argprojection are artifacts; actualcleanup usesstacktemporaryend and allocatorcalls
   push6words/pop18hex. Fullresourceauthority, malformedcount/allocation failure
   andmaterialchannelmeaningunexpanded. */

void __thiscall SptMaps_ReadBankSection(void *this,int *cursor)

{
  uint uVar1;
  undefined4 *puVar2;
  int iVar3;
  void *pvVar4;
  void *pvVar5;
  uint uVar6;
  int iVar7;
  size_t sVar8;
  int *piVar9;
  undefined1 *puVar10;
  int iVar11;
  uint local_8c;
  uint local_88;
  int local_74 [29];
  
  do {
    uVar6 = SptCursor_ReadWordLE(cursor);
    switch(uVar6) {
    case 0xea62:
      SptMap_ReadSevenChannels(this,cursor);
      break;
    case 0xea63:
      SptCursor_ReadWordLE(cursor);
      local_8c = SptCursor_ReadWordLE(cursor);
      if (0 < (int)local_8c) {
        do {
          FUN_007b5e10((int)(local_74 + 1));
          SptMap_ReadSevenChannels(local_74 + 1,cursor);
          puVar2 = *(undefined4 **)((int)this + 0x74);
          if (puVar2 < *(undefined4 **)((int)this + 0x78)) {
            *(undefined4 **)((int)this + 0x74) = puVar2 + 0x1c;
            if (puVar2 != (undefined4 *)0x0) {
              iVar11 = -(int)puVar2;
              local_88 = 6;
              piVar9 = puVar2 + 1;
              do {
                piVar9[-1] = 0;
                *piVar9 = 0;
                piVar9[1] = 0;
                iVar7 = *(int *)((int)local_74 + iVar11 + 0xcU + (int)piVar9);
                piVar9[2] = iVar7;
                iVar3 = *(int *)((int)local_74 + iVar11 + 4U + (int)piVar9);
                pvVar4 = *(void **)((int)local_74 + iVar11 + (int)piVar9);
                sVar8 = iVar3 - (int)pvVar4;
                uVar1 = sVar8 + 1;
                if (uVar1 < 2) {
                  piVar9[-1] = (int)&DAT_011c8e54;
                  *piVar9 = (int)&DAT_011c8e54;
                  piVar9[1] = (int)&DAT_011c8e55;
                }
                else {
                  iVar7 = FUN_004e4500(uVar1,iVar7,0);
                  piVar9[-1] = iVar7;
                  *piVar9 = iVar7;
                  piVar9[1] = iVar7 + uVar1;
                }
                pvVar5 = (void *)piVar9[-1];
                memmove(pvVar5,pvVar4,sVar8);
                puVar10 = (undefined1 *)((int)pvVar5 + (iVar3 - (int)pvVar4));
                *piVar9 = (int)puVar10;
                piVar9 = piVar9 + 4;
                local_88 = local_88 + -1;
                *puVar10 = 0;
              } while (-1 < (int)local_88);
            }
          }
          else {
            FUN_007b60d0((void *)((int)this + 0x70),puVar2,local_74 + 1);
          }
                    /* Temporaryseven-stringdestruction startsLEA ESI,[ESP+9C],
                       seven16bytebackwarddescriptors. register0x00000010 inC is decompilerartifact,
                       notaddress16read. */
          iVar11 = 6;
          puVar10 = (undefined1 *)register0x00000010;
          do {
            pvVar4 = *(void **)(puVar10 + -0x10);
            piVar9 = (int *)(puVar10 + -8);
            puVar10 = puVar10 + -0x10;
            if ((1 < *piVar9 - (int)pvVar4) && (pvVar4 != (void *)0x0)) {
              Memory_FreeIfNonNull(pvVar4);
            }
            iVar11 = iVar11 + -1;
          } while (-1 < iVar11);
          local_8c = local_8c - 1;
        } while (local_8c != 0);
      }
      break;
    case 0xea64:
      SptCursor_ReadWordLE(cursor);
      local_88 = SptCursor_ReadWordLE(cursor);
      if (0 < (int)local_88) {
        do {
          FUN_007b5e10((int)(local_74 + 1));
          SptMap_ReadSevenChannels(local_74 + 1,cursor);
          puVar2 = *(undefined4 **)((int)this + 0x84);
          if (puVar2 < *(undefined4 **)((int)this + 0x88)) {
            *(undefined4 **)((int)this + 0x84) = puVar2 + 0x1c;
            if (puVar2 != (undefined4 *)0x0) {
              iVar11 = -(int)puVar2;
              local_8c = 6;
              piVar9 = puVar2 + 1;
              do {
                piVar9[-1] = 0;
                *piVar9 = 0;
                piVar9[1] = 0;
                iVar7 = *(int *)((int)piVar9 + (int)local_74 + iVar11 + 0xcU);
                piVar9[2] = iVar7;
                iVar3 = *(int *)((int)piVar9 + (int)local_74 + iVar11 + 4U);
                pvVar4 = *(void **)((int)piVar9 + (int)local_74 + iVar11);
                sVar8 = iVar3 - (int)pvVar4;
                uVar1 = sVar8 + 1;
                if (uVar1 < 2) {
                  piVar9[-1] = (int)&DAT_011c8e54;
                  *piVar9 = (int)&DAT_011c8e54;
                  piVar9[1] = (int)&DAT_011c8e55;
                }
                else {
                  iVar7 = FUN_004e4500(uVar1,iVar7,0);
                  piVar9[-1] = iVar7;
                  *piVar9 = iVar7;
                  piVar9[1] = iVar7 + uVar1;
                }
                pvVar5 = (void *)piVar9[-1];
                memmove(pvVar5,pvVar4,sVar8);
                puVar10 = (undefined1 *)((int)pvVar5 + (iVar3 - (int)pvVar4));
                *piVar9 = (int)puVar10;
                piVar9 = piVar9 + 4;
                local_8c = local_8c + -1;
                *puVar10 = 0;
              } while (-1 < (int)local_8c);
            }
          }
          else {
            FUN_007b60d0((void *)((int)this + 0x80),puVar2,local_74 + 1);
          }
          iVar11 = 6;
          puVar10 = (undefined1 *)register0x00000010;
          do {
            pvVar4 = *(void **)(puVar10 + -0x10);
            piVar9 = (int *)(puVar10 + -8);
            puVar10 = puVar10 + -0x10;
            if ((1 < *piVar9 - (int)pvVar4) && (pvVar4 != (void *)0x0)) {
              Memory_FreeIfNonNull(pvVar4);
            }
            iVar11 = iVar11 + -1;
          } while (-1 < iVar11);
          local_88 = local_88 - 1;
        } while (local_88 != 0);
      }
      break;
    case 0xea65:
      SptMap_ReadSevenChannels((int *)((int)this + 0x90),cursor);
      break;
    case 0xea66:
      SptCursor_ReadByteString(cursor,(int *)((int)this + 0x170));
      break;
    case 0xea69:
      SptMap_ReadSevenChannels((int *)((int)this + 0x100),cursor);
    }
  } while (uVar6 != 0xea61);
  return;
}

