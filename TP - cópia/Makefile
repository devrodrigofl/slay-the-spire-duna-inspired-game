# all: clean game run

# clean:
# 	rm *.out

# game:
# 	gcc main.c -o game.out \
# 		utils.c \
# 		renderer.c \
# 		entities.c\
# 		cards.c\
# 		combat.c\
# 		-lm -g\
# 		`pkg-config allegro-5 allegro_main-5 \
# 		allegro_font-5 \
# 		allegro_image-5 allegro_primitives-5 \
# 		allegro_audio-5 allegro_acodec-5 \
# 		 --libs --cflags`

# run: 
# 	./game.out

CC = gcc
CFLAGS = $(shell pkg-config --cflags allegro-5 allegro_main-5 allegro_font-5 allegro_image-5 allegro_primitives-5 allegro_audio-5 allegro_acodec-5)
LDFLAGS = $(shell pkg-config --libs allegro-5 allegro_main-5 allegro_font-5 allegro_image-5 allegro_primitives-5 allegro_audio-5 allegro_acodec-5) -lm

all: clean game run

clean:
	rm -f game

game:
	$(CC) main.c utils.c renderer.c entities.c cards.c combat.c \
		-o game -g $(CFLAGS) $(LDFLAGS)

run: 
	./game