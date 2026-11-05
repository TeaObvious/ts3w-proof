// Original PC 1.67 package assembly; actual ILSpy output, not a reconstructed implementation.
// Analyst note: index identities and complete CIL are in selected/household-property-streams.
// Managed Unicode/version semantics differ from the native byte-string PropertyStream.
using System;
using System.Collections.Generic;
using System.IO;

namespace Sims3.SimIFace;

public class PropertyStreamReader : IPropertyStreamReader
{
	private const ushort kMinVersion = 1;

	private const ushort kVersion = 2;

	private Dictionary<uint, uint> mEntryMap = new Dictionary<uint, uint>();

	protected BinaryReader mStream;

	private long mStartPosition;

	private long mEndPosition;

	private ushort mVersion;

	public int Count => mEntryMap.Count;

	public PropertyStreamReader()
	{
		mStartPosition = -1L;
		mEndPosition = -1L;
	}

	public bool Open(BinaryReader stream)
	{
		mStartPosition = stream.BaseStream.Position;
		mVersion = stream.ReadUInt16();
		if (mVersion < 1 || mVersion > 2)
		{
			return false;
		}
		uint num = stream.ReadUInt32();
		long position = stream.BaseStream.Position;
		stream.BaseStream.Position = mStartPosition + num;
		ushort num2 = stream.ReadUInt16();
		for (ushort num3 = 0; num3 < num2; num3++)
		{
			uint key = stream.ReadUInt32();
			uint value = stream.ReadUInt32();
			mEntryMap.Add(key, value);
		}
		mEndPosition = stream.BaseStream.Position;
		stream.BaseStream.Position = position;
		mStream = stream;
		return true;
	}

	public bool Close()
	{
		if (mStream == null)
		{
			return false;
		}
		mEntryMap.Clear();
		mStream.BaseStream.Position = mEndPosition;
		mStream = null;
		mStartPosition = -1L;
		mEndPosition = -1L;
		return true;
	}

	private bool SeekToEntry(uint key)
	{
		if (mEntryMap.TryGetValue(key, out var value))
		{
			mStream.BaseStream.Position = mStartPosition + value;
			return true;
		}
		return false;
	}

	private bool ReadArray<T>(int elementSize, out T[] array)
	{
		uint num = mStream.ReadUInt32();
		int count = (int)num * elementSize;
		byte[] src = mStream.ReadBytes(count);
		array = new T[num];
		Buffer.BlockCopy(src, 0, array, 0, count);
		return true;
	}

	public IPropertyStreamReader GetChild(uint key)
	{
		if (SeekToEntry(key ^ 0xFFF75A95u))
		{
			PropertyStreamReader propertyStreamReader = new PropertyStreamReader();
			if (propertyStreamReader != null && propertyStreamReader.Open(mStream))
			{
				return propertyStreamReader;
			}
		}
		return null;
	}

	public IPropertyStreamReader AdoptChild(uint key, IPropertyStreamReader customReader)
	{
		if (SeekToEntry(key ^ 0xFFF75A95u) && customReader is PropertyStreamReader propertyStreamReader && propertyStreamReader.Open(mStream))
		{
			return propertyStreamReader;
		}
		return null;
	}

	public bool ReadBool(uint key, out bool value, bool defaultValue)
	{
		if (SeekToEntry(key ^ 0x68FE5F59))
		{
			value = mStream.ReadBoolean();
			return true;
		}
		value = defaultValue;
		return false;
	}

	public bool ReadInt16(uint key, out short value, short defaultValue)
	{
		if (SeekToEntry(key ^ 0x21560C5))
		{
			value = mStream.ReadInt16();
			return true;
		}
		value = defaultValue;
		return false;
	}

	public bool ReadInt32(uint key, out int value, int defaultValue)
	{
		if (SeekToEntry(key ^ 0x415642B))
		{
			value = mStream.ReadInt32();
			return true;
		}
		value = defaultValue;
		return false;
	}

	public bool ReadInt64(uint key, out long value, long defaultValue)
	{
		if (SeekToEntry(key ^ 0x71568E6))
		{
			value = mStream.ReadInt64();
			return true;
		}
		value = defaultValue;
		return false;
	}

	public bool ReadUint16(uint key, out ushort value, ushort defaultValue)
	{
		if (SeekToEntry(key ^ 0xF328896Cu))
		{
			value = mStream.ReadUInt16();
			return true;
		}
		value = defaultValue;
		return false;
	}

