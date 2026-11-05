/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */

/* Retained historical annotation 1, previous canonical/import C line 5;
   commentary from that earlier export, preserved without changing the genuine C suffix. */
/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Physical ECX stair receiver and one pointer to X/Z/Int32level, RET4. C8E7D0 then C969E0 must succeed before bounds B14C80 and level checks. Point+8 equals receiver bottom+58, top+4C minusbottom equals1. Absolute X/Z distances and direction table dispatch feed B14BC0 nearzero checks; success MOV EAX1, other early failures XOR AL only. IncomingB16576 firstmatch owner remains incomplete; no full stair height or product predicate meaning recovered.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00B15A60_FUN_00b15a60.asm
 */



uint __thiscall FUN_00b15a60(void *this,float *param_1)

{
  float fVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  undefined4 uVar5;
  float fVar6;
  int extraout_EDX;
  
  iVar2 = FUN_00c8e7d0(DAT_011ee034,this,'\x01');
  fVar3 = 0.0;
  if ((iVar2 != 0) && (fVar3 = (float)FUN_00c969e0(iVar2), SUB41(fVar3,0) != '\0')) {
    fVar1 = *param_1;
    fVar3 = (float)TestStairSlopeFootprint(this,fVar1,param_1[1]);
    if ((SUB41(fVar3,0) != '\0') &&
       ((fVar3 = *(float *)((int)this + 0x58), *(float *)(extraout_EDX + 8) == fVar3 &&
        (*(int *)((int)this + 0x4c) - (int)fVar3 == 1)))) {
      fVar4 = ABS(fVar1 - *(float *)((int)this + 0x44));
      fVar6 = ABS(*(float *)(extraout_EDX + 4) - *(float *)((int)this + 0x48));
      fVar3 = ABS(*(float *)(extraout_EDX + 4) - *(float *)((int)this + 0x54));
      switch(*(undefined4 *)((int)this + 0x40)) {
      case 0:
      case 4:
        uVar5 = FUN_00b14bc0(fVar3,0.0);
        if ((char)uVar5 != '\0') {
          return 1;
        }
        uVar5 = FUN_00b14bc0(fVar6,0.0);
        if ((char)uVar5 != '\0') {
          return 1;
        }
        break;
      default:
        goto switchD_00b15b51_caseD_1;
      case 2:
      case 6:
        uVar5 = FUN_00b14bc0(ABS(fVar1 - *(float *)((int)this + 0x50)),0.0);
        if ((char)uVar5 != '\0') {
          return 1;
        }
        uVar5 = FUN_00b14bc0(fVar4,0.0);
        if ((char)uVar5 != '\0') {
          return 1;
        }
        fVar4 = fVar6;
      }
      uVar5 = FUN_00b14bc0(fVar4,0.0);
      if ((char)uVar5 == '\0') {
        return 0;
      }
      return 1;
    }
  }
switchD_00b15b51_caseD_1:
  return (uint)fVar3 & 0xffffff00;
}

