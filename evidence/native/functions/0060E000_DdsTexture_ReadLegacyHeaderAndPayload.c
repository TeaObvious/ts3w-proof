/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. cdecl four stack slots; AL Boolean. stream virtual+30
   must return exactly128 header bytes. Magic20534444; reversed44445320 swaps all32 DWORDs.
   BYTE[EBP-5] is explicitly ZERO both before and after that branch: this reader does NOT request
   payload byte swapping. Require header size124, flags containing1007 and pixel-header size32.
   Width+10,height+C; depth+18 iff flag800000 else1; mip count+1C iff20000 else1; caps2 bit200
   chooses six faces without checking all face bits. Format dispatch prioritizes FOURCC, luminance,
   RGB, then signed-bump flags; unknown mapping fails. RGB24 accepted mask FF0000/FF00/FF becomes
   format96. Ordinary single-face/depth1 path may skip mips; zero-tail probe overrides options.
   Exact fourth argument1 chooses creation flags0, other values2. Payload helper result is final
   success. Header pitch is not consumed here; downstream tight-row calculation retained separately.
   This leaf does not establish DX10, all cube completeness, material alpha thresholds or general
   malformed-input safety. */

bool __cdecl
DdsTexture_ReadLegacyHeaderAndPayload(void *texture,void *stream,void *options,uchar creationMode)

