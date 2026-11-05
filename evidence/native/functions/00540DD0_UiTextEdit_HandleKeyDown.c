/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual constructor primaryFC1038+30=540DD0. Original
   dispatcher504810 message1 selects virtual30 and pushes three DWORDs from payload0C/10/14;
   physical RET0C. First source word unused here, second keyCode, third modifier bits; do not infer
   platform modifier names from masks. Full switch dispatch uses unsigned keyCode-8 <=D6, byte
   table541538 (215 entries), then20target table5414E8.
   Backspace8,Tab9,Return13,Escape27,End35,Home36,Left37,Up38,Right39,Down40,Insert45,Delete46,
   Modifier-gated C/V/X/Y/Z and selected keypad variants have native branches. Selection/anchor,
   movement units, overwrite/clipboard/password/undo/redo and failure error events differ from
   current simplified editor. Return accepts when editor state flag2hex absent: event22 carries
   controlID, full text length and pointer, returns AL0. Tab sends9B1552DC and AL0. Escape calls
   editor virtual90(0) and AL0; it does not directly implement current clear-focus behavior.
   Printable A-Z/0-9 default returnsAL1; other unknowns returnAL0. See actual switch for all
   consumed-vs-false exits; no invented char.IsControl or consume-all policy.
   
   Actual C retains an unaff_EBX-high-byte alias for its read-only snapshot and damaged indirect
   paste-call argument grouping. Physical540DEF loads AL from complete+258;540DFE masks bit1,540E0E
   stores it at stack+13, later branches reload that same byte (not arbitrary EBX).
   Physical5413E0..541422 pushes notify1/count/string for editor88 and later releases the clipboard
   object; no guessed child prototype repair is applied. Original ASM is authoritative for these
   aliases. */

bool __thiscall UiTextEdit_HandleKeyDown(void *this,uint opaqueSource,uint keyCode,uint modifiers)

