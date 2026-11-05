/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_ParseTreeUserDataFields:


/* Analyst-assigned name. Lexes complete tree user-data string: whitespace, alpha/alnum keys,
   optional equals, unquoted tokens or double-quoted values, semicolon separators. Quoted values
   start after opening quote, can include whitespace and end before closing quote. Typed readers use
   sscanf for color/float tuples; invalid overall syntax returns false. Unknown keys are skipped
   only within valid grammar. This differs from splitting strings on newline/semicolon without
   respecting quotes. */

uint __cdecl Seasons_ParseTreeUserDataFields(byte *userDataText,float *parsedFieldStorage)

{
  byte bVar1;
  float *in_EAX;
  undefined3 uVar3;
  int iVar2;
  float *extraout_EAX;
  float *pfVar4;
  byte *pbVar5;
  byte *pbVar6;
  byte *pbVar7;
  float10 fVar8;
  byte *valueText;
  float local_48;
  float local_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;

  if (userDataText == (byte *)0x0) {
LAB_007c0842:
    return (uint)in_EAX & 0xffffff00;
  }
  *(undefined1 *)(parsedFieldStorage + 0x18) = 0;
  *(undefined1 *)((int)parsedFieldStorage + 0x61) = 0;
  *(undefined1 *)((int)parsedFieldStorage + 0x62) = 0;
  *(undefined1 *)((int)parsedFieldStorage + 99) = 0;
  *(undefined1 *)(parsedFieldStorage + 0x19) = 0;
  *(undefined1 *)((int)parsedFieldStorage + 0x65) = 0;
  in_EAX = parsedFieldStorage;
  do {
    while( true ) {
      bVar1 = *userDataText;
      uVar3 = (undefined3)((uint)in_EAX >> 8);
      if ((((bVar1 != 0x20) && (bVar1 != 9)) && (bVar1 != 10)) && (bVar1 != 0xd)) break;
      userDataText = userDataText + 1;
      in_EAX = (float *)CONCAT31(uVar3,bVar1);
    }
    bVar1 = *userDataText;
    in_EAX = (float *)CONCAT31(uVar3,bVar1);
    if (bVar1 == 0) {
LAB_007c0839:
      return CONCAT31((int3)((uint)in_EAX >> 8),1);
    }
    iVar2 = isalpha((uint)bVar1);
    pbVar5 = userDataText + 1;
    in_EAX = (float *)0x0;
    if (iVar2 == 0) goto LAB_007c0842;
    iVar2 = isalnum((uint)*pbVar5);
    while (iVar2 != 0) {
      pbVar6 = pbVar5 + 1;
      pbVar5 = pbVar5 + 1;
      iVar2 = isalnum((uint)*pbVar6);
    }
    valueText = &DAT_00f98f7a;
    for (pbVar6 = pbVar5;
        ((bVar1 = *pbVar6, bVar1 == 0x20 || (bVar1 == 9)) || ((bVar1 == 10 || (bVar1 == 0xd))));
        pbVar6 = pbVar6 + 1) {
    }
    pbVar7 = &DAT_00f98f7a;
    if (*pbVar6 == 0x3d) {
      do {
        do {
          pbVar7 = pbVar6;
          bVar1 = pbVar7[1];
          valueText = pbVar7 + 1;
          pbVar6 = valueText;
        } while (bVar1 == 0x20);
      } while (((bVar1 == 9) || (bVar1 == 10)) || (bVar1 == 0xd));
                    /* Quoted value branch: opening quote advances value start by one additional
                       character; scanning stops at matching quote. sscanf receives the inside text,
                       so quoted RGB/snow tuples are valid input. */
      if (bVar1 == 0x22) {
        valueText = pbVar7 + 2;
        bVar1 = pbVar7[2];
        pbVar7 = valueText;
        while ((bVar1 != 0 && (bVar1 != 0x22))) {
          pbVar6 = pbVar7 + 1;
          pbVar7 = pbVar7 + 1;
          bVar1 = *pbVar6;
        }
        pbVar6 = pbVar7;
        if (*pbVar7 == 0x22) {
          pbVar6 = pbVar7 + 1;
        }
      }
      else {
        while ((((pbVar7 = pbVar6, bVar1 != 0x3b && (bVar1 != 0x20)) && (bVar1 != 9)) &&
               (((bVar1 != 10 && (bVar1 != 0xd)) && (bVar1 != 0))))) {
          bVar1 = pbVar6[1];
          pbVar6 = pbVar6 + 1;
        }
      }
    }
    pfVar4 = (float *)(pbVar5 + -(int)userDataText);
    if (pfVar4 == (float *)&DAT_00000005) {
      pfVar4 = (float *)_strnicmp((char *)userDataText,"pivot",5);
      if (pfVar4 == (float *)0x0) {
        fVar8 = FUN_004ffbf0((char *)valueText,(undefined4 *)0x0);
        parsedFieldStorage[1] = (float)fVar8;
        pfVar4 = parsedFieldStorage;
      }
    }
    else if (pfVar4 == (float *)&DAT_00000006) {
      pfVar4 = (float *)_strnicmp((char *)userDataText,"radius",6);
      if (pfVar4 == (float *)0x0) {
        fVar8 = FUN_004ffbf0((char *)valueText,(undefined4 *)0x0);
        *parsedFieldStorage = (float)(fVar8 * (float10)0.3048);
        pfVar4 = extraout_EAX;
      }
    }
    else if (pfVar4 == (float *)&DAT_00000004) {
      pfVar4 = (float *)_strnicmp((char *)userDataText,"type",4);
      if ((pfVar4 == (float *)0x0) &&
         (pfVar4 = (float *)(pbVar7 + -(int)valueText), pbVar7 + -(int)valueText == &DAT_00000005))
      {
        iVar2 = _strnicmp((char *)valueText,"large",5);
        if (iVar2 == 0) {
          parsedFieldStorage[2] = 0.0;
          pfVar4 = parsedFieldStorage;
        }
        else {
          iVar2 = _strnicmp((char *)valueText,"small",5);
          if (iVar2 == 0) {
            parsedFieldStorage[2] = 1.4013e-45;
            pfVar4 = (float *)0x0;
          }
          else {
            iVar2 = _strnicmp((char *)valueText,"shrub",5);
            if (iVar2 == 0) {
              parsedFieldStorage[2] = 2.8026e-45;
              pfVar4 = (float *)0x0;
            }
            else {
              pfVar4 = (float *)_strnicmp((char *)valueText,"cover",5);
              if (pfVar4 == (float *)0x0) {
                parsedFieldStorage[2] = 4.2039e-45;
                pfVar4 = parsedFieldStorage;
              }
            }
          }
        }
      }
    }
    else if (pfVar4 == (float *)&DAT_00000015) {
      pfVar4 = (float *)_strnicmp((char *)userDataText,"surfaceattributeflags",0x15);
      if (pfVar4 == (float *)0x0) {
        parsedFieldStorage[3] = 0.0;
        pfVar4 = (float *)FUN_007bfe20(valueText,(int)parsedFieldStorage);
        bVar1 = *pbVar6;
        while (bVar1 != 0x3b) {
          pbVar6 = pbVar6 + 1;
          bVar1 = *pbVar6;
        }
      }
    }
    else if (pfVar4 == (float *)&DAT_00000010) {
      pfVar4 = (float *)_strnicmp((char *)userDataText,"surfacetypeflags",0x10);
      if (pfVar4 == (float *)0x0) {
        parsedFieldStorage[4] = 0.0;
        pfVar4 = (float *)FUN_007bfe20(valueText,(int)parsedFieldStorage);
        bVar1 = *pbVar6;
        while (bVar1 != 0x3b) {
          pbVar6 = pbVar6 + 1;
          bVar1 = *pbVar6;
        }
      }
    }
    else if (pfVar4 == (float *)0x11) {
      pfVar4 = (float *)_strnicmp((char *)userDataText,"surfacetypeflags2",0x11);
      if (pfVar4 == (float *)0x0) {
        parsedFieldStorage[5] = 0.0;
        pfVar4 = (float *)FUN_007bfe20(valueText,(int)parsedFieldStorage);
        bVar1 = *pbVar6;
        while (bVar1 != 0x3b) {
          pbVar6 = pbVar6 + 1;
          bVar1 = *pbVar6;
        }
      }
    }
    else if (pfVar4 == (float *)0xa) {
      iVar2 = _strnicmp((char *)userDataText,"fallColor0",10);
      if (iVar2 == 0) {
        pfVar4 = (float *)FUN_007c0080((char *)valueText,&local_40);
        if ((char)pfVar4 != '\0') {
          parsedFieldStorage[8] = local_40;
          parsedFieldStorage[9] = parsedFieldStorage[9];
          parsedFieldStorage[10] = parsedFieldStorage[10];
          parsedFieldStorage[0xb] = parsedFieldStorage[0xb];
          parsedFieldStorage[8] = parsedFieldStorage[8];
          parsedFieldStorage[9] = fStack_3c;
          parsedFieldStorage[10] = parsedFieldStorage[10];
          parsedFieldStorage[0xb] = parsedFieldStorage[0xb];
          parsedFieldStorage[8] = parsedFieldStorage[8];
          parsedFieldStorage[9] = parsedFieldStorage[9];
          parsedFieldStorage[10] = fStack_38;
          parsedFieldStorage[0xb] = parsedFieldStorage[0xb];
          *(undefined1 *)(parsedFieldStorage + 0x18) = 1;
          pfVar4 = parsedFieldStorage;
        }
      }
      else {
        iVar2 = _strnicmp((char *)userDataText,"fallColor1",10);
        if (iVar2 == 0) {
          pfVar4 = (float *)FUN_007c0080((char *)valueText,&local_30);
          if ((char)pfVar4 != '\0') {
            parsedFieldStorage[0xc] = local_30;
            parsedFieldStorage[0xd] = parsedFieldStorage[0xd];
            parsedFieldStorage[0xe] = parsedFieldStorage[0xe];
            parsedFieldStorage[0xf] = parsedFieldStorage[0xf];
            parsedFieldStorage[0xc] = parsedFieldStorage[0xc];
            parsedFieldStorage[0xd] = fStack_2c;
            parsedFieldStorage[0xe] = parsedFieldStorage[0xe];
            parsedFieldStorage[0xf] = parsedFieldStorage[0xf];
            parsedFieldStorage[0xc] = parsedFieldStorage[0xc];
            parsedFieldStorage[0xd] = parsedFieldStorage[0xd];
            parsedFieldStorage[0xe] = fStack_28;
            parsedFieldStorage[0xf] = parsedFieldStorage[0xf];
            *(undefined1 *)((int)parsedFieldStorage + 0x61) = 1;
            pfVar4 = parsedFieldStorage;
          }
        }
        else {
          pfVar4 = (float *)_strnicmp((char *)userDataText,"snowParams",10);
          if ((pfVar4 == (float *)0x0) &&
             (pfVar4 = (float *)FUN_007c0130((char *)valueText,parsedFieldStorage + 0x14),
             (char)pfVar4 != '\0')) {
            *(undefined1 *)((int)parsedFieldStorage + 0x65) = 1;
          }
        }
      }
    }
    else if (pfVar4 == (float *)0xd) {
      pfVar4 = (float *)_strnicmp((char *)userDataText,"fallVariation",0xd);
      if ((pfVar4 == (float *)0x0) &&
         (pfVar4 = (float *)FUN_007c01d0((char *)valueText,&local_20), (char)pfVar4 != '\0')) {
        parsedFieldStorage[0x10] = local_20;
        parsedFieldStorage[0x11] = fStack_1c;
        parsedFieldStorage[0x12] = fStack_18;
        parsedFieldStorage[0x13] = fStack_14;
        *(undefined1 *)(parsedFieldStorage + 0x19) = 1;
        pfVar4 = parsedFieldStorage;
      }
    }
    else if (pfVar4 == (float *)&DAT_0000000e) {
      iVar2 = _strnicmp((char *)userDataText,"fallLuminance0",0xe);
      if (iVar2 == 0) {
        local_48 = 1.0;
        pfVar4 = (float *)FUN_007bfdd0((char *)valueText,&local_48);
        if ((char)pfVar4 != '\0') {
          parsedFieldStorage[8] = parsedFieldStorage[8];
          parsedFieldStorage[9] = parsedFieldStorage[9];
          parsedFieldStorage[10] = parsedFieldStorage[10];
          parsedFieldStorage[0xb] = local_48;
          *(undefined1 *)((int)parsedFieldStorage + 0x62) = 1;
          pfVar4 = parsedFieldStorage;
        }
      }
      else {
        pfVar4 = (float *)_strnicmp((char *)userDataText,"fallLuminance1",0xe);
        if (pfVar4 == (float *)0x0) {
          local_44 = 1.0;
          pfVar4 = (float *)FUN_007bfdd0((char *)valueText,&local_44);
          if ((char)pfVar4 != '\0') {
            parsedFieldStorage[0xc] = parsedFieldStorage[0xc];
            parsedFieldStorage[0xd] = parsedFieldStorage[0xd];
            parsedFieldStorage[0xe] = parsedFieldStorage[0xe];
            parsedFieldStorage[0xf] = local_44;
            *(undefined1 *)((int)parsedFieldStorage + 99) = 1;
            pfVar4 = parsedFieldStorage;
          }
        }
      }
    }
    while( true ) {
      bVar1 = *pbVar6;
      uVar3 = (undefined3)((uint)pfVar4 >> 8);
      if ((((bVar1 != 0x20) && (bVar1 != 9)) && (bVar1 != 10)) && (bVar1 != 0xd)) break;
      pbVar6 = pbVar6 + 1;
      pfVar4 = (float *)CONCAT31(uVar3,bVar1);
    }
    bVar1 = *pbVar6;
    in_EAX = (float *)CONCAT31(uVar3,bVar1);
    if (bVar1 == 0) goto LAB_007c0839;
    if (bVar1 != 0x3b) goto LAB_007c0842;
    userDataText = pbVar6 + 1;
  } while( true );
}


