#nullable enable

using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;

namespace Domain
{
    public class Domain
    {
        private List<Record> _cache = new();

        public void AddRecord(Record record)
        {
            _cache.Add(record);
        }

        public void MarkKanjiComplete()
        {
            _cache.RemoveAt(0);
        }

        public char? NextKanji()
        {
            return _cache.FirstOrDefault()?.Kanji.FirstOrDefault();
        }
    }

    public class Record
    {
        public Record(string kanji)
        {
            Kanji = kanji;
        }

        public string Kanji { get; }
    }
}