	public bool ReadUint32(uint key, out uint value, uint defaultValue)
	{
		if (SeekToEntry(key ^ 0xF1288606u))
		{
			value = mStream.ReadUInt32();
			return true;
		}
		value = defaultValue;
		return false;
	}

	public bool ReadUint64(uint key, out ulong value, ulong defaultValue)
	{
		if (SeekToEntry(key ^ 0xEE28814Fu))
		{
			value = mStream.ReadUInt64();
			return true;
		}
		value = defaultValue;
		return false;
	}

	public bool ReadFloat(uint key, out float value, float defaultValue)
	{
		if (SeekToEntry(key ^ 0x4EDCD7A9))
		{
			value = mStream.ReadSingle();
			return true;
		}
		value = defaultValue;
		return false;
	}

	public bool ReadByte(uint key, out byte value, byte defaultValue)
	{
		if (SeekToEntry(key ^ 0x6236014F))
		{
			value = mStream.ReadByte();
			return true;
		}
		value = defaultValue;
		return false;
	}

	public bool ReadBool(uint key, out bool[] values)
	{
		if (SeekToEntry(key ^ 0x68FE5F59 ^ 0x555CCDF4) && ReadArray<byte>(1, out var array))
		{
			values = new bool[array.Length];
			for (int i = 0; i < array.Length; i++)
			{
				values[i] = array[i] != 0;
			}
			return true;
		}
		values = new bool[0];
		return false;
	}

	public bool ReadInt16(uint key, out short[] values)
	{
		if (SeekToEntry(key ^ 0x21560C5 ^ 0x555CCDF4))
		{
			return ReadArray<short>(2, out values);
		}
		values = new short[0];
		return false;
	}

	public bool ReadInt32(uint key, out int[] values)
	{
		if (SeekToEntry(key ^ 0x415642B ^ 0x555CCDF4))
		{
			return ReadArray<int>(4, out values);
		}
		values = new int[0];
		return false;
	}

	public bool ReadInt64(uint key, out long[] values)
	{
		if (SeekToEntry(key ^ 0x71568E6 ^ 0x555CCDF4))
		{
			return ReadArray<long>(8, out values);
		}
		values = new long[0];
		return false;
	}

	public bool ReadUint16(uint key, out ushort[] values)
	{
		if (SeekToEntry(key ^ 0xF328896Cu ^ 0x555CCDF4))
		{
			return ReadArray<ushort>(2, out values);
		}
		values = new ushort[0];
		return false;
	}

	public bool ReadUint32(uint key, out uint[] values)
	{
		if (SeekToEntry(key ^ 0xF1288606u ^ 0x555CCDF4))
		{
			return ReadArray<uint>(4, out values);
		}
		values = new uint[0];
		return false;
	}

	public bool ReadUint64(uint key, out ulong[] values)
	{
		if (SeekToEntry(key ^ 0xEE28814Fu ^ 0x555CCDF4))
		{
			return ReadArray<ulong>(8, out values);
		}
		values = new ulong[0];
		return false;
	}

	public bool ReadFloat(uint key, out float[] values)
	{
		if (SeekToEntry(key ^ 0x4EDCD7A9 ^ 0x555CCDF4))
		{
			return ReadArray<float>(4, out values);
		}
		values = new float[0];
		return false;
	}

	public bool ReadByte(uint key, out byte[] values)
	{
		if (SeekToEntry(key ^ 0x6236014F ^ 0x555CCDF4))
		{
			return ReadArray<byte>(1, out values);
		}
		values = new byte[0];
		return false;
	}

	protected bool ReadString(out string value)
	{
		value = "";
		if (ReadArray<ushort>(2, out var array))
		{
			ushort[] array2 = array;
			foreach (ushort num in array2)
			{
				value += (char)num;
			}
			return true;
		}
		return false;
	}

	public bool ReadString(uint key, out string value, string defaultValue)
	{
		if (SeekToEntry(key ^ 0x15196597))
		{
			if (mVersion <= 1)
			{
				value = mStream.ReadString();
				return true;
			}
			if (ReadString(out value))
			{
				return true;
			}
		}
		value = defaultValue;
		return false;
	}

	public bool ReadString(uint key, out string[] values)
	{
		values = null;
		if (SeekToEntry(key ^ 0x15196597 ^ 0x555CCDF4))
		{
			uint num = mStream.ReadUInt32();
			List<string> list = new List<string>();
			for (uint num2 = 0u; num2 < num; num2++)
			{
				if (!ReadString(out var value))
				{
					return false;
				}
				list.Add(value);
			}
			values = list.ToArray();
			return true;
		}
		return false;
	}
}
