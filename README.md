# BorderOS Build

1. Install the fork of gokrazy-tools with MIPS support

       git clone https://github.com/jamesog/gokrazy-tools
       go install ./cmd/gok

2. Configure `config.cue`
3. Build the image using `make`
   By default it targets a 4GiB flash drive. If you want to change the size of the resulting image pass the `FLASH_SIZE` variable with a value that is a multiple of 512:

       make FLASH_SIZE=2147483648
