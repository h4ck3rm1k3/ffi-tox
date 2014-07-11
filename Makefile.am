# Automake file. Run ./autogen.sh to generate Makefile.in, etc.

# Use the m4/ directory for macros
ACLOCAL_AMFLAGS = -I m4

# The library we'll create
lib_LTLIBRARIES = libtoximpython.la
# it's source files
libtoximpython_la_SOURCES = libtox_wrap.c 

## This is the Python module interfacing to libtoximpython

# Put these in the build tree
BUILT_SOURCES = $(builddir)/tox.py $(builddir)/libtox_wrap.c
# tell Make how to create the generated SWIG files
$(builddir)/tox.py $(builddir)/libtox_wrap.c: libtox.i
$(SWIG) $(AX_SWIG_PYTHON_OPT) -o $@ $<

# Ask autotools to install the generated Python file
python_PYTHON = $(builddir)/tox.py

# This is the Python module
pyexec_LTLIBRARIES = lib_toximpython.la
# It is composed of the generated C file
lib_toximpython_la_SOURCES = $(builddir)/libtox_wrap.c libtox.i

# -module tells libtool we don't need a 'lib' prefix
lib_toximpython_la_LDFLAGS = -module ${PYTHON_LDFLAGS}

# One point of this example is to have the Python module
# link to another library
lib_toximpython_la_LIBADD = libtoximpython.la

# -I$(srcdir)/src is for src/example.h
lib_toximpython_la_CPPFLAGS = -I$(srcdir)/src ${PYTHON_CPPFLAGS}