{
  bool bVar1;
  uint uVar2;
  uint local_104;
  uint local_100;
  int local_ec [3];
  int local_e0;
  uint local_dc;
  int local_d8;
  int local_d4;
  int local_d0;
  int local_cc;
  int local_c8;
  int local_c4;
  int local_c0;
  uint local_bc;
  int local_b8;
  int local_b4;
  uint local_b0;
  uint local_ac;
  int local_a8;
  uint local_a4;
  uint local_a0;
  uint local_9c;
  uint local_94;
  uint local_90;
  int local_60;
  uint local_5c;
  uint local_58;
  int local_54;
  int local_50;
  int local_4c;
  int local_48;
  uint local_44;
  uint local_3c;
  uint local_28;
  undefined *local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  uint local_14;
  uint local_10;
  bool local_9;
  uint local_8;
  
  uVar2 = (**(code **)(*(int *)stream + 0x30))(stream,&local_ac,0x80);
  if (uVar2 != 0x80) {
    return false;
  }
  local_9 = false;
  if (local_ac == 0x44445320) {
    TextureBytes_SwapDwords(&local_ac,&local_ac,0x80);
  }
  local_9 = false;
  if ((((local_ac == 0x20534444) && (local_a8 == 0x7c)) && ((~local_a4 & 0x1007) == 0)) &&
     (local_60 == 0x20)) {
    local_20 = local_9c;
    local_1c = local_a0;
    if ((local_a4 & 0x800000) == 0) {
      local_100 = 1;
    }
    else {
      local_100 = local_94;
    }
    local_28 = local_100;
    local_10 = (-(uint)((local_3c & 0x200) != 0) & 5) + 1;
    if ((local_a4 & 0x20000) == 0) {
      local_104 = 1;
    }
    else {
      local_104 = local_90;
    }
    local_18 = local_104;
    local_14 = 0;
    if ((local_5c & 4) == 0) {
      if ((local_5c & 0x20000) == 0) {
        if ((local_5c & 0x40) == 0) {
          if ((local_5c & 0x80000) != 0) {
            local_e0 = local_54;
            local_d8 = local_50;
            local_d4 = local_4c;
            local_d0 = local_48;
            local_dc = local_44;
            if (local_54 == 0x10) {
              if ((((local_44 == 0) && (local_48 == 0)) && (local_4c == 0xff00)) &&
                 (local_50 == 0xff)) {
                local_14 = 0x28;
              }
            }
            else if (((local_54 == 0x20) && (local_44 == 0xff000000)) &&
                    ((local_48 == 0xff0000 && ((local_4c == 0xff00 && (local_50 == 0xff)))))) {
              local_14 = 0x22;
            }
          }
        }
        else {
          local_cc = local_54;
          local_c8 = local_50;
          local_c4 = local_4c;
          local_c0 = local_48;
          local_bc = -(uint)((local_5c & 1) != 0) & local_44;
          if (local_54 == 8) {
            if ((((local_bc == 0xff) && (local_50 == 0)) && (local_4c == 0)) && (local_48 == 0)) {
              local_14 = 0xe;
            }
          }
          else if (local_54 == 0x10) {
            if (((local_bc == 0) && (local_50 == 0x7c00)) &&
               ((local_4c == 0x3e0 && (local_48 == 0x1f)))) {
              local_14 = 0x18;
            }
            else if (((local_bc == 0x8000) && (local_50 == 0x7c00)) &&
                    ((local_4c == 0x3e0 && (local_48 == 0x1f)))) {
              local_14 = 0x1a;
            }
            else if ((((local_bc == 0) && (local_50 == 0xf800)) && (local_4c == 0x7e0)) &&
                    (local_48 == 0x1f)) {
              local_14 = 0x12;
            }
            else if (((local_bc == 0xf000) && (local_50 == 0xf00)) &&
                    ((local_4c == 0xf0 && (local_48 == 0xf)))) {
              local_14 = 0x1c;
            }
            else if (((local_bc == 0) && (local_50 == 0xf00)) &&
                    ((local_4c == 0xf0 && (local_48 == 0xf)))) {
              local_14 = 0x1e;
            }
          }
          else if (local_54 == 0x18) {
            if ((((local_bc == 0) && (local_50 == 0xff0000)) && (local_4c == 0xff00)) &&
               (local_48 == 0xff)) {
              local_14 = 0x96;
            }
          }
          else if (local_54 == 0x20) {
            if (((local_bc == 0) && (local_50 == 0xff0000)) &&
               ((local_4c == 0xff00 && (local_48 == 0xff)))) {
              local_14 = 0x40;
            }
            else if ((((local_bc == 0xff000000) && (local_50 == 0xff0000)) && (local_4c == 0xff00))
                    && (local_48 == 0xff)) {
              local_14 = 0x3e;
            }
            else if ((((local_bc == 0xff000000) && (local_50 == 0xff)) && (local_4c == 0xff00)) &&
                    (local_48 == 0xff0000)) {
              local_14 = 0x42;
            }
            else if (((local_bc == 0xc0000000) && (local_50 == 0x3ff00000)) &&
                    ((local_4c == 0xffc00 && (local_48 == 0x3ff)))) {
              local_14 = 0x4a;
            }
            else if (((local_bc == 0xc0000000) && (local_50 == 0x3ff)) &&
                    ((local_4c == 0xffc00 && (local_48 == -0x400000)))) {
              local_14 = 0x48;
            }
          }
        }
      }
      else {
        local_b8 = local_54;
        local_b4 = local_50;
        local_b0 = -(uint)((local_5c & 1) != 0) & local_44;
        if (local_54 == 8) {
          if (local_50 == 0xff) {
            local_14 = 0x10;
          }
          else if (local_b0 == 0xff) {
            local_14 = 0xe;
          }
        }
        else if (((local_54 == 0x10) && (local_b0 == 0xff00)) && (local_50 == 0xff)) {
          local_14 = 0x24;
        }
      }
    }
    else if (local_58 < 0x31545845) {
      if (local_58 == 0x31545844) {
        local_14 = 2;
      }
      else {
        switch(local_58) {
        case 0x14:
          local_14 = 0x96;
          break;
        case 0x15:
          local_14 = 0x3e;
          break;
        case 0x16:
          local_14 = 0x40;
          break;
        case 0x17:
          local_14 = 0x12;
          break;
        case 0x18:
          local_14 = 0x18;
          break;
        case 0x19:
          local_14 = 0x1a;
          break;
        case 0x1a:
          local_14 = 0x1c;
          break;
        default:
          return false;
        case 0x1c:
          local_14 = 0xe;
          break;
        case 0x1e:
          local_14 = 0x1e;
          break;
        case 0x1f:
          local_14 = 0x48;
          break;
        case 0x23:
          local_14 = 0x4a;
          break;
        case 0x32:
          local_14 = 0x10;
          break;
        case 0x33:
          local_14 = 0x24;
          break;
        case 0x6f:
          local_14 = 0x2e;
          break;
        case 0x70:
          local_14 = 0x5e;
          break;
        case 0x71:
          local_14 = 0x6a;
          break;
        case 0x72:
          local_14 = 100;
          break;
        case 0x73:
          local_14 = 0x74;
          break;
        case 0x74:
          local_14 = 0x7a;
        }
      }
    }
    else if (local_58 < 0x34545845) {
      if (local_58 == 0x34545844) {
        local_14 = 8;
      }
      else if (local_58 == 0x32545844) {
        local_14 = 4;
      }
      else {
        if (local_58 != 0x33545844) {
          return false;
        }
        local_14 = 6;
      }
    }
    else {
      if (local_58 != 0x35545844) {
        return false;
      }
      local_14 = 10;
    }
    if (local_14 == 0) {
      bVar1 = false;
    }
    else {
      local_24 = TextureFormat_FindDescriptor(local_14);
      if ((local_10 == 1) && (local_28 == 1)) {
        uVar2 = DdsTexture_HasZeroTailMip(stream,local_20,local_1c,local_18,local_14);
        if ((uVar2 & 0xff) == 0) {
          if (0 < *(int *)options) {
            DdsTexture_SelectLeadingMips(local_24,&local_20,&local_1c,&local_18,stream,options);
          }
        }
        else {
          FUN_0060d490(local_ec);
          local_ec[0] = local_18 - 1;
          local_ec[1] = 4;
          DdsTexture_SelectLeadingMips(local_24,&local_20,&local_1c,&local_18,stream,local_ec);
        }
      }
      if (creationMode == '\x01') {
        local_8 = 0;
      }
      else {
        local_8 = 2;
      }
      bVar1 = Texture_CreateByShape
                        (texture,local_10,local_28,local_20,local_1c,local_18,local_14,local_8);
      if (bVar1) {
        bVar1 = DdsTexture_CopyPayload(texture,stream,options,local_9);
      }
      else {
        bVar1 = false;
      }
    }
    return bVar1;
  }
  return false;
}

