
all: _festival.so

_festival.so: _festival.cpp
	CFLAGS="-g" python setup.py build
	ln -sf build/*/_festival*.so _festival.so

test: all
	python test.py

clean:
	python setup.py clean
	rm -rf build _festival.so *.pyc
