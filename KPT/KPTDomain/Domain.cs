using System;
using Domain;

namespace Domain
{
    public struct Domain
    {
        public readonly Cache Cache;

        public Domain(Cache cache)
        {
            Cache = cache;
        }

        public void AddRecord(Record @record)
        {
            Cache.Add(record);
        }
    }
}
