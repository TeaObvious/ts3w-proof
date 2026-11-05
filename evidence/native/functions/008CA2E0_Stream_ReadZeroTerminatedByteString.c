/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Swarm collection contract. cdeclstream,stringBuffer RET; EAXreturnssame stream,
   NOTsuccessflag. Clears existing stringcontents/end ifnonempty, thenvirtualstream+30
   ECXreceiver+two stackargs(&byte,1). Append nonzero bytes through40B920,
   repeatwhileactualreadcount==1. NULbyteor ANYshortread stops; zero consumed butnotappended. No
   lengthprefix, printableASCIIvalidation, UTF decoding or localmaxcount established. Embedded bytes
   appended raw; missingterminator atEOF mayleavepartialstring andsame streamreturn.
   ScopedvirtualABIcorrects falseunaff_retaddr/localstackaliases. Buffer growth/allocator failures
   belongchild. */

void * __cdecl Stream_ReadZeroTerminatedByteString(void *stream,void *stringBuffer)

{
  void *this;
  uint uVar1;
  
  this = stringBuffer;
  if (*(undefined1 **)stringBuffer != *(undefined1 **)((int)stringBuffer + 4)) {
    **(undefined1 **)stringBuffer = 0;
    *(undefined4 *)((int)stringBuffer + 4) = *(undefined4 *)stringBuffer;
  }
  uVar1 = (**(code **)(*(int *)stream + 0x30))(stream,(byte *)&stringBuffer,1);
  while ((uVar1 == 1 && ((char)stringBuffer != '\0'))) {
    FUN_0040b920(this,(char)stringBuffer);
    uVar1 = (**(code **)(*(int *)stream + 0x30))(stream,(byte *)&stringBuffer,1);
  }
  return stream;
}

