/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Physical ECX is editor interface at complete+250, three
   stack words RET0C. Read unsigned cursor+74 and anchor+78, compute min as start and max-min as
   removal length; dispatch editor virtual8C with five words start/remove/characters/count/notify.
   Selection receiver and incoming argument order confirmed by character producer53FF30 and editor
   tableFC0E00+88/8C. The delegated AL result is preserved; no direct caption replacement.
   
   Actual C synthesizes _notify using undefined upper argument bytes when forwarding the whole DWORD
   stack slot. The incoming/outgoing physical argument still occupies one DWORD; only low byte is a
   boolean in selected ReplaceRange. This is not a fourth explicit input or a new policy. */

bool __thiscall
UiTextEdit_ReplaceSelection(void *this,void *characters,uint characterCount,bool notify)

{
  uint *puVar1;
  undefined1 uVar2;
  uint *puVar3;
  uint *puVar4;
  undefined3 in_stack_0000000d;
  
  puVar3 = (uint *)((int)this + 0x78);
  puVar1 = (uint *)((int)this + 0x74);
  puVar4 = puVar3;
  if (*(uint *)((int)this + 0x74) <= *(uint *)((int)this + 0x78)) {
    puVar4 = puVar1;
  }
  if (*puVar3 <= *puVar1) {
    puVar3 = puVar1;
  }
  uVar2 = (**(code **)(*(int *)this + 0x8c))
                    (*puVar4,*puVar3 - *puVar4,characters,characterCount,_notify);
  return (bool)uVar2;
}

