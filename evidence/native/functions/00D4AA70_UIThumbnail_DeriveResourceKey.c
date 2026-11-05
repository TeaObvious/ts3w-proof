/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned PC 1.67 thumbnail-key derivation, checked with the complete 255-instruction body
   and complete D4BBA0/D4C440 callers. Key words are instance-low/high/type/group; output begins
   with copied instance and zero group. Selected resource types derive size-offset image families;
   the outfit 025ed6f4 branch selects 0580a2cc+size. Only when both template object-ID words are
   zero does unsigned(index-0x100)<=0x200 select pose 0x100; otherwise unsigned index<0x100 selects
   that index and larger values leave pose zero. Camera and the low byte of technique pack
   independently as ((camera<<4)|techniqueByte)<<16. Pelt dea2951c uses 0580a2cc+size and
   (camera<<20)|index. Blend families select 626f60cc+size; selected indexed variants use positive
   signed index as computed group. Household/lot/catalog/CWAL select
   6b6d837c/d84e7fc4/0580a2b4/0589dc44+size. Computed group zero inherits the whole source group;
   nonzero merges source f8000000 bits. The complete type/subtype switch also retains its existing
   defaults and the selected material-hash child; neither its lower hash algorithm nor rendering is
   established here. This helper has no equivalent size0..3 admission check. It writes a key and has
   no return value contract; the caller's inferred assignment of an apparent result is a decompiler
   artifact. */

