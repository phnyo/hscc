SRCS := hscc.hs
TARGET := hscc

$(TARGET):
	ghc $(SRCS) -o $(TARGET)

test: $(TARGET)
	sh test.sh
	rm -rf ./tmp *.s

clean:
	rm -rf *.o *.hi tmp* ./hscc
	
.PHONY: test clean
