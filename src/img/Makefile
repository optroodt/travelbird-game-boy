ifndef PNG2GB
	PNG2GB = path/to/png2gb
endif

IMG_DIR = src/img

all-img: background.c sprites.c

background.c: 
	$(PNG2GB) $(IMG_DIR)/bg.png $(IMG_DIR)/ground.png $(IMG_DIR)/travelbird.png --map -o $(IMG_DIR)/$@

sprites.c:
	$(PNG2GB) $(IMG_DIR)/bird.png $(IMG_DIR)/pipe.png $(IMG_DIR)/numbers.png  $(IMG_DIR)/bullet.png -p 1023 -o $(IMG_DIR)/$@

clean-img: 
	rm *.c
