/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst PC1.67 SPT section instruction contract. ECXtreewrapper+two32bitstackinputs RET8,
   ALsuccess. Inputsforwardedto7BBDA0sourcecursorconstructor
   (exactinputmeaning/copyadmissionunexpanded);7BFC10headerreaderALgatesbody.
   Cursorhasoffset0/buffer4/end8; outerloopchecks offset<unsigned(end-buffer) BEFOREnext4bytetoken,
   notfullremaining4check. Parentdispatch60000 -> mapbank wrapper+DC +cursor at7BCEF1
   andsetsmapPresent;50000 ->treewrapper[0] +cursor at7BCF04 thenUVPresentbyte1;71000 ->sametree
   +cursor7BCF25. Bothpresencebytesinitialized0. Unknown topwordsetsBL1stopsloop,
   butpostprocessingstillruns and finalBL1returnsSUCCESS, notstrictreject. Afterheaderadmission,
   mapfallback7BC700onlyifmapsectionabsent; UVinherit7BD860onlyifUVsectionABSENT (7BD06D/JNE).
   Bodyparsed50000records areNOTpassedthroughfallbackhere.
   Freetemporarycursorbufferonbothnormaladmission/failureexits.
   Fullheader/constructor/othersections/postcompute/resource/renderstateunexpanded;
   existingnamedcalleeisnotproofitsmeaning.
   
   Analyst PC1.67 unknown-top-tag cursor order. Bounded additional instruction review: unknown word
   at7BCF41 setsBL1 and jumps7BCF6D. Tail unsigned cursor comparison7BCF75/JAE7BCF79 first skips
   read only when cursor>=end-buffer. Otherwise CALLReadWordLE7BCF7F consumes ONE EXTRA DWORD
   BEFORETESTBL7BCF84, then leaves loop. No extra read at/pastend; a remaining1..3byte tail still
   has no local full-word guard. Existing actual C do/while accurately expresses read-before-stop
   ordering. Unknown tag still reaches postprocessing/success after admitted header; no rollback or
   strict unknown failure inferred. Source/header constructor, allocator and full short-tail safety
   remain STATIC research gaps; this is not observed malformed-input execution. */

bool __thiscall SptTree_LoadAndDispatchSections(void *this,uint sourceWord0,uint sourceWord1)

