/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual primaryFC1038+38=53FF30, reached by dispatcher504810
   message5 which MOVZXes payload+10 word and pushes it plus payload+0C. Physical two DWORD slots
   RET8, only low16 character read. Read-only state+258 bit1 returnsAL1 without edit. Values<20hex:
   Tab rejectsAL0; LF and CR are accepted only when flags bit2, with CR normalized to LF; other
   control values rejectAL0. Values>=20hex pass (including7Fhex); this differs from current
   char.IsControl. Cursor+2C4 versus anchor+2C8 controls selection; equal+overwritebit8 uses
   editor-interface8C replacement(cursor,1,charptr,1,1), otherwise interface88 replaces selection.
   Both edit callback results ignored and AL1 returned, no current unconditional insertion/cursor+1
   equivalence.
   
   Actual C may synthesize _character with an undefined upper-half stack alias because the physical
   CR-normalization writes the entire DWORD argument slot to10 while ordinary input reads low16.
   Dispatcher MOVZX proves the input character value; upper-half synthetic C is not another input
   parameter. */

bool __thiscall UiTextEdit_HandleCharacter(void *this,uint opaqueSource,ushort character)

{
  undefined2 in_stack_0000000a;
  
  if ((*(byte *)((int)this + 600) & 1) == 0) {
    if (character < 0x20) {
      if (character == 9) {
        return false;
      }
      if (character == 10) {
        if ((*(byte *)((int)this + 600) & 2) == 0) {
          return false;
        }
      }
      else {
        if (character != 0xd) {
          return false;
        }
        if ((*(byte *)((int)this + 600) & 2) == 0) {
          return false;
        }
        _character = 10;
      }
    }
    if ((*(int *)((int)this + 0x2c4) == *(int *)((int)this + 0x2c8)) &&
       ((*(uint *)((int)this + 600) >> 3 & 1) != 0)) {
      (**(code **)(*(int *)((int)this + 0x250) + 0x8c))
                (*(int *)((int)this + 0x2c4),1,&character,1,1);
      return true;
    }
    (**(code **)(*(int *)((int)this + 0x250) + 0x88))(&character,1,1);
  }
  return true;
}

