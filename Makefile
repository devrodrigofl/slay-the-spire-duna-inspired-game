CC = gcc

OS := $(shell uname)

INCLUDES = -I./include

ifeq ($(OS), Darwin)
	# macOS
	CFLAGS = $(INCLUDES) $(shell pkg-config --cflags allegro-5 allegro_main-5 allegro_font-5 allegro_image-5 allegro_primitives-5 allegro_audio-5 allegro_acodec-5)
	LDFLAGS = $(shell pkg-config --libs allegro-5 allegro_main-5 allegro_font-5 allegro_image-5 allegro_primitives-5 allegro_audio-5 allegro_acodec-5) -lm
else
	# Linux
	CFLAGS =
	LDFLAGS = -lm
endif

SRCS = src/main.c src/utils.c src/renderer.c src/entities.c src/cards.c src/combat.c

all: clean game run

clean:
	rm -rf game game.out game.dSYM

ifeq ($(OS), Darwin)
game:
	$(CC) $(SRCS) -o game $(CFLAGS) $(LDFLAGS)
else
game:
	$(CC) $(SRCS) -o game.out \
		-lm -g \
		`pkg-config allegro-5 allegro_main-5 \
		allegro_font-5 \
		allegro_image-5 allegro_primitives-5 \
		allegro_audio-5 allegro_acodec-5 \
		--libs --cflags`
endif

run:
ifeq ($(OS), Darwin)
	./game
else
	./game.out
endif