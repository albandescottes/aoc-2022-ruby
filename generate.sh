if (($1 >= 1 && $1 <= 25)); then
    DIRI=inputs/day$1
    if [[ ! -d "$DIRI" ]];
    then
        mkdir inputs/day$1
        touch inputs/day$1/input.txt
    fi
    DIRS=src/day$1
    if [[ ! -d "$DIR" ]];
    then
        mkdir src/day$1
        cp src/template/index.rb src/day$1/index.rb
        sed -i "s/0/$1/" src/day$1/index.rb
    fi
fi