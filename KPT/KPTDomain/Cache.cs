using System.Collections.Generic;

namespace Domain
{
    public class Cache
    {
        private readonly List<Record> _records;

        public Cache()
        {
            _records = new List<Record>();
        }


        public bool Contains(Record record)
        {
            return _records.Contains(record);
        }

        public void Add(Record record)
        {
            _records.Add(record);
        }
    }
}