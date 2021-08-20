west build --pristine -s zmk/app -b nrfmicro_13 -d build/left -- -DSHIELD=sweep-encoder_left -DZMK_CONFIG="/home/efyang/projects/zmk-config/config"
cat build/left/zephyr/.config | grep -v "^#" | grep -v "^$"
mv build/left/zephyr/zmk.uf2 build/sweep-encoder_left.uf2

west build --pristine -s zmk/app -b nrfmicro_13 -d build/right -- -DSHIELD=sweep-encoder_right -DZMK_CONFIG="/home/efyang/projects/zmk-config/config"
cat build/right/zephyr/.config | grep -v "^#" | grep -v "^$"
mv build/right/zephyr/zmk.uf2 build/sweep-encoder_right.uf2
