sudo apt install openssh-server screen python git openjdk-8-jdk android-tools-adb bc \
bison build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick \
lib32readline-dev lib32z1-dev  liblz4-tool libncurses5-dev libsdl1.2-dev 
libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc \
yasm zip zlib1g-dev libtinfo5 libncurses5

git clone https://github.com/akhilnarang/scripts.git

bash scripts/setup/android_build_env.sh

mkdir evo && cd evo

git config --global user.name "Sarah Smith" && git config --global user.email "sarah.smith@email.com"

repo init -u https://github.com/PixelExperience/manifest -b ten-plus && git clone https://github.com/Gertu9/local_manifest-A10.git .repo/local_manifests

repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
