CXX?=clang++
CXXFLAGS?=-Weverything -Wno-padded -Wno-c++98-compat-pedantic -O1 -g -fsanitize=address -fsanitize-address-use-after-scope -fno-omit-frame-pointer -fsanitize=undefined -fsanitize=nullability -fsanitize=implicit-conversion -fsanitize=integer -fsanitize=float-divide-by-zero -fsanitize=local-bounds

unidiff: unidiff.cpp common.cpp
	$(CXX) $(CXXFLAGS) -I ../ $^ $(LDFLAGS) -o $@

clean:
	rm -f unidiff
