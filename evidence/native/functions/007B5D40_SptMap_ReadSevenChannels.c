/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 SPT section instruction contract. TWOstackpointers RET8; incomingECXunused,
   notthiscall. Reads/discardsoneword without markercheck, then loopsuntil70001. Tags70002..70008
   each callbytestringreader into oneofseven16byte stringdescriptors offsets0/10/20/30/40/50/60hex.
   Duplicatetagsreplace correspondingstring; unknownword consumesnoadditionalpayloadhere. Channel
   semanticnames not recovered fromthisreader. Originaljump table7B5DA8 establishes tagdispatch. */

void SptMap_ReadSevenChannels(int *channels,int *cursor)

{
  uint uVar1;
  int *outputString;
  
  SptCursor_ReadWordLE(cursor);
  do {
    uVar1 = SptCursor_ReadWordLE(cursor);
    switch(uVar1) {
    default:
      goto switchD_007b5d66_caseD_11171;
    case 0x11172:
      outputString = channels;
      break;
    case 0x11173:
      outputString = channels + 4;
      break;
    case 0x11174:
      outputString = channels + 8;
      break;
    case 0x11175:
      outputString = channels + 0xc;
      break;
    case 0x11176:
      outputString = channels + 0x10;
      break;
    case 0x11177:
      outputString = channels + 0x14;
      break;
    case 0x11178:
      outputString = channels + 0x18;
    }
    SptCursor_ReadByteString(cursor,outputString);
switchD_007b5d66_caseD_11171:
    if (uVar1 == 0x11171) {
      return;
    }
  } while( true );
}

