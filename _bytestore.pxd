

cdef class ByteStore:
    cdef:
        public object _rawarray
        public int bitlength, offset
        public bint immutable

    cpdef bint getbit(self, int pos)
    cpdef int getbyte(self, int pos)
    cpdef _appendstore(self, ByteStore store)
    cpdef _prependstore(self, ByteStore store)
    cpdef setbit(self, int pos)
    cpdef unsetbit(self, int pos)
    cpdef invertbit(self, int pos)
    cpdef setbyte(self, int pos, int value)

cpdef ByteStore offsetcopy(ByteStore s, int newoffset)
cpdef bint equal(ByteStore a, ByteStore b)




