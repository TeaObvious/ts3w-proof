/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 SPT section instruction contract. ECXtree +cursorstack RET4.
   Branchpointervector+58/+5C count=(end-begin)>>2. Iterate index0 THROUGHcount inclusive:
   explicitbranchpointers then defaultbranch+124. Each hasEXACT7records of44bytes
   startingbranch+13650. Eachrecord discardsoneword (beginmarkernotvalidated), readtagsuntil50003;
   afterallrecords discardsoneword (sectionendnotvalidated).50004/5
   floatsstore+10/+14;50008+18;50010+20;50013/14/15/16 +0/+4/+8/+C;50017+1C.50006/7/9/11/12/18
   rawbyte!=0 normalizedstores+24/+25/+26/+27/+28/+29. Duplicatesoverwrite. Unknownwords
   notpayloadskipped. Constructors/defaults andrequiredfieldvalidationnotestablishedhere.
   Parenttag50000marks sectionpresent; inheritancehelper7BD860iscallONLYwhen thatsectionwasabsent.
    */

void __thiscall SptTree_ReadBranchTextureControls(void *this,int *cursor)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  float *pfVar4;
  float fVar5;
  uint local_8;
  
  local_8 = 0;
  do {
    if (local_8 < (uint)(*(int *)((int)this + 0x5c) - *(int *)((int)this + 0x58) >> 2)) {
      iVar3 = *(int *)(*(int *)((int)this + 0x58) + local_8 * 4);
    }
    else {
      iVar3 = *(int *)((int)this + 0x124);
    }
    pfVar4 = (float *)(iVar3 + 0x13664);
    iVar3 = 7;
    do {
      SptCursor_ReadWordLE(cursor);
      do {
        uVar2 = SptCursor_ReadWordLE(cursor);
        switch(uVar2) {
        case 0xc354:
          fVar5 = SptCursor_ReadFloatLE(cursor);
          pfVar4[-1] = fVar5;
          break;
        case 0xc355:
          fVar5 = SptCursor_ReadFloatLE(cursor);
          *pfVar4 = fVar5;
          break;
        case 0xc356:
          iVar1 = *cursor;
          *cursor = iVar1 + 1;
          *(bool *)(pfVar4 + 4) = *(char *)(iVar1 + cursor[1]) != '\0';
          break;
        case 0xc357:
          iVar1 = *cursor;
          *cursor = iVar1 + 1;
          *(bool *)((int)pfVar4 + 0x11) = *(char *)(iVar1 + cursor[1]) != '\0';
          break;
        case 0xc358:
          fVar5 = SptCursor_ReadFloatLE(cursor);
          pfVar4[1] = fVar5;
          break;
        case 0xc359:
          iVar1 = *cursor;
          *cursor = iVar1 + 1;
          *(bool *)((int)pfVar4 + 0x12) = *(char *)(iVar1 + cursor[1]) != '\0';
          break;
        case 0xc35a:
          fVar5 = SptCursor_ReadFloatLE(cursor);
          pfVar4[3] = fVar5;
          break;
        case 0xc35b:
          iVar1 = *cursor;
          *cursor = iVar1 + 1;
          *(bool *)((int)pfVar4 + 0x13) = *(char *)(iVar1 + cursor[1]) != '\0';
          break;
        case 0xc35c:
          iVar1 = *cursor;
          *cursor = iVar1 + 1;
          *(bool *)(pfVar4 + 5) = *(char *)(iVar1 + cursor[1]) != '\0';
          break;
        case 0xc35d:
          fVar5 = SptCursor_ReadFloatLE(cursor);
          pfVar4[-5] = fVar5;
          break;
        case 0xc35e:
          fVar5 = SptCursor_ReadFloatLE(cursor);
          pfVar4[-4] = fVar5;
          break;
        case 0xc35f:
          fVar5 = SptCursor_ReadFloatLE(cursor);
          pfVar4[-3] = fVar5;
          break;
        case 0xc360:
          fVar5 = SptCursor_ReadFloatLE(cursor);
          pfVar4[-2] = fVar5;
          break;
        case 0xc361:
          fVar5 = SptCursor_ReadFloatLE(cursor);
          pfVar4[2] = fVar5;
          break;
        case 0xc362:
          iVar1 = *cursor;
          *cursor = iVar1 + 1;
          *(bool *)((int)pfVar4 + 0x15) = *(char *)(iVar1 + cursor[1]) != '\0';
        }
      } while (uVar2 != 0xc353);
      pfVar4 = pfVar4 + 0xb;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    local_8 = local_8 + 1;
                    /* UnsignedJBE includesdefaultbranch after all explicitbranches;
                       seven44byterecords foreach. No8threcord and noomitteddefaultbranch. */
  } while (local_8 <= (uint)(*(int *)((int)this + 0x5c) - *(int *)((int)this + 0x58) >> 2));
  SptCursor_ReadWordLE(cursor);
  return;
}

