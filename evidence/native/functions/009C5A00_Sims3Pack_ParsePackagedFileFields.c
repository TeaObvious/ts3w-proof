/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. cdecl(entry,XMLnode), actual entry009C5A00;009C5A60
   is interior. Child element names use case-insensitive byte-string comparison. Name, Length
   decimal->low32 at+20, Crc hex->64 at+18, Guid128 at+8, Offset decimal->low32 at+24,
   ContentType->+858, Thumbnail/GreyedOutThumbnail priority+85C (grey2 wins), EPFlags hex+864.
   Missing fields retain producer defaults; repeated recognized fields write again. Numeric
   overflow/negative acceptance and full record defaults remain unresolved. */

bool __cdecl Sims3Pack_ParsePackagedFileFields(void *entry,void *xmlNode)

{
  void *this;
  int *piVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  undefined4 *puVar6;
  longlong lVar7;
  int local_30 [4];
  undefined4 local_20 [4];
  uint local_10 [4];
  
  if ((xmlNode != (void *)0x0) && (piVar4 = (int *)((int)xmlNode + 0x24), (int *)*piVar4 != piVar4))
  {
    for (piVar2 = (int *)*piVar4; piVar2 != piVar4; piVar2 = (int *)*piVar2) {
      iVar3 = piVar2[2];
      if (*(int *)(iVar3 + 4) == 2) {
        this = (void *)(iVar3 + 8);
        uVar5 = ByteString_CompareCaseInsensitive(this,&DAT_01050dd0);
        if (uVar5 == 0) {
          piVar1 = (int *)(iVar3 + 0x24);
          if ((((int *)*piVar1 != piVar1) && (iVar3 = *(int *)(*piVar1 + 8), iVar3 != 0)) &&
             (*(int *)(iVar3 + 8) != *(int *)(iVar3 + 0xc))) {
            puVar6 = EaString_FromUtf8Bytes
                               (local_30,*(byte **)(iVar3 + 8),
                                *(int *)(iVar3 + 0xc) - *(int *)(iVar3 + 8),(byte *)0x0);
            FUN_009c5150(entry,(short *)*puVar6);
            FUN_004ef8f0(local_30);
          }
        }
        else {
          uVar5 = ByteString_CompareCaseInsensitive(this,(byte *)"Length");
          if (uVar5 == 0) {
            piVar1 = (int *)(iVar3 + 0x24);
            if ((((int *)*piVar1 != piVar1) && (iVar3 = *(int *)(*piVar1 + 8), iVar3 != 0)) &&
               (*(char **)(iVar3 + 8) != *(char **)(iVar3 + 0xc))) {
              lVar7 = FUN_004ffbb0(*(char **)(iVar3 + 8),(undefined4 *)0x0,10);
              *(int *)((int)entry + 0x20) = (int)lVar7;
            }
          }
          else {
            uVar5 = ByteString_CompareCaseInsensitive(this,&DAT_01050dc4);
            if (uVar5 == 0) {
              piVar1 = (int *)(iVar3 + 0x24);
              if ((((int *)*piVar1 != piVar1) && (iVar3 = *(int *)(*piVar1 + 8), iVar3 != 0)) &&
                 (*(char **)(iVar3 + 8) != *(char **)(iVar3 + 0xc))) {
                lVar7 = FUN_004ffbb0(*(char **)(iVar3 + 8),(undefined4 *)0x0,0x10);
                *(longlong *)((int)entry + 0x18) = lVar7;
              }
            }
            else {
              uVar5 = ByteString_CompareCaseInsensitive(this,&DAT_01050dbc);
              if (uVar5 == 0) {
                piVar1 = (int *)(iVar3 + 0x24);
                if ((((int *)*piVar1 != piVar1) && (iVar3 = *(int *)(*piVar1 + 8), iVar3 != 0)) &&
                   (*(int *)(iVar3 + 8) != *(int *)(iVar3 + 0xc))) {
                  FUN_00500c00(local_20);
                  FUN_005016a0(local_10,*(byte **)(iVar3 + 8),(uint *)0x0,0x10);
                  FUN_00500c90((void *)((int)entry + 8),local_10);
                }
              }
              else {
                uVar5 = ByteString_CompareCaseInsensitive(this,(byte *)"Offset");
                if (uVar5 == 0) {
                  piVar1 = (int *)(iVar3 + 0x24);
                  if ((((int *)*piVar1 != piVar1) && (iVar3 = *(int *)(*piVar1 + 8), iVar3 != 0)) &&
                     (*(char **)(iVar3 + 8) != *(char **)(iVar3 + 0xc))) {
                    lVar7 = FUN_004ffbb0(*(char **)(iVar3 + 8),(undefined4 *)0x0,10);
                    *(int *)((int)entry + 0x24) = (int)lVar7;
                  }
                }
                else {
                  uVar5 = ByteString_CompareCaseInsensitive(this,(byte *)"Thumbnail");
                  if (uVar5 == 0) {
                    if (*(int *)((int)entry + 0x85c) != 2) {
                      *(undefined4 *)((int)entry + 0x85c) = 1;
                    }
                  }
                  else {
                    uVar5 = ByteString_CompareCaseInsensitive(this,(byte *)"GreyedOutThumbnail");
                    if (uVar5 == 0) {
                      *(undefined4 *)((int)entry + 0x85c) = 2;
                    }
                    else {
                      uVar5 = ByteString_CompareCaseInsensitive(this,(byte *)"EPFlags");
                      if (uVar5 == 0) {
                        iVar3 = *(int *)(*(int *)(iVar3 + 0x24) + 8);
                        if ((iVar3 != 0) && (*(char **)(iVar3 + 8) != *(char **)(iVar3 + 0xc))) {
                          sscanf(*(char **)(iVar3 + 8),"%x",(int)entry + 0x864);
                        }
                      }
                      else {
                        uVar5 = ByteString_CompareCaseInsensitive(this,(byte *)"ContentType");
                        if (((uVar5 == 0) &&
                            (iVar3 = *(int *)(*(int *)(iVar3 + 0x24) + 8), iVar3 != 0)) &&
                           (*(byte **)(iVar3 + 8) != *(byte **)(iVar3 + 0xc))) {
                          uVar5 = Sims3Pack_ResolveContentResourceType(*(byte **)(iVar3 + 8));
                          *(uint *)((int)entry + 0x858) = uVar5;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return true;
  }
  return false;
}

