/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECXtool plus
   opaque descriptionpointer/RET4; all exits AL0or1, not wholeEAX. Closed flow CD5CC0..CD5DB2;
   neighboring priorRET atCD5CB6..B8 and nextentryCD5DC0 excluded. CD2D30 initial admission, CD57D0
   retire, nullableinput success path; nonnullinput CEFAE0 gives16-byte key copied tool60..6C.
   Native globalcatalog/C8EDE0 lookup gates failure; productE0/E4 copiedtoolA8/AC, DWORD88→118,
   fullkeyC0→70..7C andB0→80..8C before existing toolcalls. No complete poolplanner or
   description struct ownership inferred. */

bool __thiscall CurvedPoolTool_AdmitDescriptionProduct(void *this,void *description)

{
  char cVar1;
  undefined4 *puVar2;
  void *pvVar3;
  
  cVar1 = FUN_00cd2d30((int)this);
  if (cVar1 != '\0') {
    FUN_00cd57d0((int)this);
    if (description == (void *)0x0) {
      return true;
    }
    puVar2 = (undefined4 *)FUN_00cefae0((int)description);
    *(undefined4 *)((int)this + 0x60) = *puVar2;
    *(undefined4 *)((int)this + 100) = puVar2[1];
    *(undefined4 *)((int)this + 0x68) = puVar2[2];
    *(undefined4 *)((int)this + 0x6c) = puVar2[3];
    if (DAT_011ee034 != (void *)0x0) {
      pvVar3 = CurvedPoolCatalog_LookupDescriptionProduct(DAT_011ee034,(void *)((int)this + 0x60));
      if (pvVar3 != (void *)0x0) {
                    /* Original productE0/E4 become toolA8/AC; complete C0/B0 key copies follow;
                       actual native consumer closure. */
        *(undefined4 *)((int)this + 0xa8) = *(undefined4 *)((int)pvVar3 + 0xe0);
        *(undefined4 *)((int)this + 0xac) = *(undefined4 *)((int)pvVar3 + 0xe4);
        *(undefined4 *)((int)this + 0x118) = *(undefined4 *)((int)pvVar3 + 0x88);
        *(undefined4 *)((int)this + 0x70) = *(undefined4 *)((int)pvVar3 + 0xc0);
        *(undefined4 *)((int)this + 0x74) = *(undefined4 *)((int)pvVar3 + 0xc4);
        *(undefined4 *)((int)this + 0x78) = *(undefined4 *)((int)pvVar3 + 200);
        *(undefined4 *)((int)this + 0x7c) = *(undefined4 *)((int)pvVar3 + 0xcc);
        *(undefined4 *)((int)this + 0x80) = *(undefined4 *)((int)pvVar3 + 0xb0);
        *(undefined4 *)((int)this + 0x84) = *(undefined4 *)((int)pvVar3 + 0xb4);
        *(undefined4 *)((int)this + 0x88) = *(undefined4 *)((int)pvVar3 + 0xb8);
        *(undefined4 *)((int)this + 0x8c) = *(undefined4 *)((int)pvVar3 + 0xbc);
        FUN_00cd5980(this,'\x01');
        FUN_00cd4f60((int)this);
        return true;
      }
      *(undefined1 *)((int)this + 0x54) = 1;
      FUN_00cd5850((int)this);
    }
  }
  return false;
}