{
  int iVar1;
  bool bVar2;
  bool bVar3;
  undefined4 uVar4;
  uint uVar5;
  void *pvVar6;
  bool bVar7;
  float fVar8;
  uint local_14;
  void *local_10;
  int local_c;
  
  bVar7 = false;
  FUN_007bbda0(&local_14,sourceWord0,sourceWord1);
  uVar4 = FUN_007bfc10(*(void **)this,&local_14);
  if ((char)uVar4 != '\0') {
    bVar2 = false;
    bVar3 = false;
    if (local_14 < (uint)(local_c - (int)local_10)) {
      uVar5 = SptCursor_ReadWordLE(&local_14);
      do {
        if ((int)uVar5 < 0x55f1) {
          if (uVar5 == 22000) {
            *(bool *)(*(int *)this + 0x10c) = *(char *)(local_14 + (int)local_10) != '\0';
            local_14 = local_14 + 1;
          }
          else if ((int)uVar5 < 0x3e81) {
            if (uVar5 == 16000) {
              FUN_007bd320(*(void **)this,(int *)&local_14);
            }
            else if ((int)uVar5 < 0x2af9) {
              if (uVar5 == 11000) {
                FUN_007b9ab0(this,&local_14);
              }
              else if (uVar5 == 8000) {
                FUN_007b5440(*(void **)((int)this + 0x10),(int *)&local_14);
              }
              else if (uVar5 == 9000) {
                FUN_007b9a10(this,&local_14);
              }
              else {
                if (uVar5 != 10000) goto LAB_007bcf41;
                SptTree_ReadEmbeddedTextureCoordinates(this,&local_14);
              }
            }
            else if (uVar5 == 12000) {
              FUN_007bb700(this,&local_14);
            }
            else if (uVar5 == 13000) {
              FUN_007ad310(*(void **)((int)this + 0x60),(int *)&local_14);
            }
            else {
              if (uVar5 != 15000) goto LAB_007bcf41;
              FUN_007bd2a0(*(void **)this,(int *)&local_14);
            }
          }
          else if ((int)uVar5 < 0x4a39) {
            if (uVar5 == 19000) {
              FUN_007ba600(this,(int *)&local_14);
            }
            else if (uVar5 == 0x3e8d) {
              FUN_007bd1b0(*(void **)this,(int *)&local_14);
            }
            else if (uVar5 == 0x3e8e) {
              fVar8 = SptCursor_ReadFloatLE(&local_14);
              *(float *)((int)this + 0x2c) = fVar8;
            }
            else {
              if (uVar5 != 18000) goto LAB_007bcf41;
              FUN_007b8910(this,(int *)&local_14);
            }
          }
          else if (uVar5 == 20000) {
            FUN_007bafc0(this,&local_14);
          }
          else if (uVar5 == 21000) {
            fVar8 = SptCursor_ReadFloatLE(&local_14);
            *(float *)(*(int *)((int)this + 0x14) + 0x3c) = fVar8;
          }
          else {
            if (uVar5 != 0x5209) goto LAB_007bcf41;
            fVar8 = SptCursor_ReadFloatLE(&local_14);
            *(float *)(*(int *)((int)this + 0x14) + 0x40) = fVar8;
          }
        }
        else if ((int)uVar5 < 0x7531) {
          if (uVar5 == 30000) {
            FUN_007b9b00(this,&local_14);
          }
          else if ((int)uVar5 < 0x6591) {
            if (uVar5 == 26000) {
              FUN_007bdb40(*(void **)this,(int *)&local_14);
            }
            else if (uVar5 == 23000) {
              FUN_007bd4b0(*(void **)this,(int *)&local_14);
            }
            else if (uVar5 == 24000) {
              FUN_007bd1d0(*(void **)this,(int *)&local_14);
            }
            else {
              if (uVar5 != 25000) goto LAB_007bcf41;
              FUN_007aa240(*(void **)((int)this + 0x60),(int *)&local_14);
            }
          }
          else if (uVar5 == 27000) {
            FUN_007bd530(*(void **)this,(int *)&local_14);
          }
          else if (uVar5 == 28000) {
            FUN_007bd5e0(*(void **)this,(int *)&local_14);
          }
          else {
            if (uVar5 != 29000) goto LAB_007bcf41;
            FUN_007bd210(*(void **)this,(int *)&local_14);
          }
        }
        else if ((int)uVar5 < 0x11559) {
          if (uVar5 == 71000) {
            SptTree_ReadLeafMeshSection(*(void **)this,(int *)&local_14);
          }
          else if (uVar5 == 40000) {
            FUN_007bd250(*(void **)this,(int *)&local_14);
          }
          else if (uVar5 == 50000) {
                    /* Tag50000: explicit7-records-per-branch reader, THEN setUVPresent1 at7BCF09.
                        */
            SptTree_ReadBranchTextureControls(*(void **)this,(int *)&local_14);
            bVar3 = true;
          }
          else {
            if (uVar5 != 60000) goto LAB_007bcf41;
            SptMaps_ReadBankSection(*(void **)((int)this + 0xdc),(int *)&local_14);
            bVar2 = true;
          }
        }
        else if (uVar5 == 72000) {
          FUN_007bd970(*(void **)this,(int *)&local_14);
        }
        else if (uVar5 == 73000) {
          FUN_007ba120(this,(int *)&local_14);
        }
        else if (uVar5 == 74000) {
          FUN_007bd260(*(void **)this,(int *)&local_14);
        }
        else {
LAB_007bcf41:
          bVar7 = true;
        }
        if ((uint)(local_c - (int)local_10) <= local_14) break;
                    /* Tail reads another DWORD BEFORE testing unknown-tag stop flagBL; cursor<end
                       check is not a full remaining4byte check. */
        uVar5 = SptCursor_ReadWordLE(&local_14);
      } while (bVar7 == false);
    }
    FUN_007be530(*(int *)this);
    iVar1 = **(int **)((int)this + 0x10);
    if (*(char *)((int)this + 0xe0) == '\0') {
      *(bool *)(*(int *)((int)this + 4) + 9) = iVar1 == 1;
      **(int **)((int)this + 0x10) = iVar1;
    }
    else {
      FUN_007ba7b0("SetBranchLightingMethod() has no effect after Compute() has been called");
    }
    iVar1 = *(int *)(*(int *)((int)this + 0x10) + 0x38);
    if (*(char *)((int)this + 0xe0) == '\0') {
      *(int *)(*(int *)((int)this + 0x10) + 0x38) = iVar1;
      *(bool *)*(undefined4 *)((int)this + 8) = iVar1 == 1;
    }
    else {
      FUN_007ba7b0("SetLeafLightingMethod() has no effect after Compute() has been called");
    }
    iVar1 = *(int *)(*(int *)((int)this + 0x10) + 0x78);
    if (*(char *)((int)this + 0xe0) == '\0') {
      *(bool *)(*(int *)((int)this + 100) + 9) = iVar1 == 1;
      *(int *)(*(int *)((int)this + 0x10) + 0x78) = iVar1;
    }
    else {
      FUN_007ba7b0("SetFrondLightingMethod() has no effect after Compute() has been called");
    }
    *(undefined4 *)((int)this + 0x4c) = *(undefined4 *)(*(int *)this + 0xec);
    pvVar6 = HeightMap_GetSamplePayload(*(void **)((int)this + 0x60));
    *(void **)((int)this + 0x40) = pvVar6;
    if (*(int *)((int)this + 0x1c) == 2) {
      *(undefined4 *)((int)this + 0x1c) = 1;
      *(undefined4 *)((int)this + 0x2c) = 0x3f000000;
    }
    FUN_005657f0(*(void **)((int)this + 0x14),0,(uint)DAT_011d9648);
    if (!bVar2) {
      FUN_007bc700(this);
    }
                    /* CMP UVPresent,0 / JNE skipsinheritance. OnlyABSENT50000section
                       invokesfallback7BD860. */
    if (!bVar3) {
      SptTree_InheritMissingTextureControls(*(void **)this);
    }
    bVar7 = true;
  }
  if (local_10 != (void *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  return bVar7;
}

