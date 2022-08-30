export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
squoosh-cli --webp auto *.jpg -d post-compressed_files
squoosh-cli --webp auto *.png -d post-compressed_files
squoosh-cli --webp auto *.PNG -d post-compressed_files
squoosh-cli --webp auto *.JPG -d post-compressed_files
squoosh-cli --webp auto *.jpeg -d post-compressed_files