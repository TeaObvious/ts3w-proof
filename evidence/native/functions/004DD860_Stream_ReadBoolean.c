/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. cdecl(stream,outBoolean), two stack words. Read one byte
   into reused stream-argument stack storage. On count one normalize nonzero byte to one in output
   and return AL true; short read leaves output untouched and returns false. Lost indirect-call
   arguments caused the older decompiler alias. */

bool __cdecl Stream_ReadBoolean(void *stream,void *outBoolean)

{
  uint uVar1;
  
  uVar1 = (**(code **)(*(int *)stream + 0x30))(stream,&stream,1);
  if (uVar1 == 1) {
    *(bool *)outBoolean = (char)stream != '\0';
    return true;
  }
  return false;
}

