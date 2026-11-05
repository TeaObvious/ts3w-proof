/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 command-token reader; name is analyst-assigned, not an EA symbol. Existing stored
   prototype is unchanged. Actual cdecl caller supplies SIX physical stack words: UTF16 begin,
   bounded end, UInt16 separator, token-begin output, token-end output, optional next output. AL is
   the success flag; do not treat unspecified upper EAX as a 32-bit Boolean contract.
   
   For the command caller's separator0x20, only U+0020/U+0009 separate tokens and are skipped
   initially. Actual ADD counter1 at004FFF98 and TEST BYTE[counter],1 at004FFFA1 establish QUOTE
   PARITY. The genuine C reduction testing a char count==0 is inaccurate. Nonfinal quotes toggle
   parity; an input-final unit ends the token independently of parity, and a final nonseparator is
   included. No unmatched-quote rejection is performed here.
   
   Next output is captured BEFORE optional outer quote stripping.00500006..00500020 strips only
   matching first/last quotes; embedded quotes remain. Input characters are never modified or
   temporarily nul-terminated: only output pointers/local state are written. A singleton quote can
   make token-begin exceed token-end after stripping; downstream bounded string-construction
   failure/acceptance is unproved. Other-separator trimming is a distinct branch, not the command
   caller's grammar. No escape syntax or Unicode whitespace extension is inferred. No type/ABI/byte
   change. */

uint __cdecl
ConsoleCommandText_ReadTokenBounds
          (short *param_1,short *param_2,short param_3,int *param_4,int *param_5,int *param_6)

{
  char cVar1;
  short sVar2;
  short *psVar3;
  int iVar4;
  
  cVar1 = '\0';
  *param_4 = (int)param_1;
  while (param_1 < param_2) {
    sVar2 = *(short *)*param_4;
    if ((sVar2 != 0x20) && (sVar2 != 9)) break;
    param_1 = (short *)*param_4 + 1;
    *param_4 = (int)param_1;
  }
  psVar3 = (short *)*param_4;
  *param_5 = (int)psVar3;
  do {
    if (param_2 <= psVar3) {
      if (param_6 != (int *)0x0) {
        param_5 = (int *)*param_5;
        *param_6 = (int)param_5;
      }
      return (uint)param_5 & 0xffffff00;
    }
    psVar3 = (short *)*param_5 + 1;
    sVar2 = *(short *)*param_5;
    if (param_3 == 0x20) {
      if ((sVar2 == 0x20) || (sVar2 == 9)) goto LAB_004fffa1;
LAB_004fff8e:
      if (psVar3 == param_2) {
        *param_5 = (int)psVar3;
        goto LAB_004fffa1;
      }
      if (sVar2 == 0x22) {
        cVar1 = cVar1 + '\x01';
      }
    }
    else {
      if (sVar2 != param_3) goto LAB_004fff8e;
LAB_004fffa1:
      if ((cVar1 == '\0') || (psVar3 == param_2)) {
        if (param_6 != (int *)0x0) {
          *param_6 = *param_5;
        }
        if (((param_3 == 0x20) || ((short *)*param_5 == param_2)) ||
           ((short *)*param_5 == (short *)*param_4)) goto LAB_00500006;
        break;
      }
    }
    *param_5 = *param_5 + 2;
    psVar3 = (short *)*param_5;
  } while( true );
  while (*param_5 = iVar4, iVar4 != *param_4) {
    sVar2 = *(short *)(*param_5 + -2);
    iVar4 = *param_5 + -2;
    if ((sVar2 != 0x20) && (sVar2 != 9)) break;
  }
LAB_00500006:
  psVar3 = (short *)*param_4;
  if (((psVar3 != param_2) && (*psVar3 == 0x22)) && (*(short *)(*param_5 + -2) == 0x22)) {
    *param_4 = (int)(psVar3 + 1);
    *param_5 = *param_5 + -2;
  }
  return CONCAT31((int3)((uint)param_5 >> 8),1);
}