{
  short sVar1;
  byte bVar2;
  bool bVar3;
  byte bVar4;
  char cVar5;
  char cVar6;
  void *pvVar7;
  undefined4 uVar8;
  int *piVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  byte bVar13;
  uint uVar14;
  undefined4 unaff_EBX;
  uint uVar15;
  uint uVar16;
  uint uStack_24;
  undefined1 auStack_1c [8];
  undefined4 uStack_14;
  undefined4 uStack_10;
  int iStack_8;
  int *piStack_4;
  
  uVar14 = modifiers;
  uVar16 = keyCode;
  bVar2 = (byte)modifiers;
  uVar10 = *(uint *)((int)this + 600);
  modifiers = CONCAT31(modifiers._1_3_,(char)(modifiers >> 2)) & 0xffffff01;
  uVar12 = uVar14 >> 1;
  bVar13 = bVar2 & 1;
  bVar4 = *(byte *)((int)this + 600) & 1;
  uVar15 = uVar10 >> 6;
  uStack_24 = CONCAT31(uStack_24._1_3_,bVar2) & 0xffffff01;
  if (((uVar15 & 1) == 0) && (bVar4 != 0)) {
    bVar3 = false;
  }
  else {
    bVar3 = true;
  }
  cVar6 = (char)((uint)unaff_EBX >> 0x18);
  switch(keyCode) {
  case 8:
    if (bVar4 != 0) {
      return true;
    }
    iVar11 = *(int *)((int)this + 0x2c4);
    if (iVar11 != *(int *)((int)this + 0x2c8)) {
LAB_00540fc1:
      (**(code **)(*(int *)((int)this + 0x250) + 0x88))(0,0,1);
      return true;
    }
    if (iVar11 != 0) {
      (**(code **)(*(int *)((int)this + 0x250) + 0x8c))(iVar11 + -1,1,0,0,1);
      return true;
    }
    goto LAB_00541021;
  case 9:
    uStack_14 = 0x9b1552dc;
    (**(code **)(*(int *)((int)this + 4) + 0x118))(auStack_1c);
    return false;
  default:
    if (((keyCode < 0x41) || (0x5a < keyCode)) && (9 < keyCode - 0x30)) {
      return false;
    }
    return true;
  case 0xd:
    if ((uVar10 & 2) == 0) {
      uStack_14 = 0x16;
      uStack_10 = (**(code **)(*(int *)((int)this + 4) + 0x20))();
      piStack_4 = *(int **)((int)this + 0x7c);
      iStack_8 = *(int *)((int)this + 0x80) - *(int *)((int)this + 0x7c) >> 1;
      (**(code **)(*(int *)((int)this + 4) + 0x118))(auStack_1c);
      return false;
    }
    break;
  case 0x1b:
    (**(code **)(*(int *)((int)this + 0x250) + 0x90))(0);
    return false;
  case 0x20:
  case 0x6a:
  case 0x6b:
  case 0x6d:
  case 0x6e:
  case 0x6f:
  case 0xba:
  case 0xbb:
  case 0xbc:
  case 0xbd:
  case 0xbe:
  case 0xbf:
  case 0xc0:
  case 0xdb:
  case 0xdc:
  case 0xde:
    break;
  case 0x21:
    if (!bVar3) {
      return true;
    }
    uVar8 = 5;
    goto LAB_00541005;
  case 0x22:
    if (!bVar3) {
      return true;
    }
    cVar6 = (**(code **)(*(int *)((int)this + 0x250) + 0xb0))(5,1,uStack_24);
    goto LAB_00541019;
  case 0x23:
    if (((byte)modifiers == 0) && ((uVar12 & 1) == 0)) {
      (**(code **)(*(int *)((int)this + 0x250) + 0xb0))(7,0,uStack_24);
      return true;
    }
    (**(code **)(*(int *)((int)this + 0x250) + 0xb0))(9,0,uStack_24);
    return true;
  case 0x24:
    if (((byte)modifiers == 0) && ((uVar12 & 1) == 0)) {
      (**(code **)(*(int *)((int)this + 0x250) + 0xb0))(6,0,uStack_24);
      return true;
    }
    (**(code **)(*(int *)((int)this + 0x250) + 0xb0))(8,0,uStack_24);
    return true;
  case 0x25:
    if (!bVar3) {
      return true;
    }
    cVar6 = '\0';
    if ((uVar12 & 1) == 0) {
      if ((byte)modifiers != 0) {
        cVar6 = '\x04';
      }
    }
    else {
      cVar6 = ((byte)modifiers != 0) * '\x02' + '\x01';
    }
    uVar8 = 0xffffffff;
    goto LAB_005410b3;
  case 0x26:
    if (*(int *)((int)this + 0x260) == 0) {
      return false;
    }
    if (!bVar3) {
      return false;
    }
    uVar8 = 2;
LAB_00541005:
    cVar6 = (**(code **)(*(int *)((int)this + 0x250) + 0xb0))(uVar8,0xffffffff,uStack_24);
LAB_00541019:
    if (cVar6 == '\0') {
LAB_00541021:
      UiTextEdit_EmitError(this,4);
      return true;
    }
    break;
  case 0x27:
    if (!bVar3) {
      return true;
    }
    cVar6 = '\0';
    if ((uVar12 & 1) == 0) {
      if ((byte)modifiers != 0) {
        cVar6 = '\x04';
      }
      uVar8 = 1;
    }
    else {
      uVar8 = 1;
      cVar6 = ((byte)modifiers != 0) * '\x02' + '\x01';
    }
LAB_005410b3:
    cVar6 = (**(code **)(*(int *)((int)this + 0x250) + 0xb0))(cVar6,uVar8,uStack_24);
    if (cVar6 == '\0') {
      UiTextEdit_EmitError(this,4);
      return true;
    }
    break;
  case 0x28:
    if (*(int *)((int)this + 0x260) == 0) {
      return false;
    }
    if (!bVar3) {
      return false;
    }
    cVar6 = (**(code **)(*(int *)((int)this + 0x250) + 0xb0))(2,1,uStack_24);
    if (cVar6 == '\0') {
      UiTextEdit_EmitError(this,4);
      return true;
    }
    break;
  case 0x2d:
    if ((uVar10 & 4) == 0) {
      return false;
    }
    iVar11 = *(int *)((int)this + 0x250);
    cVar6 = (**(code **)(iVar11 + 0x58))(8);
    (**(code **)(iVar11 + 0x54))(8,cVar6 == '\0');
    return true;
  case 0x2e:
    if (bVar4 == 0) {
      uVar10 = *(uint *)((int)this + 0x2c4);
      if (uVar10 == *(uint *)((int)this + 0x2c8)) {
        if ((uint)(*(int *)((int)this + 0x80) - *(int *)((int)this + 0x7c) >> 1) <= uVar10) {
          UiTextEdit_EmitError(this,4);
          return true;
        }
        modifiers = 0;
        uVar8 = FUN_00540520(this,uVar10,(int *)&modifiers);
        (**(code **)(*(int *)((int)this + 0x250) + 0x8c))(uVar8,modifiers,0,0,1);
        return true;
      }
      goto LAB_00540fc1;
    }
    break;
  case 0x43:
  case 0x58:
    if ((((uVar12 & 1) != 0) && ((uVar14 & 1) == 0)) &&
       (((byte)modifiers == bVar13 &&
        ((((uVar15 & 1) != 0 && ((uVar10 >> 7 & 1) == 0)) &&
         (cVar5 = (**(code **)(*(int *)((int)this + 4) + 0x104))(1), cVar5 == '\0')))))) {
      pvVar7 = (void *)FUN_004e9e90('\0');
      if (((pvVar7 != (void *)0x0) &&
          (uVar8 = FUN_0053fc10((void *)((int)this + 0x250),&keyCode,&opaqueSource),
          (char)uVar8 != '\0')) &&
         (piVar9 = FUN_004e9aa0((short *)(*(int *)((int)this + 0x7c) + keyCode * 2),
                                opaqueSource - keyCode), piVar9 != (int *)0x0)) {
        uVar8 = FUN_004e9d30(pvVar7,piVar9,'\x01',0);
        (**(code **)(*piVar9 + 8))();
        if ((char)uVar8 == '\0') {
          UiTextEdit_EmitError(this,6);
        }
      }
      if ((uVar16 == 0x58) && (cVar6 == '\0')) {
        (**(code **)(*(int *)((int)this + 0x250) + 0x88))(0,0,1);
        return true;
      }
    }
    break;
  case 0x56:
    if (((((uVar12 & 1) != 0) && ((uVar14 & 1) == 0)) && ((byte)modifiers == bVar13)) &&
       (((cVar5 = (**(code **)(*(int *)((int)this + 4) + 0x104))(1), cVar5 == '\0' &&
         (pvVar7 = (void *)FUN_004e9e90('\0'), (uVar15 & 1) != 0)) &&
        ((cVar6 == '\0' &&
         ((pvVar7 != (void *)0x0 && (uVar8 = FUN_004e9af0(pvVar7,3,&keyCode), (char)uVar8 != '\0')))
         ))))) {
      uVar10 = (**(code **)(*(int *)keyCode + 0x14))();
      uVar16 = (uVar10 >> 1) - 1;
      uVar10 = uVar16;
      if (*(int *)((int)this + 0x260) == 0) {
        iVar11 = (**(code **)(*(int *)keyCode + 0x10))();
        uVar14 = 0;
        if (uVar16 != 0) {
          while (((sVar1 = *(short *)(iVar11 + uVar14 * 2), uVar10 = uVar14, sVar1 != 10 &&
                  (sVar1 != 0xd)) && (sVar1 != 0x85))) {
            if (((sVar1 == 0x2028) || (sVar1 == 0x2029)) ||
               (uVar14 = uVar14 + 1, uVar10 = uVar16, uVar16 <= uVar14)) break;
          }
        }
      }
      iVar11 = *(int *)((int)this + 0x250);
      uVar8 = (**(code **)(*(int *)keyCode + 0x10))(uVar10,1);
      (**(code **)(iVar11 + 0x88))(uVar8);
      (**(code **)(*piStack_4 + 8))();
      return true;
    }
    break;
  case 0x59:
    if ((uVar12 & 1) == 0) {
      return true;
    }
    if ((byte)modifiers != 0) {
      return true;
    }
    cVar6 = (**(code **)(*(int *)((int)this + 0x250) + 0xdc))();
    if (cVar6 != '\0') {
      (**(code **)(*(int *)((int)this + 0x250) + 0xe4))();
      return true;
    }
    goto LAB_005414b1;
  case 0x5a:
    if ((uVar12 & 1) == 0) {
      return true;
    }
    if ((byte)modifiers != 0) {
      return true;
    }
    cVar6 = (**(code **)(*(int *)((int)this + 0x250) + 0xd8))();
    if (cVar6 != '\0') {
      (**(code **)(*(int *)((int)this + 0x250) + 0xe0))();
      return true;
    }
LAB_005414b1:
    UiTextEdit_EmitError(this,5);
  }
  return true;
}

