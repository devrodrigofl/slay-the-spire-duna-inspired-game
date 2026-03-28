CC = gcc

OS := $(shell uname)

ifeq ($(OS), Darwin)
	# macOS
	CFLAGS = $(shell pkg-config --cflags allegro-5 allegro_main-5 allegro_font-5 allegro_image-5 allegro_primitives-5 allegro_audio-5 allegro_acodec-5)
	LDFLAGS = $(shell pkg-config --libs allegro-5 allegro_main-5 allegro_font-5 allegro_image-5 allegro_primitives-5 allegro_audio-5 allegro_acodec-5) -lm
else
	# Linux
	CFLAGS =
	LDFLAGS = -lm
endif

SRCS = main.c utils.c renderer.c entities.c cards.c combat.c

all: clean game run

clean:
	rm -f game

ifeq ($(OS), Darwin)
game:
	$(CC) $(SRCS) -o game -g $(CFLAGS) $(LDFLAGS)
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