void __cdecl
UIThumbnail_DeriveResourceKey
          (undefined4 *param_1,int param_2,int param_3,uint param_4,undefined4 *param_5,byte param_6
          ,uint param_7,undefined4 param_8,int param_9,int param_10)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  
  *param_5 = *param_1;
  param_5[1] = param_1[1];
  param_5[3] = 0;
  uVar2 = param_1[2];
  iVar3 = 0x2f7d0004;
  if (uVar2 < 0xb3a415f) {
    if (uVar2 == 0xb3a415e) {
      param_5[2] = param_2 + 0x6b6d837c;
      goto LAB_00d4ae40;
    }
    if (uVar2 < 0x418fe2b) {
      if (uVar2 == 0x418fe2a) {
        param_5[2] = param_2 + 0x2653e3c8;
        goto LAB_00d4ae40;
      }
      if (0x25ed6f4 < uVar2) {
        if (uVar2 == 0x34aeecb) goto LAB_00d4adbc;
        if ((uVar2 != 0x3555ba8) && (uVar2 != 0x358b08a)) {
          param_5[2] = 0x2f7d0004;
          goto LAB_00d4ae40;
        }
LAB_00d4adc7:
        param_5[2] = param_2 + 0x626f60cc;
        goto LAB_00d4ae40;
      }
      if (uVar2 == 0x25ed6f4) {
        param_5[2] = param_2 + 0x580a2cc;
        if ((param_9 == 0 && param_10 == 0) && (param_4 - 0x100 < 0x201)) {
          param_5[3] = 0x100;
        }
        else if (param_4 < 0x100) {
          param_5[3] = param_4;
        }
        param_5[3] = param_5[3] | (param_3 << 4 | (uint)param_6) << 0x10;
        goto LAB_00d4ae40;
      }
      if (uVar2 != 0) {
        if (uVar2 != 0xb2d882) {
          if (uVar2 == 0x1661233) {
            if (param_1[3] == 0x2c3bdf7) {
              param_5[2] = param_2 + 0x7aed2fc0;
            }
            else {
              uVar2 = FUN_004fa750((byte *)&param_8,4,param_7);
              param_5[1] = uVar2;
              param_5[2] = param_2 + -0x52c9906c;
            }
            goto LAB_00d4ae40;
          }
          goto LAB_00d4ae2f;
        }
        iVar1 = param_1[3];
        if (iVar1 == 0x2722299) {
          iVar3 = param_2 + 0x4638d6d0;
        }
        else {
          if (iVar1 == 0x24b9fca) {
            param_5[2] = param_2 + -0x7a55bae0;
            goto LAB_00d4ae40;
          }
          if (iVar1 == 0x276a838) {
            param_5[2] = param_2 + 0x56fe4680;
            goto LAB_00d4ae40;
          }
          if (iVar1 != 0xe9928a8) {
            if (iVar1 == 0x2bd69a0) {
              param_5[2] = param_2 + 0x56fe4680;
              goto LAB_00d4ae40;
            }
            if (iVar1 == 0x233c64c) {
              param_5[2] = param_2 + 0x7461adb0;
              goto LAB_00d4ae40;
            }
            goto LAB_00d4acf0;
          }
          iVar3 = param_2 + 0xe9921f0;
        }
        goto LAB_00d4ae3d;
      }
    }
    else if (uVar2 < 0x4ed4bb3) {
      if (uVar2 == 0x4ed4bb2) {
        param_5[2] = param_2 + 0x5b1b524;
        goto LAB_00d4ae40;
      }
      if (uVar2 == 0x49ca4cd) {
        param_5[2] = param_2 + 0x5de9dba0;
        goto LAB_00d4ae40;
      }
      if (uVar2 != 0x4b30669) {
        if (uVar2 != 0x4c58103) goto LAB_00d4ae2f;
        iVar3 = param_2 + 0x2d4284f0;
        goto LAB_00d4ae3d;
      }
    }
    else {
      if (uVar2 != 0x4f3cc01) {
        if (uVar2 == 0x4f88964) {
          if (param_2 == 3) {
            param_2 = 2;
          }
          param_5[2] = param_2 + 0x54372470;
          param_5[3] = param_3 << 0x14;
          goto LAB_00d4ae40;
        }
        if (uVar2 != 0x51df2dd) {
          param_5[2] = 0x2f7d0004;
          goto LAB_00d4ae40;
        }
LAB_00d4adbc:
        if (0 < (int)param_4) {
          param_5[3] = param_4;
        }
        goto LAB_00d4adc7;
      }
      iVar3 = param_2 + 0x5b17698;
    }
LAB_00d4acf0:
    param_5[2] = iVar3;
    goto LAB_00d4ae40;
  }
  if (uVar2 < 0x515ca4ce) {
    if (uVar2 == 0x515ca4cd) {
      iVar3 = param_2 + 0x589dc44;
LAB_00d4ae3d:
      param_5[2] = iVar3;
      goto LAB_00d4ae40;
    }
    if (uVar2 < 0x316c78f3) {
      if (uVar2 == 0x316c78f2) goto LAB_00d4acf0;
      if (uVar2 == 0x2e75c764) {
        iVar3 = param_2 + 0x2e75c764;
        goto LAB_00d4ae3d;
      }
      if (uVar2 == 0x2f7d0004) {
        param_5[2] = 0x2f7d0004;
        goto LAB_00d4ae40;
      }
    }
    else {
      if (uVar2 == 0x319e4f1d) {
        param_5[2] = param_2 + 0x580a2b4;
        goto LAB_00d4ae40;
      }
      if (uVar2 == 0x436fee4c) {
        param_5[2] = param_2 + -0x27b1803c;
        goto LAB_00d4ae40;
      }
    }
  }
  else if (uVar2 < 0x9a6bff0d) {
    if (uVar2 == 0x9a6bff0c) {
      param_5[2] = param_2 + -0x659400f4;
      goto LAB_00d4ae40;
    }
    if (uVar2 < 0x91edbd3f) {
      if (uVar2 != 0x91edbd3e) {
        if (uVar2 == 0x72683c15) goto LAB_00d4adc7;
        if (uVar2 != 0x9151e6bc) {
          param_5[2] = 0x2f7d0004;
          goto LAB_00d4ae40;
        }
      }
      goto LAB_00d4acf0;
    }
    if (uVar2 == 0x93d84841) goto LAB_00d4adbc;
  }
  else if (uVar2 < 0xf1edbd87) {
    if (uVar2 == 0xf1edbd86) goto LAB_00d4acf0;
    if (uVar2 == 0xc4a140c0) {
      param_5[2] = param_2 + -0x8f7d9d4;
      goto LAB_00d4ae40;
    }
    if (uVar2 == 0xdea2951c) {
      iVar3 = param_2 + 0x580a2cc;
      param_5[3] = param_3 << 0x14 | param_4;
      goto LAB_00d4ae3d;
    }
  }
  else if (uVar2 == 0xf6a0b710) {
    iVar3 = param_2 + -0x95f48f0;
    goto LAB_00d4ae3d;
  }
LAB_00d4ae2f:
  param_5[2] = 0x2f7d0004;
LAB_00d4ae40:
  if (param_5[3] == 0) {
    param_5[3] = param_1[3];
    return;
  }
  param_5[3] = param_1[3] & 0xf8000000 | param_5[3];
  return;
}

